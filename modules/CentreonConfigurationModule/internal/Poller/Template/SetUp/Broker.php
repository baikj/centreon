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
 * For more information : contact@centreon.com
 * 
 */

namespace CentreonConfiguration\Internal\Poller\Template\SetUp;

use CentreonConfiguration\Internal\Poller\Template\SetUp\SetUp;
/**
 * Description of BrokerTemplateManager
 *
 * @author lionel
 */
class Broker extends SetUp
{
    /**
     *
     * @var array 
     */
    private $modes;
    
    /**
     * 
     * @param type $content
     */
    public function __construct($content)
    {
        parent::__construct($content);
        $this->setBrokerModes();
    }
    
    /**
     * 
     */
    private function setBrokerModes()
    {
        if (isset($this->params['mode'])) {
            foreach ($this->params['mode'] as $mode) {
                foreach ($mode as $modeName => $currentMode) {
                    $this->modes[$modeName] = $currentMode;
                }
            }
        }
    }
    
    /**
     * 
     * @return array
     */
    public function getModeList()
    {
        return array_keys($this->modes);
    }
    
    /**
     * 
     * @param string $mode
     */
    public function getMode($mode)
    {
        if (!isset($this->modes[$mode])) {
            throw new Exception("This setup $mode");
        }
        return $this->modes[$mode];
    }
    
    public function getHtmlType($brokerType)
    {
        
    }
}