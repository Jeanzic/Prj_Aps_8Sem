﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro_aluno.aspx.cs" Inherits="APS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="/CSS/Cad_aluno.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form class="form-horizontal" id="form1" runat="server">

        <fieldset>
            <div class="card panel-primary">
                <div class="bg-primary card-header">Cadastro do Aluno</div>

                <div class="panel-body">
                    <div class="form-group">

                        <div class="col-md-11  control-label">
                            <p class="text-lg-right">
                                <h11>*</h11>
                                Campo Obrigatório
                            </p>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group row">
                        <label class="col-sm-1 col-form-label text-right" for="Nome">
                            Nome
                                <h11>*</h11></label>
                        <div class="col-sm-10">
                            <input id="Nome" name="Nome" placeholder="" class="form-control " required="" type="text">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group row">
                        <label class="col-sm-1 col-form-label text-right" for="Nome">
                            CPF
                                <h11>*</h11></label>
                        <div class="col-md-2">
                            <input id="cpf" name="cpf" placeholder="Apenas números" class="form-control input-md" required="" type="text" maxlength="11" pattern="[0-9]+$">
                        </div>

                        <label class="col-md-1 control-label text-right" for="Nome">Nascimento<h11>*</h11></label>
                        <div class="col-md-2">
                            <input id="dtnasc" name="dtnasc" placeholder="DD/MM/AAAA" class="form-control input-md" required="" type="text" maxlength="10" onkeypress="formatar('##/##/####', this)" onblur="showhide()">
                        </div>

                        <!-- Multiple Radios (inline) -->

                        <label class="col-md-1 control-label text-right" for="radios">
                            Sexo
                                <h11>*</h11></label>
                        <div class="col-md-2 ">
                            <label required="" class="radio-inline" for="radios-0">
                                <input name="sexo" id="sexo" value="feminino" type="radio" required>
                                Feminino
                               
                            </label>
                            <label class="radio-inline" for="radios-1">
                                <input name="sexo" id="sexo" value="masculino" type="radio">
                                Masculino
   
                            </label>
                        </div>
                    </div>

                    <!-- Prepended text-->
                    <div class="form-group row">
                        <label class="col-md-1 control-label text-right" for="prependedtext">
                            Telefone
                                <h11>*</h11></label>
                        <div class="col-md-2">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                <input id="prependedtext" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" required="" type="text" maxlength="13" pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
                                    onkeypress="formatar('## #####-####', this)">
                            </div>
                        </div>

                        <label class="col-md-1 control-label text-right" for="prependedtext">Telefone</label>
                        <div class="col-md-2">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                <input id="prependedtext" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" type="text" maxlength="13" pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
                                    onkeypress="formatar('## #####-####', this)">
                            </div>
                        </div>
                    </div>

                    <!-- Prepended text-->
                    <div class="form-group row">
                        <label class="col-md-1 control-label text-right" for="prependedtext">
                            Email
                                <h11>*</h11></label>
                        <div class="col-md-5">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <input id="prependedtext" name="prependedtext" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
                            </div>
                        </div>
                    </div>


                    <!-- Search input-->
                    <div class="form-group row">
                        <label class="col-md-1 control-label text-right" for="CEP">
                            CEP
                                <h11>*</h11></label>
                        <div class="col-md-2">
                            <input id="cep" name="cep" placeholder="Apenas números" class="form-control input-md" required="" value="" type="search" maxlength="8" pattern="[0-9]+$">
                        </div>
                        <div class="col-md-2">
                            <button type="button" class="btn btn-primary" onclick="pesquisacep(cep.value)">Pesquisar</button>
                        </div>
                    </div>

                    <!-- Prepended text-->
                    <div class="form-group row">
                        <label class="col-md-1 control-label text-right" for="prependedtext">Endereço</label>
                        <div class="col-md-4">
                            <div class="input-group">
                                <span class="input-group-addon text-center">Rua  </span>
                                <input id="rua" name="rua" class="form-control" placeholder="" required="" readonly="readonly" type="text">
                            </div>

                        </div>
                        <div class="col-md-2">
                            <div class="input-group">
                                <span class="input-group-addon">Nº
                                        <h11>*</h11></span>
                                <input id="numero" name="numero" class="form-control" placeholder="" required="" type="text">
                            </div>

                        </div>

                        <div class="col-md-3">
                            <div class="input-group">
                                <span class="input-group-addon">Bairro</span>
                                <input id="bairro" name="bairro" class="form-control" placeholder="" required="" readonly="readonly" type="text">
                            </div>

                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-1 control-label" for="prependedtext"></label>
                        <div class="col-md-4">
                            <div class="input-group">
                                <span class="input-group-addon">Cidade</span>
                                <input id="cidade" name="cidade" class="form-control" placeholder="" required="" readonly="readonly" type="text">
                            </div>

                        </div>

                        <div class="col-md-1">
                            <div class="input-group">
                                <span class="input-group-addon">Estado</span>
                                <input id="estado" name="estado" class="form-control" placeholder="" required="" readonly="readonly" type="text">
                            </div>

                        </div>
                    </div>

                    <!-- Select Basic -->
                    <div class="form-group row">
                        <label class="col-md-1 control-label text-right" for="Estado Civil">
                            Estado Civil
                                <h11>*</h11></label>
                        <div class="col-md-2">
                            <select required id="Estado Civil" name="Estado Civil" class="form-control">
                                <option value=""></option>
                                <option value="Solteiro(a)">Solteiro(a)</option>
                                <option value="Casado(a)">Casado(a)</option>
                                <option value="Divorciado(a)">Divorciado(a)</option>
                                <option value="Viuvo(a)">Viuvo(a)</option>
                            </select>
                        </div>

                        <!-- Prepended checkbox -->

                        <label class="col-md-1 control-label text-right" for="Filhos">Filhos<h11>*</h11></label>
                        <div class="col-md-3">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <label class="radio-inline" for="radios-0">
                                        <input type="radio" name="filhos" id="filhos" value="nao" onclick="desabilita('filhos_qtd')" required>
                                        Não
   
                                    </label>
                                    <label class="radio-inline" for="radios-1">
                                        <input type="radio" name="filhos" id="filhos" value="sim" onclick="habilita('filhos_qtd')">
                                        Sim
   
                                    </label>
                                </span>
                                <input id="filhos_qtd" name="filhos_qtd" class="form-control" type="text" placeholder="Quantos?" pattern="[0-9]+$">
                            </div>

                        </div>
                    </div>


                    <!-- Select Basic -->
                    <div class="form-group row">

                        <label class="col-md-1 control-label text-right" for="selectbasic">
                            Escolaridade
                                <h11>*</h11></label>

                        <div class="col-md-3">
                            <select required id="escolaridade" name="escolaridade" class="form-control">
                                <option value=""></option>
                                <option value="Analfabeto">Analfabeto</option>
                                <option value="Fundamental Incompleto">Fundamental Incompleto</option>
                                <option value="Fundamental Completo">Fundamental Completo</option>
                                <option value="Médio Incompleto">Médio Incompleto</option>
                                <option value="Médio Completo">Médio Completo</option>
                                <option value="Superior Incompleto">Superior Incompleto</option>
                                <option value="Superior Completo">Superior Completo</option>
                            </select>
                        </div>


                        <!-- Text input-->

                        <label class="col-md-1 control-label text-right" for="profissao">Profissão<h11>*</h11></label>
                        <div class="col-md-4">
                            <input id="profissao" name="profissao" type="text" placeholder="" class="form-control input-md" required="">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-2 control-label text-right" for="encaminhamento">
                            Encaminhamento
                                <h11>*</h11></label>
                        <div class="col-md-4">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <label class="radio-inline" for="radios-0">
                                        <input type="radio" name="enc" id="enc" value="Nao" onclick="desabilita('enc_instituicao')" required>
                                        Não
   
                                    </label>
                                    <label class="radio-inline" for="radios-1">
                                        <input type="radio" name="enc" id="enc" value="sim" onclick="habilita('enc_instituicao')">
                                        Sim
   
                                    </label>
                                </span>
                                <input id="enc_instituicao" name="enc" class="form-control" type="text" placeholder="Instituição">
                            </div>

                        </div>


                        <label class="col-md-1 control-label" for="encaminhamento">Aluno FAP-Betim<h11>*</h11></label>
                        <div class="col-md-4">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <label class="radio-inline" for="radios-0">
                                        <input type="radio" name="aluno" id="enc" value="Nao" required>
                                        Não
   
                                    </label>
                                    <label class="radio-inline" for="radios-1">
                                        <input type="radio" name="aluno" id="enc" value="sim">
                                        Sim
   
                                    </label>
                                </span>
                                <input id="enc" name="curso" class="form-control" type="text" placeholder="Curso">
                            </div>

                        </div>


                    </div>

                    <!-- Text input-->
                    <div class="form-group row">
                        <label class="col-md-3 control-label text-right" for="textinput">Como ficou sabendo da faculdade?</label>
                        <div class="col-md-4">
                            <input id="textinput" name="textinput" placeholder="" class="form-control input-md" type="text">
                        </div>

                    </div>


                    <div id="newpost">
                        <div class="form-group row">
                            <div class="col-md-2 control-label text-right">
                                <h3>Responsável</h3>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 control-label text-right" for="Nome">
                                Nome
                                    <h11>*</h11></label>
                            <div class="col-md-8">
                                <input id="Nome" name="Nome" placeholder="" class="form-control input-md" required="" type="text">
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group row">
                            <label class="col-md-2 control-label text-right" for="vinculo">
                                Vinculo com cliente
                                    <h11>*</h11></label>
                            <div class="col-md-2">
                                <input id="vinculo" name="vinculo" placeholder="" class="form-control input-md" required="" type="text" pattern="/^[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+$/">
                            </div>


                            <label class="col-md-1 control-label text-right" for="Nome">Nascimento<h11>*</h11></label>
                            <div class="col-md-2">
                                <input id="dtnasc" name="dtnasc" placeholder="DD/MM/AAAA" class="form-control input-md" required="" type="text" maxlength="10" onkeypress="formatar('##/##/####', this)">
                            </div>

                            <!-- Multiple Radios (inline) -->

                            <label class="col-md-1 control-label text-right" for="radios">
                                Sexo
                                    <h11>*</h11></label>
                            <div class="col-md-4">
                                <label required="" class="radio-inline" for="radios-0">
                                    <input name="sexo" id="sexo" value="feminino" type="radio" required>
                                    Feminino
   
                                </label>
                                <label class="radio-inline" for="radios-1">
                                    <input name="sexo" id="sexo" value="masculino" type="radio">
                                    Masculino
   
                                </label>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 control-label text-right" for="Estado Civil">
                                Estado Civil
                                    <h11>*</h11></label>
                            <div class="col-md-2">
                                <select required id="Estado Civil" name="Estado Civil" class="form-control">
                                    <option value=""></option>
                                    <option value="Solteiro(a)">Solteiro(a)</option>
                                    <option value="Casado(a)">Casado(a)</option>
                                    <option value="Divorciado(a)">Divorciado(a)</option>
                                    <option value="Viuvo(a)">Viuvo(a)</option>
                                </select>
                            </div>

                            <label class="col-md-1 control-label text-right" for="Filhos">Filhos<h11>*</h11></label>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <label class="radio-inline" for="radios-0">
                                            <input type="radio" name="ofilhos" id="ofilhos" value="nao" onclick="desabilita('ofilhos_qtd')" required>
                                            Não
   
                                        </label>
                                        <label class="radio-inline" for="radios-1">
                                            <input type="radio" name="ofilhos" id="ofilhos" value="sim" onclick="habilita('ofilhos_qtd')">
                                            Sim
   
                                        </label>
                                    </span>
                                    <input id="ofilhos_qtd" name="ofilhos_qtd" class="form-control" type="text" placeholder="Quantos?" pattern="[0-9]+$">
                                </div>

                            </div>
                        </div>

                        <div class="form-group row">

                            <label class="col-md-2 control-label text-right" for="selectbasic">
                                Escolaridade
                                    <h11>*</h11></label>

                            <div class="col-md-3">
                                <select required id="escolaridade" name="escolaridade" class="form-control">
                                    <option value=""></option>
                                    <option value="Analfabeto">Analfabeto</option>
                                    <option value="Fundamental Incompleto">Fundamental Incompleto</option>
                                    <option value="Fundamental Completo">Fundamental Completo</option>
                                    <option value="Médio Incompleto">Médio Incompleto</option>
                                    <option value="Médio Completo">Médio Completo</option>
                                    <option value="Superior Incompleto">Superior Incompleto</option>
                                    <option value="Superior Completo">Superior Completo</option>
                                </select>
                            </div>


                            <!-- Text input-->

                            <label class="col-md-1 control-label text-right" for="profissao">Profissão<h11>*</h11></label>
                            <div class="col-md-4">
                                <input id="profissao" name="profissao" type="text" placeholder="" class="form-control input-md" required="">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 control-label text-right" for="prependedtext">
                                Telefone
                                    <h11>*</h11></label>
                            <div class="col-md-2">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                    <input id="prependedtext" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" required="" type="text" maxlength="13" pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
                                        onkeypress="formatar('## #####-####', this)">
                                </div>
                            </div>

                            <label class="col-md-1 control-label" for="prependedtext">Telefone</label>
                            <div class="col-md-2">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                    <input id="prependedtext" name="prependedtext" class="form-control" placeholder="XX XXXXX-XXXX" type="text" maxlength="13" pattern="\[0-9]{2}\ [0-9]{4,6}-[0-9]{3,4}$"
                                        onkeypress="formatar('## #####-####', this)">
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 control-label text-right" for="prependedtext">
                                Email
                                    <h11>*</h11></label>
                            <div class="col-md-5">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                    <input id="prependedtext" name="prependedtext" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- Button (Double) -->
                    <div class="form-group row">
                        <label class="col-md-2 control-label" for="Cadastrar"></label>
                        <div class="col-md-8">
                            <button id="Cadastrar" name="Cadastrar" class="btn btn-success" type="Submit">Cadastrar</button>
                            <button id="Cancelar" name="Cancelar" class="btn btn-danger" type="Reset">Cancelar</button>
                        </div>
                    </div>

                </div>
            </div>


        </fieldset>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>