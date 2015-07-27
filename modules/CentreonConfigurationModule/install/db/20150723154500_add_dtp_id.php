<?php

/*
 * Copyright 2005-2015 CENTREON
 * Centreon is developped by : Julien Mathis and Romain Le Merlus under
 * GPL Licence 2.0.
 * 
 * This program is free software; you can redistribute it and/or modify it under 
 * the terms of the GNU General Public License as published by the Free Software 
 * Foundation ; either version 2 of the License.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A 
 * PARTICULAR PURPOSE. See the GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License along with 
 * this program; if not, see <http://www.gnu.org/licenses>.
 * 
 * Linking this program statically or dynamically with other modules is making a 
 * combined work based on this program. Thus, the terms and conditions of the GNU 
 * General Public License cover the whole combination.
 * 
 * As a special exception, the copyright holders of this program give CENTREON 
 * permission to link this program with independent modules to produce an executable, 
 * regardless of the license terms of these independent modules, and to copy and 
 * distribute the resulting executable under terms of CENTREON choice, provided that 
 * CENTREON also meet, for each linked independent module, the terms  and conditions 
 * of the license of that module. An independent module is a module which is not 
 * derived from this program. If you modify this program, you may extend this 
 * exception to your version of the program, but you are not obliged to do so. If you
 * do not wish to do so, delete this exception statement from your version.
 * 
 * For more information : contact@centreon.com
 * 
 */

use Phinx\Migration\AbstractMigration;


/**
 * Description of AddDtpId
 *
 * @author kevin duret <kduret@centreon.com>
 */
class AddDtpId extends AbstractMigration
{
    public function change()
    {
        $cfg_downtimes_periods = $this->table('cfg_downtimes_periods');
        $cfg_downtimes_periods->addColumn('dtp_id','integer', array('signed' => false, 'null' => false))
            ->save();

        $rt_downtimes = $this->table('rt_downtimes');
        $rt_downtimes->changeColumn('start_time','integer', array('null' => true))
            ->changeColumn('end_time','integer', array('null' => true))
            ->save();

        $this->execute('ALTER TABLE cfg_downtimes_periods DROP PRIMARY KEY, ADD PRIMARY KEY (dtp_id)');

        $cfg_downtimes_periods->changeColumn('dtp_id','integer', array('identity' => true, 'signed' => false, 'null' => false))
            ->save();

        $this->execute('SET FOREIGN_KEY_CHECKS = 0');
        $this->execute('ALTER TABLE cfg_downtimes_periods DROP INDEX dt_id');
        $this->execute('SET FOREIGN_KEY_CHECKS = 1');
    }
}
