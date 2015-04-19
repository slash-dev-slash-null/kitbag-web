'use strict'

###*
 # @ngdoc function
 # @name kitbagApp.controller:AssetEditCtrl
 # @description
 # # AssetEditCtrl
 # Controller of the kitbagApp
###
angular.module 'kitbagApp'
  .controller 'AssetEditCtrl', (
    $scope,
    $stateParams,
    assetType,
    asset,
    organization,
    schema,
    translate,
    user
  ) ->

    validationMessages = {}

    $scope.user = user

    $scope.createNew = asset == null

    $scope.pageTitle = if $scope.createNew then 'ASSET_CREATE_PAGETITLE' else 'ASSET_EDIT_PAGETITLE'

    $scope.organization = organization

    $scope.data = if $scope.createNew then {} else asset

    $scope.assetType = assetType

    $scope.schema = schema

    $scope.form = [
      key: 'serialNumber'
      title: translate.FORM_SERIAL_NUMBER
      description: translate.SERIAL_NUMBER_EXPLANATION
      placeholder: '1234-56-7890'
#      validationMessage: validationMessages.
    ,
      key: 'lastMaintenanceDate'
      title: translate.FORM_LAST_MAINTENANCE_DATE
      format: 'yyyy-mm-dd'
      minDate: new Date()
      description: translate.LAST_MAINTENANCE_DATE_EXPLANATION
#      validationMessage: validationMessages.
    ,
      key: 'purchaseDate'
      title: translate.FORM_PURCHASE_DATE
      format: 'yyyy-mm-dd'
      maxDate: new Date()
      description: translate.PURCHASE_DATE_EXPLANATION
#      placeholder: null
#      validationMessage: validationMessages.
    ,
      key: 'currentLocation'
      title: translate.FORM_CURRENT_LOCATION
      description: translate.CURRENT_LOCATION_EXPLANATION
#      placeholder: null
#      validationMessage: validationMessages.
    ]

    if 2 == 3
      $scope.form.push
        key: 'returnRequested'
        title: translate.FORM_RETURN_REQUESTED
        description: translate.RETURN_REQUESTED_EXPLANATION
        hide: true
#        placeholder: null
#        validationMessage: validationMessages.
