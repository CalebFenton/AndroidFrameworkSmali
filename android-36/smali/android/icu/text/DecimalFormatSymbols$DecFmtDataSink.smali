.class final Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DecimalFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecFmtDataSink"
.end annotation


# instance fields
.field private greylist-max-o numberElements:[Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "numberElements"    # [Ljava/lang/String;

    .line 1312
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 1313
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;->numberElements:[Ljava/lang/String;

    .line 1314
    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 9
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 1318
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 1319
    .local v0, "symbolsTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1320
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-static {}, Landroid/icu/text/DecimalFormatSymbols;->-$$Nest$sfgetSYMBOL_KEYS()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_31

    .line 1321
    invoke-static {}, Landroid/icu/text/DecimalFormatSymbols;->-$$Nest$sfgetSYMBOL_KEYS()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1322
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;->numberElements:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_31

    .line 1323
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;->numberElements:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_31

    .line 1320
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1319
    .end local v2    # "i":I
    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1329
    .end local v1    # "j":I
    :cond_34
    return-void
.end method
