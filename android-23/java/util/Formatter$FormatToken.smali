.class Ljava/util/Formatter$FormatToken;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatToken"
.end annotation


# static fields
.field static final DEFAULT_PRECISION:I = 0x6

.field static final FLAGS_UNSET:I = 0x0

.field static final FLAG_ZERO:I = 0x10

.field static final LAST_ARGUMENT_INDEX:I = -0x2

.field static final UNSET:I = -0x1


# instance fields
.field private argIndex:I

.field private conversionType:C

.field private dateSuffix:C

.field flagComma:Z

.field flagMinus:Z

.field flagParenthesis:Z

.field flagPlus:Z

.field flagSharp:Z

.field flagSpace:Z

.field flagZero:Z

.field private precision:I

.field private strFlags:Ljava/lang/StringBuilder;

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1135
    iput v1, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    #@6
    .line 1148
    const v0, 0xffff

    #@9
    iput-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@b
    .line 1151
    iput v1, p0, Ljava/util/Formatter$FormatToken;->precision:I

    #@d
    .line 1152
    iput v1, p0, Ljava/util/Formatter$FormatToken;->width:I

    #@f
    .line 1124
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Formatter$FormatToken;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/util/Formatter$FormatToken;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method checkFlags(Ljava/lang/Object;)V
    .locals 14
    .param p1, "arg"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v12, -0x1

    #@1
    .line 1266
    const/4 v1, 0x0

    #@2
    .line 1267
    .local v1, "allowComma":Z
    const/4 v2, 0x1

    #@3
    .line 1268
    .local v2, "allowMinus":Z
    const/4 v3, 0x0

    #@4
    .line 1269
    .local v3, "allowParenthesis":Z
    const/4 v4, 0x0

    #@5
    .line 1270
    .local v4, "allowPlus":Z
    const/4 v6, 0x0

    #@6
    .line 1271
    .local v6, "allowSharp":Z
    const/4 v7, 0x0

    #@7
    .line 1272
    .local v7, "allowSpace":Z
    const/4 v9, 0x0

    #@8
    .line 1274
    .local v9, "allowZero":Z
    const/4 v5, 0x1

    #@9
    .line 1275
    .local v5, "allowPrecision":Z
    const/4 v8, 0x1

    #@a
    .line 1277
    .local v8, "allowWidth":Z
    const/4 v0, 0x1

    #@b
    .line 1278
    .local v0, "allowArgument":Z
    iget-char v11, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@d
    sparse-switch v11, :sswitch_data_0

    #@10
    .line 1336
    invoke-virtual {p0}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    #@13
    move-result-object v11

    #@14
    throw v11

    #@15
    .line 1282
    :sswitch_0
    const/4 v5, 0x0

    #@16
    .line 1340
    :cond_0
    :goto_0
    :sswitch_1
    const/4 v10, 0x0

    #@17
    .line 1341
    .local v10, "mismatch":Ljava/lang/String;
    if-nez v1, :cond_4

    #@19
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    #@1b
    if-eqz v11, :cond_4

    #@1d
    .line 1342
    const-string/jumbo v10, ","

    #@20
    .line 1356
    .end local v10    # "mismatch":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v10, :cond_b

    #@22
    .line 1357
    iget-char v11, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@24
    const/16 v12, 0x6e

    #@26
    if-ne v11, v12, :cond_a

    #@28
    .line 1359
    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    #@2a
    invoke-direct {v11, v10}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v11

    #@2e
    .line 1287
    :sswitch_2
    instance-of v11, p1, Ljava/util/Formattable;

    #@30
    if-eqz v11, :cond_0

    #@32
    .line 1288
    const/4 v6, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1294
    :sswitch_3
    const/4 v9, 0x1

    #@35
    const/4 v7, 0x1

    #@36
    const/4 v4, 0x1

    #@37
    const/4 v3, 0x1

    #@38
    const/4 v1, 0x1

    #@39
    .line 1295
    goto :goto_0

    #@3a
    .line 1297
    :sswitch_4
    const/4 v9, 0x1

    #@3b
    const/4 v7, 0x1

    #@3c
    const/4 v6, 0x1

    #@3d
    const/4 v4, 0x1

    #@3e
    const/4 v3, 0x1

    #@3f
    const/4 v1, 0x1

    #@40
    .line 1298
    goto :goto_0

    #@41
    .line 1300
    :sswitch_5
    const/4 v9, 0x1

    #@42
    const/4 v7, 0x1

    #@43
    const/4 v6, 0x1

    #@44
    const/4 v4, 0x1

    #@45
    const/4 v3, 0x1

    #@46
    .line 1301
    goto :goto_0

    #@47
    .line 1303
    :sswitch_6
    const/4 v9, 0x1

    #@48
    const/4 v7, 0x1

    #@49
    const/4 v6, 0x1

    #@4a
    const/4 v4, 0x1

    #@4b
    .line 1304
    goto :goto_0

    #@4c
    .line 1308
    :sswitch_7
    const/4 v9, 0x1

    #@4d
    const/4 v7, 0x1

    #@4e
    const/4 v4, 0x1

    #@4f
    const/4 v3, 0x1

    #@50
    const/4 v1, 0x1

    #@51
    .line 1309
    const/4 v5, 0x0

    #@52
    .line 1310
    goto :goto_0

    #@53
    .line 1312
    :sswitch_8
    const/4 v9, 0x1

    #@54
    const/4 v6, 0x1

    #@55
    .line 1313
    if-eqz p1, :cond_2

    #@57
    instance-of v11, p1, Ljava/math/BigInteger;

    #@59
    if-eqz v11, :cond_3

    #@5b
    .line 1314
    :cond_2
    const/4 v7, 0x1

    #@5c
    const/4 v4, 0x1

    #@5d
    const/4 v3, 0x1

    #@5e
    .line 1316
    :cond_3
    const/4 v5, 0x0

    #@5f
    .line 1317
    goto :goto_0

    #@60
    .line 1322
    :sswitch_9
    const/4 v2, 0x0

    #@61
    .line 1323
    const/4 v8, 0x0

    #@62
    const/4 v5, 0x0

    #@63
    const/4 v0, 0x0

    #@64
    .line 1324
    goto :goto_0

    #@65
    .line 1327
    :sswitch_a
    const/4 v0, 0x0

    #@66
    .line 1328
    const/4 v5, 0x0

    #@67
    .line 1329
    goto :goto_0

    #@68
    .line 1343
    .restart local v10    # "mismatch":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    #@6a
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    #@6c
    if-eqz v11, :cond_5

    #@6e
    .line 1344
    const-string/jumbo v10, "-"

    #@71
    .local v10, "mismatch":Ljava/lang/String;
    goto :goto_1

    #@72
    .line 1345
    .local v10, "mismatch":Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_6

    #@74
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    #@76
    if-eqz v11, :cond_6

    #@78
    .line 1346
    const-string/jumbo v10, "("

    #@7b
    .local v10, "mismatch":Ljava/lang/String;
    goto :goto_1

    #@7c
    .line 1347
    .local v10, "mismatch":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_7

    #@7e
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    #@80
    if-eqz v11, :cond_7

    #@82
    .line 1348
    const-string/jumbo v10, "+"

    #@85
    .local v10, "mismatch":Ljava/lang/String;
    goto :goto_1

    #@86
    .line 1349
    .local v10, "mismatch":Ljava/lang/String;
    :cond_7
    if-nez v6, :cond_8

    #@88
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    #@8a
    if-eqz v11, :cond_8

    #@8c
    .line 1350
    const-string/jumbo v10, "#"

    #@8f
    .local v10, "mismatch":Ljava/lang/String;
    goto :goto_1

    #@90
    .line 1351
    .local v10, "mismatch":Ljava/lang/String;
    :cond_8
    if-nez v7, :cond_9

    #@92
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    #@94
    if-eqz v11, :cond_9

    #@96
    .line 1352
    const-string/jumbo v10, " "

    #@99
    .local v10, "mismatch":Ljava/lang/String;
    goto :goto_1

    #@9a
    .line 1353
    .local v10, "mismatch":Ljava/lang/String;
    :cond_9
    if-nez v9, :cond_1

    #@9c
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@9e
    if-eqz v11, :cond_1

    #@a0
    .line 1354
    const-string/jumbo v10, "0"

    #@a3
    .local v10, "mismatch":Ljava/lang/String;
    goto/16 :goto_1

    #@a5
    .line 1361
    .end local v10    # "mismatch":Ljava/lang/String;
    :cond_a
    new-instance v11, Ljava/util/FormatFlagsConversionMismatchException;

    #@a7
    iget-char v12, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@a9
    invoke-direct {v11, v10, v12}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    #@ac
    throw v11

    #@ad
    .line 1366
    :cond_b
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    #@af
    if-nez v11, :cond_c

    #@b1
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@b3
    if-eqz v11, :cond_d

    #@b5
    :cond_c
    iget v11, p0, Ljava/util/Formatter$FormatToken;->width:I

    #@b7
    if-ne v11, v12, :cond_d

    #@b9
    .line 1367
    new-instance v11, Ljava/util/MissingFormatWidthException;

    #@bb
    new-instance v12, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v13, "-"

    #@c3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v12

    #@c7
    iget-char v13, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@c9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v12

    #@cd
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v12

    #@d1
    invoke-direct {v11, v12}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    #@d4
    throw v11

    #@d5
    .line 1372
    :cond_d
    if-nez v0, :cond_e

    #@d7
    iget v11, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    #@d9
    if-eq v11, v12, :cond_e

    #@db
    .line 1373
    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    #@dd
    new-instance v12, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v13, "%"

    #@e5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v12

    #@e9
    iget-char v13, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@eb
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v12

    #@ef
    .line 1374
    const-string/jumbo v13, " doesn\'t take an argument"

    #@f2
    .line 1373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v12

    #@f6
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v12

    #@fa
    invoke-direct {v11, v12}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    #@fd
    throw v11

    #@fe
    .line 1378
    :cond_e
    if-nez v5, :cond_f

    #@100
    iget v11, p0, Ljava/util/Formatter$FormatToken;->precision:I

    #@102
    if-eq v11, v12, :cond_f

    #@104
    .line 1379
    new-instance v11, Ljava/util/IllegalFormatPrecisionException;

    #@106
    iget v12, p0, Ljava/util/Formatter$FormatToken;->precision:I

    #@108
    invoke-direct {v11, v12}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    #@10b
    throw v11

    #@10c
    .line 1381
    :cond_f
    if-nez v8, :cond_10

    #@10e
    iget v11, p0, Ljava/util/Formatter$FormatToken;->width:I

    #@110
    if-eq v11, v12, :cond_10

    #@112
    .line 1382
    new-instance v11, Ljava/util/IllegalFormatWidthException;

    #@114
    iget v12, p0, Ljava/util/Formatter$FormatToken;->width:I

    #@116
    invoke-direct {v11, v12}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    #@119
    throw v11

    #@11a
    .line 1386
    :cond_10
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    #@11c
    if-eqz v11, :cond_11

    #@11e
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    #@120
    if-eqz v11, :cond_11

    #@122
    .line 1387
    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    #@124
    const-string/jumbo v12, "the \'+\' and \' \' flags are incompatible"

    #@127
    invoke-direct {v11, v12}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    #@12a
    throw v11

    #@12b
    .line 1389
    :cond_11
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    #@12d
    if-eqz v11, :cond_12

    #@12f
    iget-boolean v11, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@131
    if-eqz v11, :cond_12

    #@133
    .line 1390
    new-instance v11, Ljava/util/IllegalFormatFlagsException;

    #@135
    const-string/jumbo v12, "the \'-\' and \'0\' flags are incompatible"

    #@138
    invoke-direct {v11, v12}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    #@13b
    throw v11

    #@13c
    .line 1264
    :cond_12
    return-void

    #@13d
    .line 1278
    nop

    #@13e
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_a
        0x41 -> :sswitch_6
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
        0x45 -> :sswitch_5
        0x47 -> :sswitch_3
        0x48 -> :sswitch_1
        0x53 -> :sswitch_2
        0x54 -> :sswitch_0
        0x58 -> :sswitch_8
        0x61 -> :sswitch_6
        0x62 -> :sswitch_1
        0x63 -> :sswitch_0
        0x64 -> :sswitch_7
        0x65 -> :sswitch_5
        0x66 -> :sswitch_4
        0x67 -> :sswitch_3
        0x68 -> :sswitch_1
        0x6e -> :sswitch_9
        0x6f -> :sswitch_8
        0x73 -> :sswitch_2
        0x74 -> :sswitch_0
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method getArgIndex()I
    .locals 1

    #@0
    .prologue
    .line 1167
    iget v0, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    #@2
    return v0
