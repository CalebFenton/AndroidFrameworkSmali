.class Ljava/util/stream/StreamOpFlag$MaskBuilder;
.super Ljava/lang/Object;
.source "StreamOpFlag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamOpFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskBuilder"
.end annotation


# instance fields
.field final greylist-max-o map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 404
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Ljava/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    .line 406
    return-void
.end method


# virtual methods
.method greylist-max-o build()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 426
    invoke-static {}, Ljava/util/stream/StreamOpFlag$Type;->values()[Ljava/util/stream/StreamOpFlag$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_17

    aget-object v4, v0, v3

    .line 427
    .local v4, "t":Ljava/util/stream/StreamOpFlag$Type;
    iget-object v5, p0, Ljava/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .end local v4    # "t":Ljava/util/stream/StreamOpFlag$Type;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 429
    :cond_17
    iget-object v0, p0, Ljava/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    return-object v0
.end method

.method greylist-max-o clear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;
    .registers 3
    .param p1, "t"    # Ljava/util/stream/StreamOpFlag$Type;

    .line 418
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->mask(Ljava/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o mask(Ljava/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljava/util/stream/StreamOpFlag$MaskBuilder;
    .registers 4
    .param p1, "t"    # Ljava/util/stream/StreamOpFlag$Type;
    .param p2, "i"    # Ljava/lang/Integer;

    .line 409
    iget-object v0, p0, Ljava/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    return-object p0
.end method

.method greylist-max-o set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;
    .registers 3
    .param p1, "t"    # Ljava/util/stream/StreamOpFlag$Type;

    .line 414
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->mask(Ljava/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o setAndClear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;
    .registers 3
    .param p1, "t"    # Ljava/util/stream/StreamOpFlag$Type;

    .line 422
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->mask(Ljava/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method
