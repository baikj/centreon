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

namespace CentreonAdministration\Models\Relation\Organization;

use Centreon\Models\CentreonRelationModel;

/**
 * Relation between organization and modules
 *
 * @version 3.0.0
 * @package Centreon
 * @subpackage Administration
 */
class Module extends CentreonRelationModel
{
    protected static $relationTable = "cfg_organizations_modules_relations";
    protected static $firstKey = "organization_id";
    protected static $secondKey = "module_id";
    public static $firstObject = "\\CentreonAdministration\\Models\\Organization";
    public static $secondObject = "\\Centreon\\Models\\Module";
}