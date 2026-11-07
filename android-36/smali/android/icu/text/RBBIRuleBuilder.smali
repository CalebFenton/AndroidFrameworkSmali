.class Landroid/icu/text/RBBIRuleBuilder;
.super Ljava/lang/Object;
.source "RBBIRuleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBIRuleBuilder$IntPair;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist U_BRK_ASSIGN_ERROR:I = 0x10206

.field static final blacklist U_BRK_ERROR_LIMIT:I = 0x10210

.field static final blacklist U_BRK_ERROR_START:I = 0x10200

.field static final blacklist U_BRK_HEX_DIGITS_EXPECTED:I = 0x10202

.field static final blacklist U_BRK_INIT_ERROR:I = 0x1020b

.field static final blacklist U_BRK_INTERNAL_ERROR:I = 0x10201

.field static final blacklist U_BRK_MALFORMED_RULE_TAG:I = 0x1020e

.field static final blacklist U_BRK_MALFORMED_SET:I = 0x1020f

.field static final blacklist U_BRK_MISMATCHED_PAREN:I = 0x10208

.field static final blacklist U_BRK_NEW_LINE_IN_QUOTED_STRING:I = 0x10209

.field static final blacklist U_BRK_RULE_EMPTY_SET:I = 0x1020c

.field static final blacklist U_BRK_RULE_SYNTAX:I = 0x10204

.field static final blacklist U_BRK_SEMICOLON_EXPECTED:I = 0x10203

.field static final blacklist U_BRK_UNCLOSED_SET:I = 0x10205

.field static final blacklist U_BRK_UNDEFINED_VARIABLE:I = 0x1020a

.field static final blacklist U_BRK_UNRECOGNIZED_OPTION:I = 0x1020d

.field static final blacklist U_BRK_VARIABLE_REDFINITION:I = 0x10207

.field static final blacklist U_ILLEGAL_CHAR_FOUND:I = 0xc

.field static final blacklist fForwardTree:I = 0x0

.field static final blacklist fReverseTree:I = 0x1

.field static final blacklist fSafeFwdTree:I = 0x2

.field static final blacklist fSafeRevTree:I = 0x3


# instance fields
.field blacklist fChainRules:Z

.field blacklist fDebugEnv:Ljava/lang/String;

.field blacklist fDefaultTree:I

.field blacklist fForwardTable:Landroid/icu/text/RBBITableBuilder;

.field blacklist fLookAheadHardBreak:Z

.field blacklist fRuleStatusVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist fRules:Ljava/lang/String;

.field blacklist fScanner:Landroid/icu/text/RBBIRuleScanner;

.field blacklist fSetBuilder:Landroid/icu/text/RBBISetBuilder;

.field blacklist fStatusSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist fStrippedRules:Ljava/lang/StringBuilder;

.field blacklist fTreeRoots:[Landroid/icu/text/RBBINode;

.field blacklist fUSetNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 27
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "rules"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/text/RBBINode;

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    .line 146
    const-string v0, "rbbi"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 147
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    .line 148
    iput-object p1, p0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fStrippedRules:Ljava/lang/StringBuilder;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    .line 152
    new-instance v0, Landroid/icu/text/RBBIRuleScanner;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBIRuleScanner;-><init>(Landroid/icu/text/RBBIRuleBuilder;)V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fScanner:Landroid/icu/text/RBBIRuleScanner;

    .line 153
    new-instance v0, Landroid/icu/text/RBBISetBuilder;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBISetBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;)V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    .line 154
    return-void
.end method

.method static final blacklist align8(I)I
    .registers 2
    .param p0, "i"    # I

    .line 166
    add-int/lit8 v0, p0, 0x7

    and-int/lit8 v0, v0, -0x8

    return v0
.end method

.method static blacklist compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 3
    .param p0, "rules"    # Ljava/lang/String;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    new-instance v0, Landroid/icu/text/RBBIRuleBuilder;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBIRuleBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "builder":Landroid/icu/text/RBBIRuleBuilder;
    invoke-virtual {v0, p1}, Landroid/icu/text/RBBIRuleBuilder;->build(Ljava/io/OutputStream;)V

    .line 287
    return-void
.end method


