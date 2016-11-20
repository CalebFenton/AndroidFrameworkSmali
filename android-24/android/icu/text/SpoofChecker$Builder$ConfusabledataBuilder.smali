.class Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfusabledataBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;,
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;,
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private fKeySet:Landroid/icu/text/UnicodeSet;

.field private fKeyVec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fLineNum:I

.field private fMATable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fMLTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fParseHexNum:Ljava/util/regex/Pattern;

.field private fParseLine:Ljava/util/regex/Pattern;

.field private fSATable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fSLTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fStringLengthsTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fStringTable:Ljava/lang/StringBuffer;

.field private fValueVec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@b
    .line 947
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 968
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSLTable:Ljava/util/Hashtable;

    #@a
    .line 969
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSATable:Ljava/util/Hashtable;

    #@11
    .line 970
    new-instance v0, Ljava/util/Hashtable;

    #@13
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@16
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMLTable:Ljava/util/Hashtable;

    #@18
    .line 971
    new-instance v0, Ljava/util/Hashtable;

    #@1a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMATable:Ljava/util/Hashtable;

    #@1f
    .line 972
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@21
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@24
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    #@26
    .line 973
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@2d
    .line 974
    new-instance v0, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    #@34
    .line 975
    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    #@36
    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;-><init>()V

    #@39
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    #@3b
    .line 967
    return-void
.end method

