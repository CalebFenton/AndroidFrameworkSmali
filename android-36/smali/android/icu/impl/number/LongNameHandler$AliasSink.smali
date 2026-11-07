.class final Landroid/icu/impl/number/LongNameHandler$AliasSink;
.super Landroid/icu/impl/UResource$Sink;
.source "LongNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/LongNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AliasSink"
.end annotation


# instance fields
.field blacklist replacement:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 335
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/number/LongNameHandler-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/number/LongNameHandler$AliasSink;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 8
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 340
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 341
    .local v0, "aliasTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 342
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "keyString":Ljava/lang/String;
    const-string v3, "replacement"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 344
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/number/LongNameHandler$AliasSink;->replacement:Ljava/lang/String;

    .line 341
    .end local v2    # "keyString":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 347
    .end local v1    # "i":I
    :cond_20
    return-void
.end method