# virtual methods
.method blacklist build(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fScanner:Landroid/icu/text/RBBIRuleScanner;

    invoke-virtual {v0}, Landroid/icu/text/RBBIRuleScanner;->parse()V

    .line 300
    iget-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBISetBuilder;->buildRanges()V

    .line 305
    new-instance v0, Landroid/icu/text/RBBITableBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    .line 306
    iget-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBITableBuilder;->buildForwardTable()V

    .line 311
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleBuilder;->optimizeTables()V

    .line 312
    iget-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBITableBuilder;->buildSafeReverseTable()V

    .line 315
    iget-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    .line 316
    const-string v1, "states"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3c

    .line 317
    iget-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBITableBuilder;->printStates()V

    .line 318
    iget-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBITableBuilder;->printRuleStatusTable()V

    .line 319
    iget-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBITableBuilder;->printReverseTable()V

    .line 324
    :cond_3c
    iget-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBISetBuilder;->buildTrie()V

    .line 329
    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIRuleBuilder;->flattenData(Ljava/io/OutputStream;)V

    .line 330
    return-void
.end method

.method blacklist flattenData(Ljava/io/OutputStream;)V
    .registers 26
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 175
    .local v2, "dos":Ljava/io/DataOutputStream;
    iget-object v3, v0, Landroid/icu/text/RBBIRuleBuilder;->fStrippedRules:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/text/RBBIRuleScanner;->stripRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "strippedRules":Ljava/lang/String;
    const/16 v4, 0x50

    .line 183
    .local v4, "headerSize":I
    iget-object v5, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v5}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v5

    invoke-static {v5}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v5

    .line 184
    .local v5, "forwardTableSize":I
    iget-object v6, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v6}, Landroid/icu/text/RBBITableBuilder;->getSafeTableSize()I

    move-result v6

    invoke-static {v6}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v6

    .line 185
    .local v6, "reverseTableSize":I
    iget-object v7, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v7}, Landroid/icu/text/RBBISetBuilder;->getTrieSize()I

    move-result v7

    invoke-static {v7}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v7

    .line 186
    .local v7, "trieSize":I
    iget-object v8, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x4

    mul-int/2addr v8, v9

    invoke-static {v8}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v8

    .line 188
    .local v8, "statusTableSize":I
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 189
    .local v10, "strippedRulesUTF8":[B
    array-length v11, v10

    const/4 v12, 0x1

    add-int/2addr v11, v12

    invoke-static {v11}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v11

    .line 191
    .local v11, "rulesSize":I
    add-int v13, v4, v5

    add-int/2addr v13, v6

    add-int/2addr v13, v8

    add-int/2addr v13, v7

    add-int/2addr v13, v11

    .line 195
    .local v13, "totalSize":I
    const/4 v14, 0x0

    .line 200
    .local v14, "outputPos":I
    const v15, 0x42726b20

    move/from16 v16, v9

    const/high16 v9, 0x6000000

    move/from16 v17, v12

    const/4 v12, 0x0

    invoke-static {v15, v9, v12, v2}, Landroid/icu/impl/ICUBinary;->writeHeader(IIILjava/io/DataOutputStream;)I

    .line 205
    const/16 v15, 0x14

    new-array v15, v15, [I

    .line 206
    .local v15, "header":[I
    const v18, 0xb1a0

    aput v18, v15, v12

    .line 207
    aput v9, v15, v17

    .line 208
    const/4 v9, 0x2

    aput v13, v15, v9

    .line 209
    iget-object v9, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v9}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v9

    const/16 v18, 0x3

    aput v9, v15, v18

    .line 211
    aput v4, v15, v16

    .line 212
    const/4 v9, 0x5

    aput v5, v15, v9

    .line 214
    aget v9, v15, v16

    add-int/2addr v9, v5

    const/16 v16, 0x6

    aput v9, v15, v16

    .line 215
    const/4 v9, 0x7

    aput v6, v15, v9

    .line 217
    aget v18, v15, v16

    aget v9, v15, v9

    add-int v18, v18, v9

    const/16 v9, 0x8

    aput v18, v15, v9

    .line 219
    move/from16 v18, v9

    iget-object v9, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v9}, Landroid/icu/text/RBBISetBuilder;->getTrieSize()I

    move-result v9

    const/16 v19, 0x9

    aput v9, v15, v19

    .line 220
    aget v9, v15, v18

    add-int/2addr v9, v7

    const/16 v20, 0xc

    aput v9, v15, v20

    .line 222
    const/16 v9, 0xd

    aput v8, v15, v9

    .line 223
    aget v9, v15, v20

    add-int/2addr v9, v8

    const/16 v21, 0xa

    aput v9, v15, v21

    .line 225
    const/16 v22, 0xb

    array-length v9, v10

    aput v9, v15, v22

    .line 226
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_b5
    array-length v12, v15

    if-ge v9, v12, :cond_c3

    .line 227
    aget v12, v15, v9

    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 228
    add-int/lit8 v14, v14, 0x4

    .line 226
    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x0

    goto :goto_b5

    .line 232
    :cond_c3
    iget-object v12, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v12}, Landroid/icu/text/RBBITableBuilder;->exportTable()Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    move-result-object v12

    .line 233
    .local v12, "table":Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    nop

    .line 234
    invoke-virtual {v12, v2}, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->put(Ljava/io/DataOutputStream;)I

    move-result v23

    add-int v14, v14, v23

    .line 236
    move-object/from16 v23, v3

    .end local v3    # "strippedRules":Ljava/lang/String;
    .local v23, "strippedRules":Ljava/lang/String;
    iget-object v3, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v3}, Landroid/icu/text/RBBITableBuilder;->exportSafeTable()Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    move-result-object v3

    .line 237
    .end local v12    # "table":Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    .local v3, "table":Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    aget v12, v15, v16

    if-ne v14, v12, :cond_df

    move/from16 v12, v17

    goto :goto_e0

    :cond_df
    const/4 v12, 0x0

    :goto_e0
    invoke-static {v12}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 238
    invoke-virtual {v3, v2}, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->put(Ljava/io/DataOutputStream;)I

    move-result v12

    add-int/2addr v14, v12

    .line 241
    aget v12, v15, v18

    if-ne v14, v12, :cond_ef

    move/from16 v12, v17

    goto :goto_f0

    :cond_ef
    const/4 v12, 0x0

    :goto_f0
    invoke-static {v12}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 242
    iget-object v12, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v12, v1}, Landroid/icu/text/RBBISetBuilder;->serializeTrie(Ljava/io/OutputStream;)V

    .line 243
    aget v12, v15, v19

    add-int/2addr v14, v12

    .line 244
    :goto_fb
    rem-int/lit8 v12, v14, 0x8

    if-eqz v12, :cond_106

    .line 245
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 246
    add-int/lit8 v14, v14, 0x1

    goto :goto_fb

    .line 250
    :cond_106
    aget v12, v15, v20

    if-ne v14, v12, :cond_10d

    move/from16 v12, v17

    goto :goto_10e

    :cond_10d
    const/4 v12, 0x0

    :goto_10e
    invoke-static {v12}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 251
    iget-object v12, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_117
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_130

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 252
    .local v16, "val":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 253
    nop

    .end local v16    # "val":Ljava/lang/Integer;
    add-int/lit8 v14, v14, 0x4

    .line 254
    move-object/from16 v0, p0

    goto :goto_117

    .line 256
    :cond_130
    :goto_130
    rem-int/lit8 v0, v14, 0x8

    if-eqz v0, :cond_13b

    .line 257
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 258
    add-int/lit8 v14, v14, 0x1

    goto :goto_130

    .line 263
    :cond_13b
    aget v0, v15, v21

    if-ne v14, v0, :cond_142

    move/from16 v12, v17

    goto :goto_143

    :cond_142
    const/4 v12, 0x0

    :goto_143
    invoke-static {v12}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 264
    array-length v0, v10

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v12, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 265
    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 266
    array-length v0, v10

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v14, v0

    .line 267
    :goto_152
    rem-int/lit8 v0, v14, 0x8

    if-eqz v0, :cond_15c

    .line 268
    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 269
    add-int/lit8 v14, v14, 0x1

    goto :goto_152

    .line 271
    :cond_15c
    return-void