.method public static buildConfusableData(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V
    .locals 1
    .param p0, "confusables"    # Ljava/io/Reader;
    .param p1, "dest"    # Landroid/icu/text/SpoofChecker$SpoofData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1329
    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;

    #@2
    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;-><init>()V

    #@5
    .line 1330
    .local v0, "builder":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
    invoke-virtual {v0, p0, p1}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->build(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V

    #@8
    .line 1328
    return-void
.end method


# virtual methods
.method addKeyEntry(ILjava/util/Hashtable;I)V
    .locals 12
    .param p1, "keyChar"    # I
    .param p3, "tableFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1225
    .local p2, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v10

    #@4
    invoke-virtual {p2, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v9

    #@8
    check-cast v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    #@a
    .line 1226
    .local v9, "targetMapping":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    if-nez v9, :cond_0

    #@c
    .line 1231
    return-void

    #@d
    .line 1238
    :cond_0
    const/4 v3, 0x0

    #@e
    .line 1240
    .local v3, "keyHasMultipleValues":Z
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v10

    #@14
    add-int/lit8 v1, v10, -0x1

    #@16
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@18
    .line 1241
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v10

    #@1e
    check-cast v10, Ljava/lang/Integer;

    #@20
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result v2

    #@24
    .line 1242
    .local v2, "key":I
    const v10, 0xffffff

    #@27
    and-int/2addr v10, v2

    #@28
    if-eq v10, p1, :cond_5

    #@2a
    .line 1265
    .end local v2    # "key":I
    :cond_1
    or-int v6, p1, p3

    #@2c
    .line 1266
    .local v6, "newKey":I
    if-eqz v3, :cond_2

    #@2e
    .line 1267
    const/high16 v10, 0x10000000

    #@30
    or-int/2addr v6, v10

    #@31
    .line 1269
    :cond_2
    iget-object v10, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@33
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@36
    move-result v10

    #@37
    add-int/lit8 v0, v10, -0x1

    #@39
    .line 1270
    .local v0, "adjustedMappingLength":I
    const/4 v10, 0x3

    #@3a
    if-le v0, v10, :cond_3

    #@3c
    .line 1271
    const/4 v0, 0x3

    #@3d
    .line 1273
    :cond_3
    shl-int/lit8 v10, v0, 0x1d

    #@3f
    or-int/2addr v6, v10

    #@40
    .line 1275
    iget v5, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStrTableIndex:I

    #@42
    .line 1277
    .local v5, "newData":I
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@44
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v11

    #@48
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4b
    .line 1278
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    #@4d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v11

    #@51
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    .line 1283
    if-eqz v3, :cond_4

    #@56
    .line 1284
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@5b
    move-result v10

    #@5c
    add-int/lit8 v8, v10, -0x2

    #@5e
    .line 1285
    .local v8, "previousKeyIndex":I
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@60
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v10

    #@64
    check-cast v10, Ljava/lang/Integer;

    #@66
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@69
    move-result v7

    #@6a
    .line 1286
    .local v7, "previousKey":I
    const/high16 v10, 0x10000000

    #@6c
    or-int/2addr v7, v10

    #@6d
    .line 1287
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@6f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v11

    #@73
    invoke-virtual {v10, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 1224
    .end local v7    # "previousKey":I
    .end local v8    # "previousKeyIndex":I
    :cond_4
    return-void

    #@77
    .line 1248
    .end local v0    # "adjustedMappingLength":I
    .end local v5    # "newData":I
    .end local v6    # "newKey":I
    .restart local v2    # "key":I
    :cond_5
    invoke-virtual {p0, v1}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->getMapping(I)Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    .line 1249
    .local v4, "mapping":Ljava/lang/String;
    iget-object v10, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@7d
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v10

    #@81
    if-eqz v10, :cond_6

    #@83
    .line 1254
    or-int/2addr v2, p3

    #@84
    .line 1255
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@89
    move-result-object v11

    #@8a
    invoke-virtual {v10, v1, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@8d
    .line 1256
    return-void

    #@8e
    .line 1258
    :cond_6
    const/4 v3, 0x1

    #@8f
    .line 1240
    add-int/lit8 v1, v1, -0x1

    #@91
    goto :goto_0
.end method

.method build(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V
    .locals 35
    .param p1, "confusables"    # Ljava/io/Reader;
    .param p2, "dest"    # Landroid/icu/text/SpoofChecker$SpoofData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 979
    new-instance v4, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 980
    .local v4, "fInput":Ljava/lang/StringBuffer;
    move-object/from16 v0, p1

    #@7
    invoke-static {v0, v4}, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->readWholeFileToString(Ljava/io/Reader;Ljava/lang/StringBuffer;)V

    #@a
    .line 991
    const-string/jumbo v32, "(?m)^[ \\t]*([0-9A-Fa-f]+)[ \\t]+;[ \\t]*([0-9A-Fa-f]+(?:[ \\t]+[0-9A-Fa-f]+)*)[ \\t]*;\\s*(?:(SL)|(SA)|(ML)|(MA))[ \\t]*(?:#.*?)?$|^([ \\t]*(?:#.*?)?)$|^(.*?)$"

    #@d
    invoke-static/range {v32 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@10
    move-result-object v32

    #@11
    move-object/from16 v0, v32

    #@13
    move-object/from16 v1, p0

    #@15
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseLine:Ljava/util/regex/Pattern;

    #@17
    .line 1001
    const-string/jumbo v32, "\\s*([0-9A-F]+)"

    #@1a
    invoke-static/range {v32 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@1d
    move-result-object v32

    #@1e
    move-object/from16 v0, v32

    #@20
    move-object/from16 v1, p0

    #@22
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseHexNum:Ljava/util/regex/Pattern;

    #@24
    .line 1005
    const/16 v32, 0x0

    #@26
    move/from16 v0, v32

    #@28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    #@2b
    move-result v32

    #@2c
    const v33, 0xfeff

    #@2f
    move/from16 v0, v32

    #@31
    move/from16 v1, v33

    #@33
    if-ne v0, v1, :cond_0

    #@35
    .line 1006
    const/16 v32, 0x0

    #@37
    const/16 v33, 0x20

    #@39
    move/from16 v0, v32

    #@3b
    move/from16 v1, v33

    #@3d
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    #@40
    .line 1010
    :cond_0
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseLine:Ljava/util/regex/Pattern;

    #@44
    move-object/from16 v32, v0

    #@46
    move-object/from16 v0, v32

    #@48
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@4b
    move-result-object v15

    #@4c
    .line 1011
    .local v15, "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    #@4f
    move-result v32

    #@50
    if-eqz v32, :cond_f

    #@52
    .line 1012
    move-object/from16 v0, p0

    #@54
    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    #@56
    move/from16 v32, v0

    #@58
    add-int/lit8 v32, v32, 0x1

    #@5a
    move/from16 v0, v32

    #@5c
    move-object/from16 v1, p0

    #@5e
    iput v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    #@60
    .line 1013
    const/16 v32, 0x7

    #@62
    move/from16 v0, v32

    #@64
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@67
    move-result v32

    #@68
    if-gez v32, :cond_1

    #@6a
    .line 1017
    const/16 v32, 0x8

    #@6c
    move/from16 v0, v32

    #@6e
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@71
    move-result v32

    #@72
    if-ltz v32, :cond_2

    #@74
    .line 1020
    new-instance v32, Ljava/text/ParseException;

    #@76
    new-instance v33, Ljava/lang/StringBuilder;

    #@78
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v34, "Confusables, line "

    #@7e
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v33

    #@82
    move-object/from16 v0, p0

    #@84
    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    #@86
    move/from16 v34, v0

    #@88
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v33

    #@8c
    const-string/jumbo v34, ": Unrecognized Line: "

    #@8f
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v33

    #@93
    .line 1021
    const/16 v34, 0x8

    #@95
    move/from16 v0, v34

    #@97
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@9a
    move-result-object v34

    #@9b
    .line 1020
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v33

    #@9f
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v33

    #@a3
    .line 1021
    const/16 v34, 0x8

    #@a5
    move/from16 v0, v34

    #@a7
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@aa
    move-result v34

    #@ab
    .line 1020
    invoke-direct/range {v32 .. v34}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@ae
    throw v32

    #@af
    .line 1027
    :cond_2
    const/16 v32, 0x1

    #@b1
    move/from16 v0, v32

    #@b3
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@b6
    move-result-object v32

    #@b7
    const/16 v33, 0x10

    #@b9
    invoke-static/range {v32 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@bc
    move-result v8

    #@bd
    .line 1028
    .local v8, "keyChar":I
    const v32, 0x10ffff

    #@c0
    move/from16 v0, v32

    #@c2
    if-le v8, v0, :cond_3

    #@c4
    .line 1029
    new-instance v32, Ljava/text/ParseException;

    #@c6
    new-instance v33, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v34, "Confusables, line "

    #@ce
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v33

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    #@d6
    move/from16 v34, v0

    #@d8
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@db
    move-result-object v33

    #@dc
    const-string/jumbo v34, ": Bad code point: "

    #@df
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v33

    #@e3
    .line 1030
    const/16 v34, 0x1

    #@e5
    move/from16 v0, v34

    #@e7
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@ea
    move-result-object v34

    #@eb
    .line 1029
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v33

    #@ef
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v33

    #@f3
    .line 1030
    const/16 v34, 0x1

    #@f5
    move/from16 v0, v34

    #@f7
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@fa
    move-result v34

    #@fb
    .line 1029
    invoke-direct/range {v32 .. v34}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@fe
    throw v32

    #@ff
    .line 1032
    :cond_3
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseHexNum:Ljava/util/regex/Pattern;

    #@103
    move-object/from16 v32, v0

    #@105
    const/16 v33, 0x2

    #@107
    move/from16 v0, v33

    #@109
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@10c
    move-result-object v33

    #@10d
    invoke-virtual/range {v32 .. v33}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@110
    move-result-object v13

    #@111
    .line 1034
    .local v13, "m":Ljava/util/regex/Matcher;
    new-instance v14, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    .line 1035
    .local v14, "mapString":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    #@119
    move-result v32

    #@11a
    if-eqz v32, :cond_5

    #@11c
    .line 1036
    const/16 v32, 0x1

    #@11e
    move/from16 v0, v32

    #@120
    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@123
    move-result-object v32

    #@124
    const/16 v33, 0x10

    #@126
    invoke-static/range {v32 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@129
    move-result v3

    #@12a
    .line 1037
    .local v3, "c":I
    const v32, 0x10ffff

    #@12d
    move/from16 v0, v32

    #@12f
    if-le v8, v0, :cond_4

    #@131
    .line 1038
    new-instance v32, Ljava/text/ParseException;

    #@133
    new-instance v33, Ljava/lang/StringBuilder;

    #@135
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v34, "Confusables, line "

    #@13b
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v33

    #@13f
    move-object/from16 v0, p0

    #@141
    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    #@143
    move/from16 v34, v0

    #@145
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@148
    move-result-object v33

    #@149
    const-string/jumbo v34, ": Bad code point: "

    #@14c
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v33

    #@150
    .line 1039
    const/16 v34, 0x10

    #@152
    move/from16 v0, v34

    #@154
    invoke-static {v3, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@157
    move-result-object v34

    #@158
    .line 1038
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v33

    #@15c
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v33

    #@160
    .line 1039
    const/16 v34, 0x2

    #@162
    move/from16 v0, v34

    #@164
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@167
    move-result v34

    #@168
    .line 1038
    invoke-direct/range {v32 .. v34}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@16b
    throw v32

    #@16c
    .line 1041
    :cond_4
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@16f
    goto :goto_1

    #@170
    .line 1043
    .end local v3    # "c":I
    :cond_5
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@172
    if-nez v32, :cond_7

    #@174
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    #@177
    move-result v32

    #@178
    const/16 v33, 0x1

    #@17a
    move/from16 v0, v32

    #@17c
    move/from16 v1, v33

    #@17e
    if-lt v0, v1, :cond_6

    #@180
    const/16 v32, 0x1

    #@182
    :goto_2
    if-nez v32, :cond_7

    #@184
    new-instance v32, Ljava/lang/AssertionError;

    #@186
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@189
    throw v32

    #@18a
    :cond_6
    const/16 v32, 0x0

    #@18c
    goto :goto_2

    #@18d
    .line 1048
    :cond_7
    move-object/from16 v0, p0

    #@18f
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    #@191
    move-object/from16 v32, v0

    #@193
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@196
    move-result-object v33

    #@197
    invoke-virtual/range {v32 .. v33}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->addString(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    #@19a
    move-result-object v25

    #@19b
    .line 1052
    .local v25, "smapString":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    const/16 v32, 0x3

    #@19d
    move/from16 v0, v32

    #@19f
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@1a2
    move-result v32

    #@1a3
    if-ltz v32, :cond_8

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSLTable:Ljava/util/Hashtable;

    #@1a9
    move-object/from16 v29, v0

    #@1ab
    .line 1057
    :goto_3
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@1ad
    if-nez v32, :cond_d

    #@1af
    if-eqz v29, :cond_c

    #@1b1
    const/16 v32, 0x1

    #@1b3
    :goto_4
    if-nez v32, :cond_d

    #@1b5
    new-instance v32, Ljava/lang/AssertionError;

    #@1b7
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@1ba
    throw v32

    #@1bb
    .line 1053
    :cond_8
    const/16 v32, 0x4

    #@1bd
    move/from16 v0, v32

    #@1bf
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@1c2
    move-result v32

    #@1c3
    if-ltz v32, :cond_9

    #@1c5
    move-object/from16 v0, p0

    #@1c7
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSATable:Ljava/util/Hashtable;

    #@1c9
    move-object/from16 v29, v0

    #@1cb
    .local v29, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    goto :goto_3

    #@1cc
    .line 1054
    .end local v29    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    :cond_9
    const/16 v32, 0x5

    #@1ce
    move/from16 v0, v32

    #@1d0
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@1d3
    move-result v32

    #@1d4
    if-ltz v32, :cond_a

    #@1d6
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMLTable:Ljava/util/Hashtable;

    #@1da
    move-object/from16 v29, v0

    #@1dc
    .restart local v29    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    goto :goto_3

    #@1dd
    .line 1055
    .end local v29    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    :cond_a
    const/16 v32, 0x6

    #@1df
    move/from16 v0, v32

    #@1e1
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@1e4
    move-result v32

    #@1e5
    if-ltz v32, :cond_b

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMATable:Ljava/util/Hashtable;

    #@1eb
    move-object/from16 v29, v0

    #@1ed
    .restart local v29    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    goto :goto_3

    #@1ee
    .line 1056
    .end local v29    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    :cond_b
    const/16 v29, 0x0

    #@1f0
    .local v29, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    goto :goto_3

    #@1f1
    .line 1057
    .end local v29    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    :cond_c
    const/16 v32, 0x0

    #@1f3
    goto :goto_4

    #@1f4
    .line 1069
    :cond_d
    move-object/from16 v0, p0

    #@1f6
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMATable:Ljava/util/Hashtable;

    #@1f8
    move-object/from16 v32, v0

    #@1fa
    move-object/from16 v0, v29

    #@1fc
    move-object/from16 v1, v32

    #@1fe
    if-eq v0, v1, :cond_e

    #@200
    .line 1070
    new-instance v32, Ljava/text/ParseException;

    #@202
    new-instance v33, Ljava/lang/StringBuilder;

    #@204
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@207
    const-string/jumbo v34, "Confusables, line "

    #@20a
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v33

    #@20e
    move-object/from16 v0, p0

    #@210
    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    #@212
    move/from16 v34, v0

    #@214
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@217
    move-result-object v33

    #@218
    const-string/jumbo v34, ": Table must be \'MA\'."

    #@21b
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v33

    #@21f
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@222
    move-result-object v33

    #@223
    const/16 v34, 0x0

    #@225
    invoke-direct/range {v32 .. v34}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@228
    throw v32

    #@229
    .line 1073
    :cond_e
    move-object/from16 v0, p0

    #@22b
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSLTable:Ljava/util/Hashtable;

    #@22d
    move-object/from16 v32, v0

    #@22f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@232
    move-result-object v33

    #@233
    move-object/from16 v0, v32

    #@235
    move-object/from16 v1, v33

    #@237
    move-object/from16 v2, v25

    #@239
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23c
    .line 1074
    move-object/from16 v0, p0

    #@23e
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSATable:Ljava/util/Hashtable;

    #@240
    move-object/from16 v32, v0

    #@242
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@245
    move-result-object v33

    #@246
    move-object/from16 v0, v32

    #@248
    move-object/from16 v1, v33

    #@24a
    move-object/from16 v2, v25

    #@24c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24f
    .line 1075
    move-object/from16 v0, p0

    #@251
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMLTable:Ljava/util/Hashtable;

    #@253
    move-object/from16 v32, v0

    #@255
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@258
    move-result-object v33

    #@259
    move-object/from16 v0, v32

    #@25b
    move-object/from16 v1, v33

    #@25d
    move-object/from16 v2, v25

    #@25f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@262
    .line 1076
    move-object/from16 v0, p0

    #@264
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMATable:Ljava/util/Hashtable;

    #@266
    move-object/from16 v32, v0

    #@268
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26b
    move-result-object v33

    #@26c
    move-object/from16 v0, v32

    #@26e
    move-object/from16 v1, v33

    #@270
    move-object/from16 v2, v25

    #@272
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@275
    .line 1078
    move-object/from16 v0, p0

    #@277
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    #@279
    move-object/from16 v32, v0

    #@27b
    move-object/from16 v0, v32

    #@27d
    invoke-virtual {v0, v8}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@280
    goto/16 :goto_0

    #@282
    .line 1095
    .end local v8    # "keyChar":I
    .end local v13    # "m":Ljava/util/regex/Matcher;
    .end local v14    # "mapString":Ljava/lang/StringBuilder;
    .end local v25    # "smapString":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    :cond_f
    move-object/from16 v0, p0

    #@284
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    #@286
    move-object/from16 v32, v0

    #@288
    invoke-virtual/range {v32 .. v32}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->sort()V

    #@28b
    .line 1096
    new-instance v32, Ljava/lang/StringBuffer;

    #@28d
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    #@290
    move-object/from16 v0, v32

    #@292
    move-object/from16 v1, p0

    #@294
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    #@296
    .line 1097
    new-instance v32, Ljava/util/ArrayList;

    #@298
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    #@29b
    move-object/from16 v0, v32

    #@29d
    move-object/from16 v1, p0

    #@29f
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@2a1
    .line 1098
    const/16 v23, 0x0

    #@2a3
    .line 1099
    .local v23, "previousStringLength":I
    const/16 v22, 0x0

    #@2a5
    .line 1100
    .local v22, "previousStringIndex":I
    move-object/from16 v0, p0

    #@2a7
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    #@2a9
    move-object/from16 v32, v0

    #@2ab
    invoke-virtual/range {v32 .. v32}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->size()I

    #@2ae
    move-result v19

    #@2af
    .line 1102
    .local v19, "poolSize":I
    const/4 v5, 0x0

    #@2b0
    .local v5, "i":I
    :goto_5
    move/from16 v0, v19

    #@2b2
    if-ge v5, v0, :cond_14

    #@2b4
    .line 1103
    move-object/from16 v0, p0

    #@2b6
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    #@2b8
    move-object/from16 v32, v0

    #@2ba
    move-object/from16 v0, v32

    #@2bc
    invoke-virtual {v0, v5}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->getByIndex(I)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    #@2bf
    move-result-object v24

    #@2c0
    .line 1104
    .local v24, "s":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    move-object/from16 v0, v24

    #@2c2
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@2c4
    move-object/from16 v32, v0

    #@2c6
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    #@2c9
    move-result v27

    #@2ca
    .line 1105
    .local v27, "strLen":I
    move-object/from16 v0, p0

    #@2cc
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    #@2ce
    move-object/from16 v32, v0

    #@2d0
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->length()I

    #@2d3
    move-result v26

    #@2d4
    .line 1106
    .local v26, "strIndex":I
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@2d6
    if-nez v32, :cond_11

    #@2d8
    move/from16 v0, v27

    #@2da
    move/from16 v1, v23

    #@2dc
    if-lt v0, v1, :cond_10

    #@2de
    const/16 v32, 0x1

    #@2e0
    :goto_6
    if-nez v32, :cond_11

    #@2e2
    new-instance v32, Ljava/lang/AssertionError;

    #@2e4
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@2e7
    throw v32

    #@2e8
    :cond_10
    const/16 v32, 0x0

    #@2ea
    goto :goto_6

    #@2eb
    .line 1107
    :cond_11
    const/16 v32, 0x1

    #@2ed
    move/from16 v0, v27

    #@2ef
    move/from16 v1, v32

    #@2f1
    if-ne v0, v1, :cond_12

    #@2f3
    .line 1111
    move-object/from16 v0, v24

    #@2f5
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@2f7
    move-object/from16 v32, v0

    #@2f9
    const/16 v33, 0x0

    #@2fb
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->charAt(I)C

    #@2fe
    move-result v32

    #@2ff
    move/from16 v0, v32

    #@301
    move-object/from16 v1, v24

    #@303
    iput v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStrTableIndex:I

    #@305
    .line 1120
    :goto_7
    move/from16 v23, v27

    #@307
    .line 1121
    move/from16 v22, v26

    #@309
    .line 1102
    add-int/lit8 v5, v5, 0x1

    #@30b
    goto :goto_5

    #@30c
    .line 1113
    :cond_12
    move/from16 v0, v27

    #@30e
    move/from16 v1, v23

    #@310
    if-le v0, v1, :cond_13

    #@312
    const/16 v32, 0x4

    #@314
    move/from16 v0, v23

    #@316
    move/from16 v1, v32

    #@318
    if-lt v0, v1, :cond_13

    #@31a
    .line 1114
    move-object/from16 v0, p0

    #@31c
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@31e
    move-object/from16 v32, v0

    #@320
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@323
    move-result-object v33

    #@324
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@327
    .line 1115
    move-object/from16 v0, p0

    #@329
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@32b
    move-object/from16 v32, v0

    #@32d
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@330
    move-result-object v33

    #@331
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@334
    .line 1117
    :cond_13
    move/from16 v0, v26

    #@336
    move-object/from16 v1, v24

    #@338
    iput v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStrTableIndex:I

    #@33a
    .line 1118
    move-object/from16 v0, p0

    #@33c
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    #@33e
    move-object/from16 v32, v0

    #@340
    move-object/from16 v0, v24

    #@342
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@344
    move-object/from16 v33, v0

    #@346
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@349
    goto :goto_7

    #@34a
    .line 1128
    .end local v24    # "s":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .end local v26    # "strIndex":I
    .end local v27    # "strLen":I
    :cond_14
    const/16 v32, 0x4

    #@34c
    move/from16 v0, v23

    #@34e
    move/from16 v1, v32

    #@350
    if-lt v0, v1, :cond_15

    #@352
    .line 1129
    move-object/from16 v0, p0

    #@354
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@356
    move-object/from16 v32, v0

    #@358
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35b
    move-result-object v33

    #@35c
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35f
    .line 1130
    move-object/from16 v0, p0

    #@361
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@363
    move-object/from16 v32, v0

    #@365
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@368
    move-result-object v33

    #@369
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36c
    .line 1145
    :cond_15
    move-object/from16 v0, p0

    #@36e
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    #@370
    move-object/from16 v32, v0

    #@372
    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@375
    move-result-object v10

    #@376
    .local v10, "keyCharStr$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@379
    move-result v32

    #@37a
    if-eqz v32, :cond_16

    #@37c
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37f
    move-result-object v9

    #@380
    check-cast v9, Ljava/lang/String;

    #@382
    .line 1146
    .local v9, "keyCharStr":Ljava/lang/String;
    const/16 v32, 0x0

    #@384
    move/from16 v0, v32

    #@386
    invoke-virtual {v9, v0}, Ljava/lang/String;->codePointAt(I)I

    #@389
    move-result v8

    #@38a
    .line 1147
    .restart local v8    # "keyChar":I
    move-object/from16 v0, p0

    #@38c
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSLTable:Ljava/util/Hashtable;

    #@38e
    move-object/from16 v32, v0

    #@390
    const/high16 v33, 0x1000000

    #@392
    move-object/from16 v0, p0

    #@394
    move-object/from16 v1, v32

    #@396
    move/from16 v2, v33

    #@398
    invoke-virtual {v0, v8, v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->addKeyEntry(ILjava/util/Hashtable;I)V

    #@39b
    .line 1148
    move-object/from16 v0, p0

    #@39d
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSATable:Ljava/util/Hashtable;

    #@39f
    move-object/from16 v32, v0

    #@3a1
    const/high16 v33, 0x2000000

    #@3a3
    move-object/from16 v0, p0

    #@3a5
    move-object/from16 v1, v32

    #@3a7
    move/from16 v2, v33

    #@3a9
    invoke-virtual {v0, v8, v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->addKeyEntry(ILjava/util/Hashtable;I)V

    #@3ac
    .line 1149
    move-object/from16 v0, p0

    #@3ae
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMLTable:Ljava/util/Hashtable;

    #@3b0
    move-object/from16 v32, v0

    #@3b2
    const/high16 v33, 0x4000000

    #@3b4
    move-object/from16 v0, p0

    #@3b6
    move-object/from16 v1, v32

    #@3b8
    move/from16 v2, v33

    #@3ba
    invoke-virtual {v0, v8, v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->addKeyEntry(ILjava/util/Hashtable;I)V

    #@3bd
    .line 1150
    move-object/from16 v0, p0

    #@3bf
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMATable:Ljava/util/Hashtable;

    #@3c1
    move-object/from16 v32, v0

    #@3c3
    const/high16 v33, 0x8000000

    #@3c5
    move-object/from16 v0, p0

    #@3c7
    move-object/from16 v1, v32

    #@3c9
    move/from16 v2, v33

    #@3cb
    invoke-virtual {v0, v8, v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->addKeyEntry(ILjava/util/Hashtable;I)V

    #@3ce
    goto :goto_8

    #@3cf
    .line 1159
    .end local v8    # "keyChar":I
    .end local v9    # "keyCharStr":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    #@3d1
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@3d3
    move-object/from16 v32, v0

    #@3d5
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    #@3d8
    move-result v16

    #@3d9
    .line 1160
    .local v16, "numKeys":I
    move/from16 v0, v16

    #@3db
    new-array v0, v0, [I

    #@3dd
    move-object/from16 v32, v0

    #@3df
    move-object/from16 v0, v32

    #@3e1
    move-object/from16 v1, p2

    #@3e3
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@3e5
    .line 1161
    const/16 v20, 0x0

    #@3e7
    .line 1162
    .local v20, "previousKey":I
    const/4 v5, 0x0

    #@3e8
    :goto_9
    move/from16 v0, v16

    #@3ea
    if-ge v5, v0, :cond_1b

    #@3ec
    .line 1163
    move-object/from16 v0, p0

    #@3ee
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@3f0
    move-object/from16 v32, v0

    #@3f2
    move-object/from16 v0, v32

    #@3f4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f7
    move-result-object v32

    #@3f8
    check-cast v32, Ljava/lang/Integer;

    #@3fa
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    #@3fd
    move-result v7

    #@3fe
    .line 1164
    .local v7, "key":I
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@400
    if-nez v32, :cond_18

    #@402
    const v32, 0xffffff

    #@405
    and-int v32, v32, v7

    #@407
    const v33, 0xffffff

    #@40a
    and-int v33, v33, v20

    #@40c
    move/from16 v0, v32

    #@40e
    move/from16 v1, v33

    #@410
    if-lt v0, v1, :cond_17

    #@412
    const/16 v32, 0x1

    #@414
    :goto_a
    if-nez v32, :cond_18

    #@416
    new-instance v32, Ljava/lang/AssertionError;

    #@418
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@41b
    throw v32

    #@41c
    :cond_17
    const/16 v32, 0x0

    #@41e
    goto :goto_a

    #@41f
    .line 1165
    :cond_18
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@421
    if-nez v32, :cond_1a

    #@423
    const/high16 v32, -0x1000000

    #@425
    and-int v32, v32, v7

    #@427
    if-eqz v32, :cond_19

    #@429
    const/16 v32, 0x1

    #@42b
    :goto_b
    if-nez v32, :cond_1a

    #@42d
    new-instance v32, Ljava/lang/AssertionError;

    #@42f
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@432
    throw v32

    #@433
    :cond_19
    const/16 v32, 0x0

    #@435
    goto :goto_b

    #@436
    .line 1166
    :cond_1a
    move-object/from16 v0, p2

    #@438
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@43a
    move-object/from16 v32, v0

    #@43c
    aput v7, v32, v5

    #@43e
    .line 1167
    move/from16 v20, v7

    #@440
    .line 1162
    add-int/lit8 v5, v5, 0x1

    #@442
    goto :goto_9

    #@443
    .line 1171
    .end local v7    # "key":I
    :cond_1b
    move-object/from16 v0, p0

    #@445
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    #@447
    move-object/from16 v32, v0

    #@449
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    #@44c
    move-result v17

    #@44d
    .line 1172
    .local v17, "numValues":I
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@44f
    if-nez v32, :cond_1d

    #@451
    move/from16 v0, v16

    #@453
    move/from16 v1, v17

    #@455
    if-ne v0, v1, :cond_1c

    #@457
    const/16 v32, 0x1

    #@459
    :goto_c
    if-nez v32, :cond_1d

    #@45b
    new-instance v32, Ljava/lang/AssertionError;

    #@45d
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@460
    throw v32

    #@461
    :cond_1c
    const/16 v32, 0x0

    #@463
    goto :goto_c

    #@464
    .line 1173
    :cond_1d
    move/from16 v0, v17

    #@466
    new-array v0, v0, [S

    #@468
    move-object/from16 v32, v0

    #@46a
    move-object/from16 v0, v32

    #@46c
    move-object/from16 v1, p2

    #@46e
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    #@470
    .line 1174
    const/4 v5, 0x0

    #@471
    .line 1175
    move-object/from16 v0, p0

    #@473
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    #@475
    move-object/from16 v32, v0

    #@477
    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47a
    move-result-object v31

    #@47b
    .local v31, "value$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    #@47e
    move-result v32

    #@47f
    if-eqz v32, :cond_20

    #@481
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@484
    move-result-object v32

    #@485
    check-cast v32, Ljava/lang/Integer;

    #@487
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    #@48a
    move-result v30

    #@48b
    .line 1176
    .local v30, "value":I
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@48d
    if-nez v32, :cond_1f

    #@48f
    const v32, 0xffff

    #@492
    move/from16 v0, v30

    #@494
    move/from16 v1, v32

    #@496
    if-ge v0, v1, :cond_1e

    #@498
    const/16 v32, 0x1

    #@49a
    :goto_e
    if-nez v32, :cond_1f

    #@49c
    new-instance v32, Ljava/lang/AssertionError;

    #@49e
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@4a1
    throw v32

    #@4a2
    :cond_1e
    const/16 v32, 0x0

    #@4a4
    goto :goto_e

    #@4a5
    .line 1177
    :cond_1f
    move-object/from16 v0, p2

    #@4a7
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    #@4a9
    move-object/from16 v32, v0

    #@4ab
    add-int/lit8 v6, v5, 0x1

    #@4ad
    .end local v5    # "i":I
    .local v6, "i":I
    move/from16 v0, v30

    #@4af
    int-to-short v0, v0

    #@4b0
    move/from16 v33, v0

    #@4b2
    aput-short v33, v32, v5

    #@4b4
    move v5, v6

    #@4b5
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_d

    #@4b6
    .line 1182
    .end local v30    # "value":I
    :cond_20
    move-object/from16 v0, p0

    #@4b8
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    #@4ba
    move-object/from16 v32, v0

    #@4bc
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4bf
    move-result-object v32

    #@4c0
    move-object/from16 v0, v32

    #@4c2
    move-object/from16 v1, p2

    #@4c4
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@4c6
    .line 1192
    move-object/from16 v0, p0

    #@4c8
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@4ca
    move-object/from16 v32, v0

    #@4cc
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    #@4cf
    move-result v12

    #@4d0
    .line 1193
    .local v12, "lengthTableLength":I
    const/16 v21, 0x0

    #@4d2
    .line 1198
    .local v21, "previousLength":I
    div-int/lit8 v28, v12, 0x2

    #@4d4
    .line 1199
    .local v28, "stringLengthsSize":I
    move/from16 v0, v28

    #@4d6
    new-array v0, v0, [Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@4d8
    move-object/from16 v32, v0

    #@4da
    move-object/from16 v0, v32

    #@4dc
    move-object/from16 v1, p2

    #@4de
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@4e0
    .line 1200
    const/4 v5, 0x0

    #@4e1
    :goto_f
    move/from16 v0, v28

    #@4e3
    if-ge v5, v0, :cond_27

    #@4e5
    .line 1201
    move-object/from16 v0, p0

    #@4e7
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@4e9
    move-object/from16 v32, v0

    #@4eb
    mul-int/lit8 v33, v5, 0x2

    #@4ed
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f0
    move-result-object v32

    #@4f1
    check-cast v32, Ljava/lang/Integer;

    #@4f3
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    #@4f6
    move-result v18

    #@4f7
    .line 1202
    .local v18, "offset":I
    move-object/from16 v0, p0

    #@4f9
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@4fb
    move-object/from16 v32, v0

    #@4fd
    mul-int/lit8 v33, v5, 0x2

    #@4ff
    add-int/lit8 v33, v33, 0x1

    #@501
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@504
    move-result-object v32

    #@505
    check-cast v32, Ljava/lang/Integer;

    #@507
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    #@50a
    move-result v11

    #@50b
    .line 1203
    .local v11, "length":I
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@50d
    if-nez v32, :cond_22

    #@50f
    move-object/from16 v0, p2

    #@511
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@513
    move-object/from16 v32, v0

    #@515
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    #@518
    move-result v32

    #@519
    move/from16 v0, v18

    #@51b
    move/from16 v1, v32

    #@51d
    if-ge v0, v1, :cond_21

    #@51f
    const/16 v32, 0x1

    #@521
    :goto_10
    if-nez v32, :cond_22

    #@523
    new-instance v32, Ljava/lang/AssertionError;

    #@525
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@528
    throw v32

    #@529
    :cond_21
    const/16 v32, 0x0

    #@52b
    goto :goto_10

    #@52c
    .line 1204
    :cond_22
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@52e
    if-nez v32, :cond_24

    #@530
    const/16 v32, 0x28

    #@532
    move/from16 v0, v32

    #@534
    if-ge v11, v0, :cond_23

    #@536
    const/16 v32, 0x1

    #@538
    :goto_11
    if-nez v32, :cond_24

    #@53a
    new-instance v32, Ljava/lang/AssertionError;

    #@53c
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@53f
    throw v32

    #@540
    :cond_23
    const/16 v32, 0x0

    #@542
    goto :goto_11

    #@543
    .line 1205
    :cond_24
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@545
    if-nez v32, :cond_26

    #@547
    move/from16 v0, v21

    #@549
    if-le v11, v0, :cond_25

    #@54b
    const/16 v32, 0x1

    #@54d
    :goto_12
    if-nez v32, :cond_26

    #@54f
    new-instance v32, Ljava/lang/AssertionError;

    #@551
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@554
    throw v32

    #@555
    :cond_25
    const/16 v32, 0x0

    #@557
    goto :goto_12

    #@558
    .line 1206
    :cond_26
    move-object/from16 v0, p2

    #@55a
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@55c
    move-object/from16 v32, v0

    #@55e
    new-instance v33, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@560
    invoke-direct/range {v33 .. v33}, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;-><init>()V

    #@563
    aput-object v33, v32, v5

    #@565
    .line 1207
    move-object/from16 v0, p2

    #@567
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@569
    move-object/from16 v32, v0

    #@56b
    aget-object v32, v32, v5

    #@56d
    move/from16 v0, v18

    #@56f
    move-object/from16 v1, v32

    #@571
    iput v0, v1, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fLastString:I

    #@573
    .line 1208
    move-object/from16 v0, p2

    #@575
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@577
    move-object/from16 v32, v0

    #@579
    aget-object v32, v32, v5

    #@57b
    move-object/from16 v0, v32

    #@57d
    iput v11, v0, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fStrLength:I

    #@57f
    .line 1209
    move/from16 v21, v11

    #@581
    .line 1200
    add-int/lit8 v5, v5, 0x1

    #@583
    goto/16 :goto_f

    #@585
    .line 978
    .end local v11    # "length":I
    .end local v18    # "offset":I
    :cond_27
    return-void
.end method

.method getMapping(I)Ljava/lang/String;
    .locals 10
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1294
    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v6

    #@8
    check-cast v6, Ljava/lang/Integer;

    #@a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v2

    #@e
    .line 1295
    .local v2, "key":I
    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Ljava/lang/Integer;

    #@16
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v5

    #@1a
    .line 1296
    .local v5, "value":I
    invoke-static {v2}, Landroid/icu/text/SpoofChecker;->getKeyLength(I)I

    #@1d
    move-result v4

    #@1e
    .line 1298
    .local v4, "length":I
    packed-switch v4, :pswitch_data_0

    #@21
    .line 1318
    sget-boolean v6, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@23
    if-nez v6, :cond_4

    #@25
    new-instance v6, Ljava/lang/AssertionError;

    #@27
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@2a
    throw v6

    #@2b
    .line 1300
    :pswitch_0
    new-array v0, v7, [C

    #@2d
    int-to-char v6, v5

    #@2e
    aput-char v6, v0, v8

    #@30
    .line 1301
    .local v0, "cs":[C
    new-instance v6, Ljava/lang/String;

    #@32
    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    #@35
    return-object v6

    #@36
    .line 1304
    .end local v0    # "cs":[C
    :pswitch_1
    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    #@38
    add-int v7, v5, v4

    #@3a
    add-int/lit8 v7, v7, 0x1

    #@3c
    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    return-object v6

    #@41
    .line 1306
    :pswitch_2
    const/4 v4, 0x0

    #@42
    .line 1308
    const/4 v1, 0x0

    #@43
    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v6

    #@49
    if-ge v1, v6, :cond_0

    #@4b
    .line 1309
    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v6

    #@51
    check-cast v6, Ljava/lang/Integer;

    #@53
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@56
    move-result v3

    #@57
    .line 1310
    .local v3, "lastIndexWithLen":I
    if-gt v5, v3, :cond_1

    #@59
    .line 1311
    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@5b
    add-int/lit8 v9, v1, 0x1

    #@5d
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v6

    #@61
    check-cast v6, Ljava/lang/Integer;

    #@63
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@66
    move-result v4

    #@67
    .line 1315
    .end local v3    # "lastIndexWithLen":I
    :cond_0
    sget-boolean v6, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@69
    if-nez v6, :cond_3

    #@6b
    const/4 v6, 0x3

    #@6c
    if-lt v4, v6, :cond_2

    #@6e
    move v6, v7

    #@6f
    :goto_1
    if-nez v6, :cond_3

    #@71
    new-instance v6, Ljava/lang/AssertionError;

    #@73
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@76
    throw v6

    #@77
    .line 1308
    .restart local v3    # "lastIndexWithLen":I
    :cond_1
    add-int/lit8 v1, v1, 0x2

    #@79
    goto :goto_0

    #@7a
    .end local v3    # "lastIndexWithLen":I
    :cond_2
    move v6, v8

    #@7b
    .line 1315
    goto :goto_1

    #@7c
    .line 1316
    :cond_3
    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    #@7e
    add-int v7, v5, v4

    #@80
    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    return-object v6

    #@85
    .line 1320
    .end local v1    # "i":I
    :cond_4
    const-string/jumbo v6, ""

    #@88
    return-object v6

    #@89
    .line 1298
    nop

    #@8a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
