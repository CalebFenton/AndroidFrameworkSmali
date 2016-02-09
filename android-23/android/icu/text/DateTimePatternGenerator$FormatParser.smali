.class public Landroid/icu/text/DateTimePatternGenerator$FormatParser;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatParser"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final QUOTING_CHARS:Landroid/icu/text/UnicodeSet;

.field private static final SYNTAX_CHARS:Landroid/icu/text/UnicodeSet;


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient tokenizer:Landroid/icu/impl/PatternTokenizer;


# direct methods
.method static synthetic -get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1232
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    const-string/jumbo v1, "[a-zA-Z]"

    #@5
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->SYNTAX_CHARS:Landroid/icu/text/UnicodeSet;

    #@e
    .line 1233
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@10
    const-string/jumbo v1, "[[[:script=Latn:][:script=Cyrl:]]&[[:L:][:M:]]]"

    #@13
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->QUOTING_CHARS:Landroid/icu/text/UnicodeSet;

    #@1c
    .line 1231
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1234
    new-instance v0, Landroid/icu/impl/PatternTokenizer;

    #@5
    invoke-direct {v0}, Landroid/icu/impl/PatternTokenizer;-><init>()V

    #@8
    .line 1235
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->SYNTAX_CHARS:Landroid/icu/text/UnicodeSet;

    #@a
    .line 1234
    invoke-virtual {v0, v1}, Landroid/icu/impl/PatternTokenizer;->setSyntaxCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;

    #@d
    move-result-object v0

    #@e
    .line 1236
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->QUOTING_CHARS:Landroid/icu/text/UnicodeSet;

    #@10
    .line 1234
    invoke-virtual {v0, v1}, Landroid/icu/impl/PatternTokenizer;->setExtraQuotingCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;

    #@13
    move-result-object v0

    #@14
    .line 1237
    const/4 v1, 0x1

    #@15
    .line 1234
    invoke-virtual {v0, v1}, Landroid/icu/impl/PatternTokenizer;->setUsingQuote(Z)Landroid/icu/impl/PatternTokenizer;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    #@1b
    .line 1238
    new-instance v0, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@20
    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    #@22
    .line 1246
    return-void
.end method

.method private addVariable(Ljava/lang/StringBuffer;Z)V
    .locals 4
    .param p1, "variable"    # Ljava/lang/StringBuffer;
    .param p2, "strict"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1295
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1296
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    #@9
    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    #@b
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v1, v2, p2}, Landroid/icu/text/DateTimePatternGenerator$VariableField;-><init>(Ljava/lang/String;Z)V

    #@12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    .line 1297
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    #@18
    .line 1294
    :cond_0
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1351
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public hasDateAndTimeFields()Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1395
    const/4 v0, 0x0

    #@2
    .line 1396
    .local v0, "foundMask":I
    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    #@4
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v4

    #@8
    .local v4, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_1

    #@e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    .line 1397
    .local v3, "item":Ljava/lang/Object;
    instance-of v7, v3, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    #@14
    if-eqz v7, :cond_0

    #@16
    .line 1398
    check-cast v3, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    #@18
    .end local v3    # "item":Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    #@1b
    move-result v5

    #@1c
    .line 1399
    .local v5, "type":I
    const/4 v7, 0x1

    #@1d
    shl-int/2addr v7, v5

    #@1e
    or-int/2addr v0, v7

    #@1f
    goto :goto_0

    #@20
    .line 1402
    .end local v5    # "type":I
    :cond_1
    and-int/lit16 v7, v0, 0x3ff

    #@22
    if-eqz v7, :cond_2

    #@24
    const/4 v1, 0x1

    #@25
    .line 1403
    .local v1, "isDate":Z
    :goto_1
    const v7, 0xfc00

    #@28
    and-int/2addr v7, v0

    #@29
    if-eqz v7, :cond_3

    #@2b
    const/4 v2, 0x1

    #@2c
    .line 1404
    .local v2, "isTime":Z
    :goto_2
    if-eqz v1, :cond_4

    #@2e
    .end local v2    # "isTime":Z
    :goto_3
    return v2

    #@2f
    .line 1402
    .end local v1    # "isDate":Z
    :cond_2
    const/4 v1, 0x0

    #@30
    .restart local v1    # "isDate":Z
    goto :goto_1

    #@31
    .line 1403
    :cond_3
    const/4 v2, 0x0

    #@32
    .restart local v2    # "isTime":Z
    goto :goto_2

    #@33
    :cond_4
    move v2, v6

    #@34
    .line 1404
    goto :goto_3
.end method

.method public quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1507
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1258
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;Z)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public set(Ljava/lang/String;Z)Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .locals 6
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1271
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@6
    .line 1272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    return-object p0

    #@d
    .line 1273
    :cond_0
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    #@f
    invoke-virtual {v3, p1}, Landroid/icu/impl/PatternTokenizer;->setPattern(Ljava/lang/String;)Landroid/icu/impl/PatternTokenizer;

    #@12
    .line 1274
    new-instance v0, Ljava/lang/StringBuffer;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@17
    .line 1275
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@1c
    .line 1277
    .local v2, "variable":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    #@1f
    .line 1278
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    #@21
    invoke-virtual {v3, v0}, Landroid/icu/impl/PatternTokenizer;->next(Ljava/lang/StringBuffer;)I

    #@24
    move-result v1

    #@25
    .line 1279
    .local v1, "status":I
    if-nez v1, :cond_1

    #@27
    .line 1290
    invoke-direct {p0, v2, v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    #@2a
    .line 1291
    return-object p0

    #@2b
    .line 1280
    :cond_1
    const/4 v3, 0x1

    #@2c
    if-ne v1, v3, :cond_3

    #@2e
    .line 1281
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_2

    #@34
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    #@37
    move-result v3

    #@38
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    #@3b
    move-result v4

    #@3c
    if-eq v3, v4, :cond_2

    #@3e
    .line 1282
    invoke-direct {p0, v2, v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    #@41
    .line 1284
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@44
    goto :goto_0

    #@45
    .line 1286
    :cond_3
    invoke-direct {p0, v2, v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    #@48
    .line 1287
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@51
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1361
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {p0, v1, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->toString(II)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public toString(II)Ljava/lang/String;
    .locals 5
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1374
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1375
    .local v3, "result":Ljava/lang/StringBuilder;
    move v0, p1

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@8
    .line 1376
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    #@a
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    .line 1377
    .local v1, "item":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    #@10
    if-eqz v4, :cond_0

    #@12
    move-object v2, v1

    #@13
    .line 1378
    check-cast v2, Ljava/lang/String;

    #@15
    .line 1379
    .local v2, "itemString":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    #@17
    invoke-virtual {v4, v2}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 1375
    .end local v2    # "itemString":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1381
    :cond_0
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    #@23
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    goto :goto_1

    #@2f
    .line 1384
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    return-object v4
.end method
