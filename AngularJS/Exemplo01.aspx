<%@ Page Title="" Language="C#" MasterPageFile="~/AngularJS.Master" AutoEventWireup="true" CodeBehind="Exemplo01.aspx.cs" Inherits="AngularJS.Exemplo01" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        var app = angular.module('app', []);
        app.controller('ctrl', function ($scope, $http) {           

            $http({
                method: 'POST',
                url: 'Exemplo01.aspx/TestAjax',
                data: {'teste':'test'},
                dataType: 'json',
                headers: {"Content-Type": "application/json"}
            }).then(function successCallback(response) {
                var dados = JSON.parse(response.data.d);
                $scope.Nome = dados.Nome + " " + dados.SobreNome;
            }, function errorCallback(response) {
                $scope.Nome = "Erro!!!"
            });
               
        });
       
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div ng-app ="app">
        <div ng-controller ="ctrl">
            {{Nome}}
        </div>
    </div>
</asp:Content>
