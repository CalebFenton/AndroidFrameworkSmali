.class final Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "NumberRangeFormatterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberRangeFormatterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NumberRangeDataSink"
.end annotation


# instance fields
.field blacklist rangePattern:Ljava/lang/String;

.field blacklist sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor blacklist <init>(Ljava/lang/StringBuilder;)V
    .registers 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->sb:Ljava/lang/StringBuilder;

    .line 68
    return-void
.end method

.method private blacklist hasRangeData()Z
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->rangePattern:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public blacklist fillInDefaults()V
    .registers 4

    .line 104
    invoke-direct {p0}, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->hasRangeData()Z

    move-result v0

    if-nez v0, :cond_11

    .line 105
    const-string v0, "{0}\u2013{1}"

    iget-object v1, p0, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v2}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->rangePattern:Ljava/lang/String;

    .line 112
    :cond_11
    return-void
.end method

.method public blacklist isComplete()Z
    .registers 2

    .line 100
    invoke-direct {p0}, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->hasRangeData()Z

    move-result v0

    return v0
.end method

.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 9
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 72
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 73
    .local v0, "miscTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 74
    const-string v2, "range"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-direct {p0}, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->hasRangeData()Z

    move-result v2

    if-nez v2, :cond_26

    .line 75
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "pattern":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->sb:Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v4}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->rangePattern:Ljava/lang/String;

    .line 73
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 86
    .end local v1    # "i":I
    :cond_29
    return-void
.end method
