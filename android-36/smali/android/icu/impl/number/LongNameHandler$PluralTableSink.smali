.class final Landroid/icu/impl/number/LongNameHandler$PluralTableSink;
.super Landroid/icu/impl/UResource$Sink;
.source "LongNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/LongNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralTableSink"
.end annotation


# instance fields
.field blacklist outArray:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "outArray"    # [Ljava/lang/String;

    .line 310
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 311
    iput-object p1, p0, Landroid/icu/impl/number/LongNameHandler$PluralTableSink;->outArray:[Ljava/lang/String;

    .line 312
    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 10
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 316
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 317
    .local v0, "pluralsTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 318
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "keyString":Ljava/lang/String;
    const-string v3, "case"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 321
    goto :goto_2b

    .line 324
    :cond_18
    invoke-static {v2}, Landroid/icu/impl/number/LongNameHandler;->-$$Nest$smgetIndex(Ljava/lang/String;)I

    move-result v3

    .line 325
    .local v3, "index":I
    iget-object v4, p0, Landroid/icu/impl/number/LongNameHandler$PluralTableSink;->outArray:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_23

    .line 326
    goto :goto_2b

    .line 329
    :cond_23
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "formatString":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/impl/number/LongNameHandler$PluralTableSink;->outArray:[Ljava/lang/String;

    aput-object v4, v5, v3

    .line 317
    .end local v2    # "keyString":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "formatString":Ljava/lang/String;
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 332
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method