.end method

.method getConversionType()C
    .locals 1

    #@0
    .prologue
    .line 1245
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@2
    return v0
.end method

.method getDateSuffix()C
    .locals 1

    #@0
    .prologue
    .line 1253
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    #@2
    return v0
.end method

.method getPrecision()I
    .locals 1

    #@0
    .prologue
    .line 1183
    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    #@2
    return v0
.end method

.method getStrFlags()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1191
    iget-object v0, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    #@6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const-string/jumbo v0, ""

    #@e
    goto :goto_0
.end method

.method getWidth()I
    .locals 1

    #@0
    .prologue
    .line 1175
    iget v0, p0, Ljava/util/Formatter$FormatToken;->width:I

    #@2
    return v0
.end method

.method isDefault()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 1158
    iget-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    #@4
    if-nez v1, :cond_0

    #@6
    iget-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    iget-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    #@d
    if-nez v1, :cond_0

    #@f
    iget-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    #@11
    if-nez v1, :cond_0

    #@13
    iget-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    #@15
    if-nez v1, :cond_0

    #@17
    .line 1159
    iget-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    #@19
    if-nez v1, :cond_0

    #@1b
    iget-boolean v1, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@1d
    if-nez v1, :cond_0

    #@1f
    iget v1, p0, Ljava/util/Formatter$FormatToken;->width:I

    #@21
    if-ne v1, v2, :cond_0

    #@23
    iget v1, p0, Ljava/util/Formatter$FormatToken;->precision:I

    #@25
    if-ne v1, v2, :cond_0

    #@27
    const/4 v0, 0x1

    #@28
    goto :goto_0
