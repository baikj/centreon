<?php
/*
 * Copyright 2015 Centreon (http://www.centreon.com/)
 * 
 * Centreon is a full-fledged industry-strength solution that meets 
 * the needs in IT infrastructure and application monitoring for 
 * service performance.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *    http://www.apache.org/licenses/LICENSE-2.0  
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 */

namespace Centreon\Internal\Database;

use Centreon\Internal\Exception;
use Centreon\Internal\Di;

/**
 * Description of GenerateDiff
 *
 * @author lionel
 */
class GenerateDiff extends PropelMigration
{
    /**
     * 
     * @param string $module
     */
    public function __construct($module = 'centreon')
    {
        parent::__construct($module);
    }
    
    /**
     * 
     */
    public function getDiff()
    {
        $this->runPhing('diff');
    }
}