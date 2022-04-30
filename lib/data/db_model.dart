
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';
part "db_model.g.dart";

const SqfEntityTable tableTodo = SqfEntityTable(
    tableName: 'todo',
    primaryKeyName: 'id',
    primaryKeyType: PrimaryKeyType.integer_auto_incremental,
    useSoftDeleting: true,
    defaultJsonUrl: 'https://mach.my-preprod.space/api/categories',
    fields: [
      SqfEntityField('title', DbType.text),
      SqfEntityField('isCompleted', DbType.bool)
    ]);


const SqfEntitySequence seqIdentity = SqfEntitySequence(
  sequenceName: 'identity',
  maxValue: 10000,
);
// STEP 3: Create your Database Model constant instanced from SqfEntityModel
// Note: SqfEntity provides support for the use of multiple databases. So you can create many Database Models and use them in the application.
@SqfEntityBuilder(localDbModel)
const SqfEntityModel localDbModel = SqfEntityModel(
    modelName: null,
    databaseName: 'machLocalDb.db',
    databaseTables: [tableTodo],
    sequences: [seqIdentity],
    bundledDatabasePath: null);