.end method

.method isPrecisionSet()Z
    .locals 2

    #@0
    .prologue
    .line 1163
    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method requireArgument()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1261
    iget-char v1, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@3
    const/16 v2, 0x25

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget-char v1, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@9
    const/16 v2, 0x6e

    #@b
    if-eq v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method setArgIndex(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1171
    iput p1, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    #@2
    .line 1170
    return-void
.end method

.method setConversionType(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1249
    iput-char p1, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@2
    .line 1248
    return-void
.end method

.method setDateSuffix(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1257
    iput-char p1, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    #@2
    .line 1256
    return-void
.end method

.method setFlag(I)Z
    .locals 4
    .param p1, "ch"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1199
    const/4 v0, 0x0

    #@2
    .line 1200
    .local v0, "dupe":Z
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 1230
    const/4 v1, 0x0

    #@6
    return v1

    #@7
    .line 1202
    :sswitch_0
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    #@9
    .line 1203
    .local v0, "dupe":Z
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagComma:Z

    #@b
    .line 1232
    :goto_0
    if-eqz v0, :cond_0

    #@d
    .line 1235
    new-instance v1, Ljava/util/DuplicateFormatFlagsException;

    #@f
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v1, v2}, Ljava/util/DuplicateFormatFlagsException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 1206
    .local v0, "dupe":Z
    :sswitch_1
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    #@19
    .line 1207
    .local v0, "dupe":Z
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    #@1b
    goto :goto_0

    #@1c
    .line 1210
    .local v0, "dupe":Z
    :sswitch_2
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    #@1e
    .line 1211
    .local v0, "dupe":Z
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    #@20
    goto :goto_0

    #@21
    .line 1214
    .local v0, "dupe":Z
    :sswitch_3
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    #@23
    .line 1215
    .local v0, "dupe":Z
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    #@25
    goto :goto_0

    #@26
    .line 1218
    .local v0, "dupe":Z
    :sswitch_4
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    #@28
    .line 1219
    .local v0, "dupe":Z
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    #@2a
    goto :goto_0

    #@2b
    .line 1222
    .local v0, "dupe":Z
    :sswitch_5
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    #@2d
    .line 1223
    .local v0, "dupe":Z
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    #@2f
    goto :goto_0

    #@30
    .line 1226
    .local v0, "dupe":Z
    :sswitch_6
    iget-boolean v0, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@32
    .line 1227
    .local v0, "dupe":Z
    iput-boolean v3, p0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@34
    goto :goto_0

    #@35
    .line 1237
    :cond_0
    iget-object v1, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    #@37
    if-nez v1, :cond_1

    #@39
    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    const/4 v2, 0x7

    #@3c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3f
    iput-object v1, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    #@41
    .line 1240
    :cond_1
    iget-object v1, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    #@43
    int-to-char v2, p1

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@47
    .line 1241
    return v3

    #@48
    .line 1200
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_5
        0x23 -> :sswitch_4
        0x28 -> :sswitch_2
        0x2b -> :sswitch_3
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method setPrecision(I)V
    .locals 0
    .param p1, "precise"    # I

    #@0
    .prologue
    .line 1187
    iput p1, p0, Ljava/util/Formatter$FormatToken;->precision:I

    #@2
    .line 1186
    return-void
.end method

.method setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    #@0
    .prologue
    .line 1179
    iput p1, p0, Ljava/util/Formatter$FormatToken;->width:I

    #@2
    .line 1178
    return-void
.end method

.method public unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;
    .locals 5

    #@0
    .prologue
    .line 1395
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@2
    const/16 v1, 0x74

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@8
    const/16 v1, 0x54

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 1396
    :cond_0
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    #@e
    const-string/jumbo v1, "%c%c"

    #@11
    const/4 v2, 0x2

    #@12
    new-array v2, v2, [Ljava/lang/Object;

    #@14
    .line 1397
    iget-char v3, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@16
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@19
    move-result-object v3

    #@1a
    const/4 v4, 0x0

    #@1b
    aput-object v3, v2, v4

    #@1d
    iget-char v3, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    #@1f
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@22
    move-result-object v3

    #@23
    const/4 v4, 0x1

    #@24
    aput-object v3, v2, v4

    #@26
    .line 1396
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 1399
    :cond_1
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    #@30
    iget-char v1, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    #@32
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0
.end method
