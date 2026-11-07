.class final Landroid/icu/util/MeasureUnit$CurrencyNumericCodeSink;
.super Landroid/icu/impl/UResource$Sink;
.source "MeasureUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrencyNumericCodeSink"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 746
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/MeasureUnit-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/MeasureUnit$CurrencyNumericCodeSink;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 8
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 749
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 750
    .local v0, "codesTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 751
    const-string v2, "currency"

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 753
    .end local v1    # "i1":I
    :cond_17
    return-void
.end method
