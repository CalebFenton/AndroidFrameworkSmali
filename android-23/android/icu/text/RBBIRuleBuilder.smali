.class Landroid/icu/text/RBBIRuleBuilder;
.super Ljava/lang/Object;
.source "RBBIRuleBuilder.java"


# static fields
.field static final U_BRK_ASSIGN_ERROR:I = 0x10206

.field static final U_BRK_ERROR_LIMIT:I = 0x10210

.field static final U_BRK_ERROR_START:I = 0x10200

.field static final U_BRK_HEX_DIGITS_EXPECTED:I = 0x10202

.field static final U_BRK_INIT_ERROR:I = 0x1020b

.field static final U_BRK_INTERNAL_ERROR:I = 0x10201

.field static final U_BRK_MALFORMED_RULE_TAG:I = 0x1020e

.field static final U_BRK_MALFORMED_SET:I = 0x1020f

.field static final U_BRK_MISMATCHED_PAREN:I = 0x10208

.field static final U_BRK_NEW_LINE_IN_QUOTED_STRING:I = 0x10209

.field static final U_BRK_RULE_EMPTY_SET:I = 0x1020c

.field static final U_BRK_RULE_SYNTAX:I = 0x10204

.field static final U_BRK_SEMICOLON_EXPECTED:I = 0x10203

.field static final U_BRK_UNCLOSED_SET:I = 0x10205

.field static final U_BRK_UNDEFINED_VARIABLE:I = 0x1020a

.field static final U_BRK_UNRECOGNIZED_OPTION:I = 0x1020d

.field static final U_BRK_VARIABLE_REDFINITION:I = 0x10207

.field static final fForwardTree:I = 0x0

.field static final fReverseTree:I = 0x1

.field static final fSafeFwdTree:I = 0x2

.field static final fSafeRevTree:I = 0x3


# instance fields
.field fChainRules:Z

.field fDebugEnv:Ljava/lang/String;

.field fDefaultTree:I

.field fForwardTables:Landroid/icu/text/RBBITableBuilder;

.field fLBCMNoChain:Z

.field fLookAheadHardBreak:Z

.field fReverseTables:Landroid/icu/text/RBBITableBuilder;

.field fRuleStatusVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fRules:Ljava/lang/String;

.field fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

.field fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

.field fScanner:Landroid/icu/text/RBBIRuleScanner;

.field fSetBuilder:Landroid/icu/text/RBBISetBuilder;

