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
    .line 985
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
    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1006
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSLTable:Ljava/util/Hashtable;

    #@a
    .line 1007
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSATable:Ljava/util/Hashtable;

    #@11
    .line 1008
    new-instance v0, Ljava/util/Hashtable;

    #@13
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@16
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMLTable:Ljava/util/Hashtable;

    #@18
    .line 1009
    new-instance v0, Ljava/util/Hashtable;

    #@1a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMATable:Ljava/util/Hashtable;

    #@1f
    .line 1010
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@21
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@24
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    #@26
    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@2d
    .line 1012
    new-instance v0, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    #@34
    .line 1013
    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    #@36
    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;-><init>()V

    #@39
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    #@3b
    .line 1005
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
    .line 1345
    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;

    #@2
    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;-><init>()V

    #@5
    .line 1346
    .local v0, "builder":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
    invoke-virtual {v0, p0, p1}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->build(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V

    #@8
    .line 1344
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
    .line 1241
    .local p2, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
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
    .line 1242
    .local v9, "targetMapping":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    if-nez v9, :cond_0

    #@c
    .line 1247
    return-void

    #@d
    .line 1254
    :cond_0
    const/4 v3, 0x0

    #@e
    .line 1256
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
    .line 1257
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
    .line 1258
    .local v2, "key":I
    const v10, 0xffffff

    #@27
    and-int/2addr v10, v2

    #@28
    if-eq v10, p1, :cond_5

    #@2a
    .line 1281
    .end local v2    # "key":I
    :cond_1
    or-int v6, p1, p3

    #@2c
    .line 1282
    .local v6, "newKey":I
    if-eqz v3, :cond_2

    #@2e
    .line 1283
    const/high16 v10, 0x10000000

    #@30
    or-int/2addr v6, v10

    #@31
    .line 1285
    :cond_2
    iget-object v10, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@33
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@36
    move-result v10

    #@37
    add-int/lit8 v0, v10, -0x1

    #@39
    .line 1286
    .local v0, "adjustedMappingLength":I
    const/4 v10, 0x3

    #@3a
    if-le v0, v10, :cond_3

    #@3c
    .line 1287
    const/4 v0, 0x3

    #@3d
    .line 1289
    :cond_3
    shl-int/lit8 v10, v0, 0x1d

    #@3f
    or-int/2addr v6, v10

    #@40
    .line 1291
    iget v5, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStrTableIndex:I

    #@42
    .line 1293
    .local v5, "newData":I
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@44
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v11

    #@48
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4b
    .line 1294
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    #@4d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v11

    #@51
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    .line 1299
    if-eqz v3, :cond_4

    #@56
    .line 1300
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@5b
    move-result v10

    #@5c
    add-int/lit8 v8, v10, -0x2

    #@5e
    .line 1301
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
    .line 1302
    .local v7, "previousKey":I
    const/high16 v10, 0x10000000

    #@6c
    or-int/2addr v7, v10

    #@6d
    .line 1303
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@6f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v11

    #@73
    invoke-virtual {v10, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 1240
    .end local v7    # "previousKey":I
    .end local v8    # "previousKeyIndex":I
    :cond_4
    return-void

    #@77
    .line 1264
    .end local v0    # "adjustedMappingLength":I
    .end local v5    # "newData":I
    .end local v6    # "newKey":I
    .restart local v2    # "key":I
    :cond_5
    invoke-virtual {p0, v1}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->getMapping(I)Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    .line 1265
    .local v4, "mapping":Ljava/lang/String;
    iget-object v10, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@7d
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v10

    #@81
    if-eqz v10, :cond_6

    #@83
    .line 1270
    or-int/2addr v2, p3

    #@84
    .line 1271
    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@89
    move-result-object v11

    #@8a
    invoke-virtual {v10, v1, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@8d
    .line 1272
    return-void

    #@8e
    .line 1274
    :cond_6
    const/4 v3, 0x1

    #@8f
    .line 1256
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
    .line 1017
    new-instance v4, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1018
    .local v4, "fInput":Ljava/lang/StringBuffer;
    move-object/from16 v0, p1

    #@7
    invoke-static {v0, v4}, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->readWholeFileToString(Ljava/io/Reader;Ljava/lang/StringBuffer;)V

    #@a
    .line 1029
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
    .line 1039
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
    .line 1043
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
    .line 1044
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
    .line 1048
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
    .line 1049
    .local v15, "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    #@4f
    move-result v32

    #@50
    if-eqz v32, :cond_e

    #@52
    .line 1050
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
    .line 1051
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
    .line 1055
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
    .line 1058
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
    .line 1059
    const/16 v34, 0x8

    #@95
    move/from16 v0, v34

    #@97
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@9a
    move-result-object v34

    #@9b
    .line 1058
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v33

    #@9f
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v33

    #@a3
    .line 1059
    const/16 v34, 0x8

    #@a5
    move/from16 v0, v34

    #@a7
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@aa
    move-result v34

    #@ab
    .line 1058
    invoke-direct/range {v32 .. v34}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@ae
    throw v32

    #@af
    .line 1065
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
    .line 1066
    .local v8, "keyChar":I
    const v32, 0x10ffff

    #@c0
    move/from16 v0, v32

    #@c2
    if-le v8, v0, :cond_3

    #@c4
    .line 1067
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
    .line 1068
    const/16 v34, 0x1

    #@e5
    move/from16 v0, v34

    #@e7
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@ea
    move-result-object v34

    #@eb
    .line 1067
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v33

    #@ef
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v33

    #@f3
    .line 1068
    const/16 v34, 0x1

    #@f5
    move/from16 v0, v34

    #@f7
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@fa
    move-result v34

    #@fb
    .line 1067
    invoke-direct/range {v32 .. v34}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@fe
    throw v32

    #@ff
    .line 1070
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
    .line 1072
    .local v13, "m":Ljava/util/regex/Matcher;
    new-instance v14, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    .line 1073
    .local v14, "mapString":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    #@119
    move-result v32

    #@11a
    if-eqz v32, :cond_5

    #@11c
    .line 1074
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
    .line 1075
    .local v3, "c":I
    const v32, 0x10ffff

    #@12d
    move/from16 v0, v32

    #@12f
    if-le v8, v0, :cond_4

    #@131
    .line 1076
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
    .line 1077
    const/16 v34, 0x10

    #@152
    move/from16 v0, v34

    #@154
    invoke-static {v3, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@157
    move-result-object v34

    #@158
    .line 1076
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v33

    #@15c
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v33

    #@160
    .line 1077
    const/16 v34, 0x2

    #@162
    move/from16 v0, v34

    #@164
    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@167
    move-result v34

    #@168
    .line 1076
    invoke-direct/range {v32 .. v34}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@16b
    throw v32

    #@16c
    .line 1079
    :cond_4
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@16f
    goto :goto_1

    #@170
    .line 1081
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
    .line 1086
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
    .line 1089
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
    .line 1092
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
    .line 1090
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
    .local v29, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    goto :goto_3

    #@1cc
    .end local v29    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
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
    .restart local v29    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    goto :goto_3

    #@1dd
    .line 1091
    .end local v29    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
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
    .restart local v29    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    goto :goto_3

    #@1ee
    .end local v29    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    :cond_b
    const/16 v29, 0x0

    #@1f0
    .local v29, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    goto :goto_3

    #@1f1
    .line 1092
    .end local v29    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;>;"
    :cond_c
    const/16 v32, 0x0

    #@1f3
    goto :goto_4

    #@1f4
    .line 1093
    :cond_d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f7
    move-result-object v32

    #@1f8
    move-object/from16 v0, v29

    #@1fa
    move-object/from16 v1, v32

    #@1fc
    move-object/from16 v2, v25

    #@1fe
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@201
    .line 1094
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    #@205
    move-object/from16 v32, v0

    #@207
    move-object/from16 v0, v32

    #@209
    invoke-virtual {v0, v8}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@20c
    goto/16 :goto_0

    #@20e
    .line 1111
    .end local v8    # "keyChar":I
    .end local v13    # "m":Ljava/util/regex/Matcher;
    .end local v14    # "mapString":Ljava/lang/StringBuilder;
    .end local v25    # "smapString":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    :cond_e
    move-object/from16 v0, p0

    #@210
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    #@212
    move-object/from16 v32, v0

    #@214
    invoke-virtual/range {v32 .. v32}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->sort()V

    #@217
    .line 1112
    new-instance v32, Ljava/lang/StringBuffer;

    #@219
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    #@21c
    move-object/from16 v0, v32

    #@21e
    move-object/from16 v1, p0

    #@220
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    #@222
    .line 1113
    new-instance v32, Ljava/util/ArrayList;

    #@224
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    #@227
    move-object/from16 v0, v32

    #@229
    move-object/from16 v1, p0

    #@22b
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@22d
    .line 1114
    const/16 v23, 0x0

    #@22f
    .line 1115
    .local v23, "previousStringLength":I
    const/16 v22, 0x0

    #@231
    .line 1116
    .local v22, "previousStringIndex":I
    move-object/from16 v0, p0

    #@233
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    #@235
    move-object/from16 v32, v0

    #@237
    invoke-virtual/range {v32 .. v32}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->size()I

    #@23a
    move-result v19

    #@23b
    .line 1118
    .local v19, "poolSize":I
    const/4 v5, 0x0

    #@23c
    .local v5, "i":I
    :goto_5
    move/from16 v0, v19

    #@23e
    if-ge v5, v0, :cond_13

    #@240
    .line 1119
    move-object/from16 v0, p0

    #@242
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    #@244
    move-object/from16 v32, v0

    #@246
    move-object/from16 v0, v32

    #@248
    invoke-virtual {v0, v5}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->getByIndex(I)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    #@24b
    move-result-object v24

    #@24c
    .line 1120
    .local v24, "s":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    move-object/from16 v0, v24

    #@24e
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@250
    move-object/from16 v32, v0

    #@252
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    #@255
    move-result v27

    #@256
    .line 1121
    .local v27, "strLen":I
    move-object/from16 v0, p0

    #@258
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    #@25a
    move-object/from16 v32, v0

    #@25c
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->length()I

    #@25f
    move-result v26

    #@260
    .line 1122
    .local v26, "strIndex":I
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@262
    if-nez v32, :cond_10

    #@264
    move/from16 v0, v27

    #@266
    move/from16 v1, v23

    #@268
    if-lt v0, v1, :cond_f

    #@26a
    const/16 v32, 0x1

    #@26c
    :goto_6
    if-nez v32, :cond_10

    #@26e
    new-instance v32, Ljava/lang/AssertionError;

    #@270
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@273
    throw v32

    #@274
    :cond_f
    const/16 v32, 0x0

    #@276
    goto :goto_6

    #@277
    .line 1123
    :cond_10
    const/16 v32, 0x1

    #@279
    move/from16 v0, v27

    #@27b
    move/from16 v1, v32

    #@27d
    if-ne v0, v1, :cond_11

    #@27f
    .line 1127
    move-object/from16 v0, v24

    #@281
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@283
    move-object/from16 v32, v0

    #@285
    const/16 v33, 0x0

    #@287
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->charAt(I)C

    #@28a
    move-result v32

    #@28b
    move/from16 v0, v32

    #@28d
    move-object/from16 v1, v24

    #@28f
    iput v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStrTableIndex:I

    #@291
    .line 1136
    :goto_7
    move/from16 v23, v27

    #@293
    .line 1137
    move/from16 v22, v26

    #@295
    .line 1118
    add-int/lit8 v5, v5, 0x1

    #@297
    goto :goto_5

    #@298
    .line 1129
    :cond_11
    move/from16 v0, v27

    #@29a
    move/from16 v1, v23

    #@29c
    if-le v0, v1, :cond_12

    #@29e
    const/16 v32, 0x4

    #@2a0
    move/from16 v0, v23

    #@2a2
    move/from16 v1, v32

    #@2a4
    if-lt v0, v1, :cond_12

    #@2a6
    .line 1130
    move-object/from16 v0, p0

    #@2a8
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@2aa
    move-object/from16 v32, v0

    #@2ac
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2af
    move-result-object v33

    #@2b0
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b3
    .line 1131
    move-object/from16 v0, p0

    #@2b5
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@2b7
    move-object/from16 v32, v0

    #@2b9
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2bc
    move-result-object v33

    #@2bd
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c0
    .line 1133
    :cond_12
    move/from16 v0, v26

    #@2c2
    move-object/from16 v1, v24

    #@2c4
    iput v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStrTableIndex:I

    #@2c6
    .line 1134
    move-object/from16 v0, p0

    #@2c8
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    #@2ca
    move-object/from16 v32, v0

    #@2cc
    move-object/from16 v0, v24

    #@2ce
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    #@2d0
    move-object/from16 v33, v0

    #@2d2
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d5
    goto :goto_7

    #@2d6
    .line 1144
    .end local v24    # "s":Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
    .end local v26    # "strIndex":I
    .end local v27    # "strLen":I
    :cond_13
    const/16 v32, 0x4

    #@2d8
    move/from16 v0, v23

    #@2da
    move/from16 v1, v32

    #@2dc
    if-lt v0, v1, :cond_14

    #@2de
    .line 1145
    move-object/from16 v0, p0

    #@2e0
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@2e2
    move-object/from16 v32, v0

    #@2e4
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e7
    move-result-object v33

    #@2e8
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2eb
    .line 1146
    move-object/from16 v0, p0

    #@2ed
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@2ef
    move-object/from16 v32, v0

    #@2f1
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f4
    move-result-object v33

    #@2f5
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f8
    .line 1161
    :cond_14
    move-object/from16 v0, p0

    #@2fa
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    #@2fc
    move-object/from16 v32, v0

    #@2fe
    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@301
    move-result-object v10

    #@302
    .local v10, "keyCharStr$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@305
    move-result v32

    #@306
    if-eqz v32, :cond_15

    #@308
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30b
    move-result-object v9

    #@30c
    check-cast v9, Ljava/lang/String;

    #@30e
    .line 1162
    .local v9, "keyCharStr":Ljava/lang/String;
    const/16 v32, 0x0

    #@310
    move/from16 v0, v32

    #@312
    invoke-virtual {v9, v0}, Ljava/lang/String;->codePointAt(I)I

    #@315
    move-result v8

    #@316
    .line 1163
    .restart local v8    # "keyChar":I
    move-object/from16 v0, p0

    #@318
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSLTable:Ljava/util/Hashtable;

    #@31a
    move-object/from16 v32, v0

    #@31c
    const/high16 v33, 0x1000000

    #@31e
    move-object/from16 v0, p0

    #@320
    move-object/from16 v1, v32

    #@322
    move/from16 v2, v33

    #@324
    invoke-virtual {v0, v8, v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->addKeyEntry(ILjava/util/Hashtable;I)V

    #@327
    .line 1164
    move-object/from16 v0, p0

    #@329
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSATable:Ljava/util/Hashtable;

    #@32b
    move-object/from16 v32, v0

    #@32d
    const/high16 v33, 0x2000000

    #@32f
    move-object/from16 v0, p0

    #@331
    move-object/from16 v1, v32

    #@333
    move/from16 v2, v33

    #@335
    invoke-virtual {v0, v8, v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->addKeyEntry(ILjava/util/Hashtable;I)V

    #@338
    .line 1165
    move-object/from16 v0, p0

    #@33a
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMLTable:Ljava/util/Hashtable;

    #@33c
    move-object/from16 v32, v0

    #@33e
    const/high16 v33, 0x4000000

    #@340
    move-object/from16 v0, p0

    #@342
    move-object/from16 v1, v32

    #@344
    move/from16 v2, v33

    #@346
    invoke-virtual {v0, v8, v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->addKeyEntry(ILjava/util/Hashtable;I)V

    #@349
    .line 1166
    move-object/from16 v0, p0

    #@34b
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMATable:Ljava/util/Hashtable;

    #@34d
    move-object/from16 v32, v0

    #@34f
    const/high16 v33, 0x8000000

    #@351
    move-object/from16 v0, p0

    #@353
    move-object/from16 v1, v32

    #@355
    move/from16 v2, v33

    #@357
    invoke-virtual {v0, v8, v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->addKeyEntry(ILjava/util/Hashtable;I)V

    #@35a
    goto :goto_8

    #@35b
    .line 1175
    .end local v8    # "keyChar":I
    .end local v9    # "keyCharStr":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    #@35d
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@35f
    move-object/from16 v32, v0

    #@361
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    #@364
    move-result v16

    #@365
    .line 1176
    .local v16, "numKeys":I
    move/from16 v0, v16

    #@367
    new-array v0, v0, [I

    #@369
    move-object/from16 v32, v0

    #@36b
    move-object/from16 v0, v32

    #@36d
    move-object/from16 v1, p2

    #@36f
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@371
    .line 1177
    const/16 v20, 0x0

    #@373
    .line 1178
    .local v20, "previousKey":I
    const/4 v5, 0x0

    #@374
    :goto_9
    move/from16 v0, v16

    #@376
    if-ge v5, v0, :cond_1a

    #@378
    .line 1179
    move-object/from16 v0, p0

    #@37a
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    #@37c
    move-object/from16 v32, v0

    #@37e
    move-object/from16 v0, v32

    #@380
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@383
    move-result-object v32

    #@384
    check-cast v32, Ljava/lang/Integer;

    #@386
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    #@389
    move-result v7

    #@38a
    .line 1180
    .local v7, "key":I
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@38c
    if-nez v32, :cond_17

    #@38e
    const v32, 0xffffff

    #@391
    and-int v32, v32, v7

    #@393
    const v33, 0xffffff

    #@396
    and-int v33, v33, v20

    #@398
    move/from16 v0, v32

    #@39a
    move/from16 v1, v33

    #@39c
    if-lt v0, v1, :cond_16

    #@39e
    const/16 v32, 0x1

    #@3a0
    :goto_a
    if-nez v32, :cond_17

    #@3a2
    new-instance v32, Ljava/lang/AssertionError;

    #@3a4
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@3a7
    throw v32

    #@3a8
    :cond_16
    const/16 v32, 0x0

    #@3aa
    goto :goto_a

    #@3ab
    .line 1181
    :cond_17
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@3ad
    if-nez v32, :cond_19

    #@3af
    const/high16 v32, -0x1000000

    #@3b1
    and-int v32, v32, v7

    #@3b3
    if-eqz v32, :cond_18

    #@3b5
    const/16 v32, 0x1

    #@3b7
    :goto_b
    if-nez v32, :cond_19

    #@3b9
    new-instance v32, Ljava/lang/AssertionError;

    #@3bb
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@3be
    throw v32

    #@3bf
    :cond_18
    const/16 v32, 0x0

    #@3c1
    goto :goto_b

    #@3c2
    .line 1182
    :cond_19
    move-object/from16 v0, p2

    #@3c4
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@3c6
    move-object/from16 v32, v0

    #@3c8
    aput v7, v32, v5

    #@3ca
    .line 1183
    move/from16 v20, v7

    #@3cc
    .line 1178
    add-int/lit8 v5, v5, 0x1

    #@3ce
    goto :goto_9

    #@3cf
    .line 1187
    .end local v7    # "key":I
    :cond_1a
    move-object/from16 v0, p0

    #@3d1
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    #@3d3
    move-object/from16 v32, v0

    #@3d5
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    #@3d8
    move-result v17

    #@3d9
    .line 1188
    .local v17, "numValues":I
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@3db
    if-nez v32, :cond_1c

    #@3dd
    move/from16 v0, v16

    #@3df
    move/from16 v1, v17

    #@3e1
    if-ne v0, v1, :cond_1b

    #@3e3
    const/16 v32, 0x1

    #@3e5
    :goto_c
    if-nez v32, :cond_1c

    #@3e7
    new-instance v32, Ljava/lang/AssertionError;

    #@3e9
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@3ec
    throw v32

    #@3ed
    :cond_1b
    const/16 v32, 0x0

    #@3ef
    goto :goto_c

    #@3f0
    .line 1189
    :cond_1c
    move/from16 v0, v17

    #@3f2
    new-array v0, v0, [S

    #@3f4
    move-object/from16 v32, v0

    #@3f6
    move-object/from16 v0, v32

    #@3f8
    move-object/from16 v1, p2

    #@3fa
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    #@3fc
    .line 1190
    const/4 v5, 0x0

    #@3fd
    .line 1191
    move-object/from16 v0, p0

    #@3ff
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    #@401
    move-object/from16 v32, v0

    #@403
    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@406
    move-result-object v31

    #@407
    .local v31, "value$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    #@40a
    move-result v32

    #@40b
    if-eqz v32, :cond_1f

    #@40d
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@410
    move-result-object v32

    #@411
    check-cast v32, Ljava/lang/Integer;

    #@413
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    #@416
    move-result v30

    #@417
    .line 1192
    .local v30, "value":I
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@419
    if-nez v32, :cond_1e

    #@41b
    const v32, 0xffff

    #@41e
    move/from16 v0, v30

    #@420
    move/from16 v1, v32

    #@422
    if-ge v0, v1, :cond_1d

    #@424
    const/16 v32, 0x1

    #@426
    :goto_e
    if-nez v32, :cond_1e

    #@428
    new-instance v32, Ljava/lang/AssertionError;

    #@42a
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@42d
    throw v32

    #@42e
    :cond_1d
    const/16 v32, 0x0

    #@430
    goto :goto_e

    #@431
    .line 1193
    :cond_1e
    move-object/from16 v0, p2

    #@433
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    #@435
    move-object/from16 v32, v0

    #@437
    add-int/lit8 v6, v5, 0x1

    #@439
    .end local v5    # "i":I
    .local v6, "i":I
    move/from16 v0, v30

    #@43b
    int-to-short v0, v0

    #@43c
    move/from16 v33, v0

    #@43e
    aput-short v33, v32, v5

    #@440
    move v5, v6

    #@441
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_d

    #@442
    .line 1198
    .end local v30    # "value":I
    :cond_1f
    move-object/from16 v0, p0

    #@444
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    #@446
    move-object/from16 v32, v0

    #@448
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@44b
    move-result-object v32

    #@44c
    move-object/from16 v0, v32

    #@44e
    move-object/from16 v1, p2

    #@450
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@452
    .line 1208
    move-object/from16 v0, p0

    #@454
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@456
    move-object/from16 v32, v0

    #@458
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    #@45b
    move-result v12

    #@45c
    .line 1209
    .local v12, "lengthTableLength":I
    const/16 v21, 0x0

    #@45e
    .line 1214
    .local v21, "previousLength":I
    div-int/lit8 v28, v12, 0x2

    #@460
    .line 1215
    .local v28, "stringLengthsSize":I
    move/from16 v0, v28

    #@462
    new-array v0, v0, [Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@464
    move-object/from16 v32, v0

    #@466
    move-object/from16 v0, v32

    #@468
    move-object/from16 v1, p2

    #@46a
    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@46c
    .line 1216
    const/4 v5, 0x0

    #@46d
    :goto_f
    move/from16 v0, v28

    #@46f
    if-ge v5, v0, :cond_26

    #@471
    .line 1217
    move-object/from16 v0, p0

    #@473
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@475
    move-object/from16 v32, v0

    #@477
    mul-int/lit8 v33, v5, 0x2

    #@479
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47c
    move-result-object v32

    #@47d
    check-cast v32, Ljava/lang/Integer;

    #@47f
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    #@482
    move-result v18

    #@483
    .line 1218
    .local v18, "offset":I
    move-object/from16 v0, p0

    #@485
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    #@487
    move-object/from16 v32, v0

    #@489
    mul-int/lit8 v33, v5, 0x2

    #@48b
    add-int/lit8 v33, v33, 0x1

    #@48d
    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@490
    move-result-object v32

    #@491
    check-cast v32, Ljava/lang/Integer;

    #@493
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    #@496
    move-result v11

    #@497
    .line 1219
    .local v11, "length":I
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@499
    if-nez v32, :cond_21

    #@49b
    move-object/from16 v0, p2

    #@49d
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@49f
    move-object/from16 v32, v0

    #@4a1
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    #@4a4
    move-result v32

    #@4a5
    move/from16 v0, v18

    #@4a7
    move/from16 v1, v32

    #@4a9
    if-ge v0, v1, :cond_20

    #@4ab
    const/16 v32, 0x1

    #@4ad
    :goto_10
    if-nez v32, :cond_21

    #@4af
    new-instance v32, Ljava/lang/AssertionError;

    #@4b1
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@4b4
    throw v32

    #@4b5
    :cond_20
    const/16 v32, 0x0

    #@4b7
    goto :goto_10

    #@4b8
    .line 1220
    :cond_21
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@4ba
    if-nez v32, :cond_23

    #@4bc
    const/16 v32, 0x28

    #@4be
    move/from16 v0, v32

    #@4c0
    if-ge v11, v0, :cond_22

    #@4c2
    const/16 v32, 0x1

    #@4c4
    :goto_11
    if-nez v32, :cond_23

    #@4c6
    new-instance v32, Ljava/lang/AssertionError;

    #@4c8
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@4cb
    throw v32

    #@4cc
    :cond_22
    const/16 v32, 0x0

    #@4ce
    goto :goto_11

    #@4cf
    .line 1221
    :cond_23
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    #@4d1
    if-nez v32, :cond_25

    #@4d3
    move/from16 v0, v21

    #@4d5
    if-le v11, v0, :cond_24

    #@4d7
    const/16 v32, 0x1

    #@4d9
    :goto_12
    if-nez v32, :cond_25

    #@4db
    new-instance v32, Ljava/lang/AssertionError;

    #@4dd
    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    #@4e0
    throw v32

    #@4e1
    :cond_24
    const/16 v32, 0x0

    #@4e3
    goto :goto_12

    #@4e4
    .line 1222
    :cond_25
    move-object/from16 v0, p2

    #@4e6
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@4e8
    move-object/from16 v32, v0

    #@4ea
    new-instance v33, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@4ec
    invoke-direct/range {v33 .. v33}, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;-><init>()V

    #@4ef
    aput-object v33, v32, v5

    #@4f1
    .line 1223
    move-object/from16 v0, p2

    #@4f3
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@4f5
    move-object/from16 v32, v0

    #@4f7
    aget-object v32, v32, v5

    #@4f9
    move/from16 v0, v18

    #@4fb
    move-object/from16 v1, v32

    #@4fd
    iput v0, v1, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fLastString:I

    #@4ff
    .line 1224
    move-object/from16 v0, p2

    #@501
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@503
    move-object/from16 v32, v0

    #@505
    aget-object v32, v32, v5

    #@507
    move-object/from16 v0, v32

    #@509
    iput v11, v0, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fStrLength:I

    #@50b
    .line 1225
    move/from16 v21, v11

    #@50d
    .line 1216
    add-int/lit8 v5, v5, 0x1

    #@50f
    goto/16 :goto_f

    #@511
    .line 1016
    .end local v11    # "length":I
    .end local v18    # "offset":I
    :cond_26
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
    .line 1310
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
    .line 1311
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
    .line 1312
    .local v5, "value":I
    invoke-static {v2}, Landroid/icu/text/SpoofChecker;->getKeyLength(I)I

    #@1d
    move-result v4

    #@1e
    .line 1314
    .local v4, "length":I
    packed-switch v4, :pswitch_data_0

    #@21
    .line 1334
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
    .line 1316
    :pswitch_0
    new-array v0, v7, [C

    #@2d
    int-to-char v6, v5

    #@2e
    aput-char v6, v0, v8

    #@30
    .line 1317
    .local v0, "cs":[C
    new-instance v6, Ljava/lang/String;

    #@32
    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    #@35
    return-object v6

    #@36
    .line 1320
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
    .line 1322
    :pswitch_2
    const/4 v4, 0x0

    #@42
    .line 1324
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
    .line 1325
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
    .line 1326
    .local v3, "lastIndexWithLen":I
    if-gt v5, v3, :cond_1

    #@59
    .line 1327
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
    .line 1331
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
    .line 1324
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
    .line 1331
    goto :goto_1

    #@7c
    .line 1332
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
    .line 1336
    .end local v1    # "i":I
    :cond_4
    const-string/jumbo v6, ""

    #@88
    return-object v6

    #@89
    .line 1314
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