.end method

.method blacklist optimizeTables()V
    .registers 5

    .line 345
    nop

    :cond_1
    const/4 v0, 0x0

    .line 349
    .local v0, "didSomething":Z
    new-instance v1, Landroid/icu/text/RBBIRuleBuilder$IntPair;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/icu/text/RBBIRuleBuilder$IntPair;-><init>(II)V

    .line 350
    .local v1, "duplPair":Landroid/icu/text/RBBIRuleBuilder$IntPair;
    :goto_9
    iget-object v2, p0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v2, v1}, Landroid/icu/text/RBBITableBuilder;->findDuplCharClassFrom(Landroid/icu/text/RBBIRuleBuilder$IntPair;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 351
    iget-object v2, p0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v2, v1}, Landroid/icu/text/RBBISetBuilder;->mergeCategories(Landroid/icu/text/RBBIRuleBuilder$IntPair;)V

    .line 352
    iget-object v2, p0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    iget v3, v1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    invoke-virtual {v2, v3}, Landroid/icu/text/RBBITableBuilder;->removeColumn(I)V

    .line 353
    const/4 v0, 0x1

    goto :goto_9

    .line 355
    :cond_1f
    :goto_1f
    iget-object v2, p0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTable:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v2}, Landroid/icu/text/RBBITableBuilder;->removeDuplicateStates()I

    move-result v2

    if-lez v2, :cond_29

    .line 356
    const/4 v0, 0x1

    goto :goto_1f

    .line 358
    .end local v1    # "duplPair":Landroid/icu/text/RBBIRuleBuilder$IntPair;
    :cond_29
    if-nez v0, :cond_1

    .line 359
    return-void
.end method
