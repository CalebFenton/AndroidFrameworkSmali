.class final Ljava/util/stream/Collectors$Partition;
.super Ljava/util/AbstractMap;
.source "Collectors.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Partition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "Ljava/lang/Boolean;",
        "TT;>;",
        "Ljava/util/Map<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o forFalse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final greylist-max-o forTrue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 2028
    .local p0, "this":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TT;>;"
    .local p1, "forTrue":Ljava/lang/Object;, "TT;"
    .local p2, "forFalse":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2029
    iput-object p1, p0, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    .line 2030
    iput-object p2, p0, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    .line 2031
    return-void
.end method


# virtual methods
.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 2054
    .local p0, "this":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TT;>;"
    instance-of v0, p1, Ljava/lang/Boolean;

    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 2059
    .local p0, "this":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Boolean;",
            "TT;>;>;"
        }
    .end annotation

    .line 2064
    .local p0, "this":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$Partition$1;

    invoke-direct {v0, p0}, Ljava/util/stream/Collectors$Partition$1;-><init>(Ljava/util/stream/Collectors$Partition;)V

    return-object v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 2045
    .local p0, "this":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TT;>;"
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    .line 2046
    .local v0, "b":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    goto :goto_12

    :cond_10
    iget-object v1, p0, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    :goto_12
    return-object v1

    .line 2048
    .end local v0    # "b":Ljava/lang/Boolean;
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 2040
    .local p0, "this":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 2035
    .local p0, "this":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TT;>;"
    const/4 v0, 0x2

    return v0
.end method