.field fStatusSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fTreeRoots:[Landroid/icu/text/RBBINode;

.field fUSetNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "rules"    # Ljava/lang/String;

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/4 v0, 0x4

    #@4
    new-array v0, v0, [Landroid/icu/text/RBBINode;

    #@6
    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@8
    .line 42
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    #@b
    .line 65
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    #@12
    .line 140
    const-string/jumbo v0, "rbbi"

    #@15
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 141
    const-string/jumbo v0, "rbbi"

    #@1e
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 140
    :goto_0
    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@24
    .line 142
    iput-object p1, p0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@26
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    #@2d
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    #@34
    .line 145
    new-instance v0, Landroid/icu/text/RBBIRuleScanner;

    #@36
    invoke-direct {v0, p0}, Landroid/icu/text/RBBIRuleScanner;-><init>(Landroid/icu/text/RBBIRuleBuilder;)V

    #@39
    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fScanner:Landroid/icu/text/RBBIRuleScanner;

    #@3b
    .line 146
    new-instance v0, Landroid/icu/text/RBBISetBuilder;

    #@3d
    invoke-direct {v0, p0}, Landroid/icu/text/RBBISetBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;)V

    #@40
    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@42
    .line 138
    return-void

    #@43
    .line 141
    :cond_0
    const/4 v0, 0x0

    #@44
    goto :goto_0
.end method

.method static final align8(I)I
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 159
    add-int/lit8 v0, p0, 0x7

    #@2
    and-int/lit8 v0, v0, -0x8

    #@4
    return v0
.end method

.method static compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "rules"    # Ljava/lang/String;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 298
    new-instance v0, Landroid/icu/text/RBBIRuleBuilder;

    #@3
    invoke-direct {v0, p0}, Landroid/icu/text/RBBIRuleBuilder;-><init>(Ljava/lang/String;)V

    #@6
    .line 299
    .local v0, "builder":Landroid/icu/text/RBBIRuleBuilder;
    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fScanner:Landroid/icu/text/RBBIRuleScanner;

    #@8
    invoke-virtual {v1}, Landroid/icu/text/RBBIRuleScanner;->parse()V

    #@b
    .line 307
    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@d
    invoke-virtual {v1}, Landroid/icu/text/RBBISetBuilder;->build()V

    #@10
    .line 312
    new-instance v1, Landroid/icu/text/RBBITableBuilder;

    #@12
    invoke-direct {v1, v0, v2}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    #@15
    iput-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    #@17
    .line 313
    new-instance v1, Landroid/icu/text/RBBITableBuilder;

    #@19
    const/4 v2, 0x1

    #@1a
    invoke-direct {v1, v0, v2}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    #@1d
    iput-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fReverseTables:Landroid/icu/text/RBBITableBuilder;

    #@1f
    .line 314
    new-instance v1, Landroid/icu/text/RBBITableBuilder;

    #@21
    const/4 v2, 0x2

    #@22
    invoke-direct {v1, v0, v2}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    #@25
    iput-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

    #@27
    .line 315
    new-instance v1, Landroid/icu/text/RBBITableBuilder;

    #@29
    const/4 v2, 0x3

    #@2a
    invoke-direct {v1, v0, v2}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    #@2d
    iput-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

    #@2f
    .line 316
    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    #@31
    invoke-virtual {v1}, Landroid/icu/text/RBBITableBuilder;->build()V

    #@34
    .line 317
    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fReverseTables:Landroid/icu/text/RBBITableBuilder;

    #@36
    invoke-virtual {v1}, Landroid/icu/text/RBBITableBuilder;->build()V

    #@39
    .line 318
    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

    #@3b
    invoke-virtual {v1}, Landroid/icu/text/RBBITableBuilder;->build()V

    #@3e
    .line 319
    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

    #@40
    invoke-virtual {v1}, Landroid/icu/text/RBBITableBuilder;->build()V

    #@43
    .line 320
    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@45
    if-eqz v1, :cond_0

    #@47
    .line 321
    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@49
    const-string/jumbo v2, "states"

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@4f
    move-result v1

    #@50
    if-ltz v1, :cond_0

    #@52
    .line 322
    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    #@54
    invoke-virtual {v1}, Landroid/icu/text/RBBITableBuilder;->printRuleStatusTable()V

    #@57
    .line 329
    :cond_0
    invoke-virtual {v0, p1}, Landroid/icu/text/RBBIRuleBuilder;->flattenData(Ljava/io/OutputStream;)V

    #@5a
    .line 292
    return-void
.end method


# virtual methods
.method flattenData(Ljava/io/OutputStream;)V
    .locals 22
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    new-instance v3, Ljava/io/DataOutputStream;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@7
    .line 167
    .local v3, "dos":Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@b
    move-object/from16 v19, v0

    #@d
    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleScanner;->stripRules(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v13

    #@11
    .line 175
    .local v13, "strippedRules":Ljava/lang/String;
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    #@15
    move-object/from16 v19, v0

    #@17
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    #@1a
    move-result v19

    #@1b
    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    #@1e
    move-result v4

    #@1f
    .line 176
    .local v4, "forwardTableSize":I
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fReverseTables:Landroid/icu/text/RBBITableBuilder;

    #@23
    move-object/from16 v19, v0

    #@25
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    #@28
    move-result v19

    #@29
    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    #@2c
    move-result v8

    #@2d
    .line 177
    .local v8, "reverseTableSize":I
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

    #@31
    move-object/from16 v19, v0

    #@33
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    #@36
    move-result v19

    #@37
    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    #@3a
    move-result v10

    #@3b
    .line 178
    .local v10, "safeFwdTableSize":I
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

    #@3f
    move-object/from16 v19, v0

    #@41
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    #@44
    move-result v19

    #@45
    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    #@48
    move-result v11

    #@49
    .line 179
    .local v11, "safeRevTableSize":I
    move-object/from16 v0, p0

    #@4b
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@4d
    move-object/from16 v19, v0

    #@4f
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBISetBuilder;->getTrieSize()I

    #@52
    move-result v19

    #@53
    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    #@56
    move-result v16

    #@57
    .line 180
    .local v16, "trieSize":I
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    #@5b
    move-object/from16 v19, v0

    #@5d
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    #@60
    move-result v19

    #@61
    mul-int/lit8 v19, v19, 0x4

    #@63
    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    #@66
    move-result v12

    #@67
    .line 181
    .local v12, "statusTableSize":I
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@6a
    move-result v19

    #@6b
    mul-int/lit8 v19, v19, 0x2

    #@6d
    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    #@70
    move-result v9

    #@71
    .line 182
    .local v9, "rulesSize":I
    add-int/lit8 v19, v4, 0x60

    #@73
    add-int v19, v19, v8

    #@75
    add-int v19, v19, v10

    #@77
    add-int v19, v19, v11

    #@79
    add-int v19, v19, v12

    #@7b
    add-int v19, v19, v16

    #@7d
    add-int v15, v19, v9

    #@7f
    .line 185
    .local v15, "totalSize":I
    const/4 v7, 0x0

    #@80
    .line 190
    .local v7, "outputPos":I
    const v19, 0x42726b20

    #@83
    const/high16 v20, 0x3010000

    #@85
    const/16 v21, 0x0

    #@87
    move/from16 v0, v19

    #@89
    move/from16 v1, v20

    #@8b
    move/from16 v2, v21

    #@8d
    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/ICUBinary;->writeHeader(IIILjava/io/DataOutputStream;)I

    #@90
    .line 195
    const/16 v19, 0x18

    #@92
    move/from16 v0, v19

    #@94
    new-array v5, v0, [I

    #@96
    .line 196
    .local v5, "header":[I
    const v19, 0xb1a0

    #@99
    const/16 v20, 0x0

    #@9b
    aput v19, v5, v20

    #@9d
    .line 197
    const/high16 v19, 0x3010000

    #@9f
    const/16 v20, 0x1

    #@a1
    aput v19, v5, v20

    #@a3
    .line 198
    const/16 v19, 0x2

    #@a5
    aput v15, v5, v19

    #@a7
    .line 199
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@ab
    move-object/from16 v19, v0

    #@ad
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    #@b0
    move-result v19

    #@b1
    const/16 v20, 0x3

    #@b3
    aput v19, v5, v20

    #@b5
    .line 174
    const/16 v19, 0x60

    #@b7
    .line 200
    const/16 v20, 0x4

    #@b9
    aput v19, v5, v20

    #@bb
    .line 201
    const/16 v19, 0x5

    #@bd
    aput v4, v5, v19

    #@bf
    .line 202
    const/16 v19, 0x4

    #@c1
    aget v19, v5, v19

    #@c3
    add-int v19, v19, v4

    #@c5
    const/16 v20, 0x6

    #@c7
    aput v19, v5, v20

    #@c9
    .line 203
    const/16 v19, 0x7

    #@cb
    aput v8, v5, v19

    #@cd
    .line 204
    const/16 v19, 0x6

    #@cf
    aget v19, v5, v19

    #@d1
    add-int v19, v19, v8

    #@d3
    const/16 v20, 0x8

    #@d5
    aput v19, v5, v20

    #@d7
    .line 206
    const/16 v19, 0x9

    #@d9
    aput v10, v5, v19

    #@db
    .line 207
    const/16 v19, 0x8

    #@dd
    aget v19, v5, v19

    #@df
    add-int v19, v19, v10

    #@e1
    const/16 v20, 0xa

    #@e3
    aput v19, v5, v20

    #@e5
    .line 209
    const/16 v19, 0xb

    #@e7
    aput v11, v5, v19

    #@e9
    .line 210
    const/16 v19, 0xa

    #@eb
    aget v19, v5, v19

    #@ed
    add-int v19, v19, v11

    #@ef
    const/16 v20, 0xc

    #@f1
    aput v19, v5, v20

    #@f3
    .line 212
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@f7
    move-object/from16 v19, v0

    #@f9
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBISetBuilder;->getTrieSize()I

    #@fc
    move-result v19

    #@fd
    const/16 v20, 0xd

    #@ff
    aput v19, v5, v20

    #@101
    .line 213
    const/16 v19, 0xc

    #@103
    aget v19, v5, v19

    #@105
    .line 214
    const/16 v20, 0xd

    #@107
    aget v20, v5, v20

    #@109
    .line 213
    add-int v19, v19, v20

    #@10b
    const/16 v20, 0x10

    #@10d
    aput v19, v5, v20

    #@10f
    .line 215
    const/16 v19, 0x11

    #@111
    aput v12, v5, v19

    #@113
    .line 216
    const/16 v19, 0x10

    #@115
    aget v19, v5, v19

    #@117
    add-int v19, v19, v12

    #@119
    const/16 v20, 0xe

    #@11b
    aput v19, v5, v20

    #@11d
    .line 218
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@120
    move-result v19

    #@121
    mul-int/lit8 v19, v19, 0x2

    #@123
    const/16 v20, 0xf

    #@125
    aput v19, v5, v20

    #@127
    .line 219
    const/4 v6, 0x0

    #@128
    .local v6, "i":I
    :goto_0
    array-length v0, v5

    #@129
    move/from16 v19, v0

    #@12b
    move/from16 v0, v19

    #@12d
    if-ge v6, v0, :cond_0

    #@12f
    .line 220
    aget v19, v5, v6

    #@131
    move/from16 v0, v19

    #@133
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@136
    .line 221
    add-int/lit8 v7, v7, 0x4

    #@138
    .line 219
    add-int/lit8 v6, v6, 0x1

    #@13a
    goto :goto_0

    #@13b
    .line 226
    :cond_0
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    #@13f
    move-object/from16 v19, v0

    #@141
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->exportTable()[S

    #@144
    move-result-object v14

    #@145
    .line 227
    .local v14, "tableData":[S
    const/16 v19, 0x4

    #@147
    aget v19, v5, v19

    #@149
    move/from16 v0, v19

    #@14b
    if-ne v7, v0, :cond_1

    #@14d
    const/16 v19, 0x1

    #@14f
    :goto_1
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@152
    .line 228
    const/4 v6, 0x0

    #@153
    :goto_2
    array-length v0, v14

    #@154
    move/from16 v19, v0

    #@156
    move/from16 v0, v19

    #@158
    if-ge v6, v0, :cond_2

    #@15a
    .line 229
    aget-short v19, v14, v6

    #@15c
    move/from16 v0, v19

    #@15e
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@161
    .line 230
    add-int/lit8 v7, v7, 0x2

    #@163
    .line 228
    add-int/lit8 v6, v6, 0x1

    #@165
    goto :goto_2

    #@166
    .line 227
    :cond_1
    const/16 v19, 0x0

    #@168
    goto :goto_1

    #@169
    .line 233
    :cond_2
    move-object/from16 v0, p0

    #@16b
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fReverseTables:Landroid/icu/text/RBBITableBuilder;

    #@16d
    move-object/from16 v19, v0

    #@16f
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->exportTable()[S

    #@172
    move-result-object v14

    #@173
    .line 234
    const/16 v19, 0x6

    #@175
    aget v19, v5, v19

    #@177
    move/from16 v0, v19

    #@179
    if-ne v7, v0, :cond_3

    #@17b
    const/16 v19, 0x1

    #@17d
    :goto_3
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@180
    .line 235
    const/4 v6, 0x0

    #@181
    :goto_4
    array-length v0, v14

    #@182
    move/from16 v19, v0

    #@184
    move/from16 v0, v19

    #@186
    if-ge v6, v0, :cond_4

    #@188
    .line 236
    aget-short v19, v14, v6

    #@18a
    move/from16 v0, v19

    #@18c
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@18f
    .line 237
    add-int/lit8 v7, v7, 0x2

    #@191
    .line 235
    add-int/lit8 v6, v6, 0x1

    #@193
    goto :goto_4

    #@194
    .line 234
    :cond_3
    const/16 v19, 0x0

    #@196
    goto :goto_3

    #@197
    .line 240
    :cond_4
    const/16 v19, 0x8

    #@199
    aget v19, v5, v19

    #@19b
    move/from16 v0, v19

    #@19d
    if-ne v7, v0, :cond_5

    #@19f
    const/16 v19, 0x1

    #@1a1
    :goto_5
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@1a4
    .line 241
    move-object/from16 v0, p0

    #@1a6
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

    #@1a8
    move-object/from16 v19, v0

    #@1aa
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->exportTable()[S

    #@1ad
    move-result-object v14

    #@1ae
    .line 242
    const/4 v6, 0x0

    #@1af
    :goto_6
    array-length v0, v14

    #@1b0
    move/from16 v19, v0

    #@1b2
    move/from16 v0, v19

    #@1b4
    if-ge v6, v0, :cond_6

    #@1b6
    .line 243
    aget-short v19, v14, v6

    #@1b8
    move/from16 v0, v19

    #@1ba
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@1bd
    .line 244
    add-int/lit8 v7, v7, 0x2

    #@1bf
    .line 242
    add-int/lit8 v6, v6, 0x1

    #@1c1
    goto :goto_6

    #@1c2
    .line 240
    :cond_5
    const/16 v19, 0x0

    #@1c4
    goto :goto_5

    #@1c5
    .line 247
    :cond_6
    const/16 v19, 0xa

    #@1c7
    aget v19, v5, v19

    #@1c9
    move/from16 v0, v19

    #@1cb
    if-ne v7, v0, :cond_7

    #@1cd
    const/16 v19, 0x1

    #@1cf
    :goto_7
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@1d2
    .line 248
    move-object/from16 v0, p0

    #@1d4
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

    #@1d6
    move-object/from16 v19, v0

    #@1d8
    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->exportTable()[S

    #@1db
    move-result-object v14

    #@1dc
    .line 249
    const/4 v6, 0x0

    #@1dd
    :goto_8
    array-length v0, v14

    #@1de
    move/from16 v19, v0

    #@1e0
    move/from16 v0, v19

    #@1e2
    if-ge v6, v0, :cond_8

    #@1e4
    .line 250
    aget-short v19, v14, v6

    #@1e6
    move/from16 v0, v19

    #@1e8
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@1eb
    .line 251
    add-int/lit8 v7, v7, 0x2

    #@1ed
    .line 249
    add-int/lit8 v6, v6, 0x1

    #@1ef
    goto :goto_8

    #@1f0
    .line 247
    :cond_7
    const/16 v19, 0x0

    #@1f2
    goto :goto_7

    #@1f3
    .line 255
    :cond_8
    const/16 v19, 0xc

    #@1f5
    aget v19, v5, v19

    #@1f7
    move/from16 v0, v19

    #@1f9
    if-ne v7, v0, :cond_9

    #@1fb
    const/16 v19, 0x1

    #@1fd
    :goto_9
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@200
    .line 256
    move-object/from16 v0, p0

    #@202
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@204
    move-object/from16 v19, v0

    #@206
    move-object/from16 v0, v19

    #@208
    move-object/from16 v1, p1

    #@20a
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBISetBuilder;->serializeTrie(Ljava/io/OutputStream;)V

    #@20d
    .line 257
    const/16 v19, 0xd

    #@20f
    aget v19, v5, v19

    #@211
    add-int v7, v7, v19

    #@213
    .line 258
    :goto_a
    rem-int/lit8 v19, v7, 0x8

    #@215
    if-eqz v19, :cond_a

    #@217
    .line 259
    const/16 v19, 0x0

    #@219
    move/from16 v0, v19

    #@21b
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    #@21e
    .line 260
    add-int/lit8 v7, v7, 0x1

    #@220
    goto :goto_a

    #@221
    .line 255
    :cond_9
    const/16 v19, 0x0

    #@223
    goto :goto_9

    #@224
    .line 264
    :cond_a
    const/16 v19, 0x10

    #@226
    aget v19, v5, v19

    #@228
    move/from16 v0, v19

    #@22a
    if-ne v7, v0, :cond_b

    #@22c
    const/16 v19, 0x1

    #@22e
    :goto_b
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@231
    .line 265
    move-object/from16 v0, p0

    #@233
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    #@235
    move-object/from16 v19, v0

    #@237
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23a
    move-result-object v18

    #@23b
    .local v18, "val$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@23e
    move-result v19

    #@23f
    if-eqz v19, :cond_c

    #@241
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@244
    move-result-object v17

    #@245
    check-cast v17, Ljava/lang/Integer;

    #@247
    .line 266
    .local v17, "val":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@24a
    move-result v19

    #@24b
    move/from16 v0, v19

    #@24d
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@250
    .line 267
    add-int/lit8 v7, v7, 0x4

    #@252
    goto :goto_c

    #@253
    .line 264
    .end local v17    # "val":Ljava/lang/Integer;
    .end local v18    # "val$iterator":Ljava/util/Iterator;
    :cond_b
    const/16 v19, 0x0

    #@255
    goto :goto_b

    #@256
    .line 270
    .restart local v18    # "val$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_d
    rem-int/lit8 v19, v7, 0x8

    #@258
    if-eqz v19, :cond_d

    #@25a
    .line 271
    const/16 v19, 0x0

    #@25c
    move/from16 v0, v19

    #@25e
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    #@261
    .line 272
    add-int/lit8 v7, v7, 0x1

    #@263
    goto :goto_d

    #@264
    .line 277
    :cond_d
    const/16 v19, 0xe

    #@266
    aget v19, v5, v19

    #@268
    move/from16 v0, v19

    #@26a
    if-ne v7, v0, :cond_e

    #@26c
    const/16 v19, 0x1

    #@26e
    :goto_e
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@271
    .line 278
    invoke-virtual {v3, v13}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    #@274
    .line 279
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@277
    move-result v19

    #@278
    mul-int/lit8 v19, v19, 0x2

    #@27a
    add-int v7, v7, v19

    #@27c
    .line 280
    :goto_f
    rem-int/lit8 v19, v7, 0x8

    #@27e
    if-eqz v19, :cond_f

    #@280
    .line 281
    const/16 v19, 0x0

    #@282
    move/from16 v0, v19

    #@284
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    #@287
    .line 282
    add-int/lit8 v7, v7, 0x1

    #@289
    goto :goto_f

    #@28a
    .line 277
    :cond_e
    const/16 v19, 0x0

    #@28c
    goto :goto_e

    #@28d
    .line 162
    :cond_f
    return-void
.end method
