.class Ljava/util/stream/Collectors$Partition$1;
.super Ljava/util/AbstractSet;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Collectors$Partition;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Boolean;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/stream/Collectors$Partition;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Collectors$Partition;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/stream/Collectors$Partition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2064
    .local p0, "this":Ljava/util/stream/Collectors$Partition$1;, "Ljava/util/stream/Collectors$Partition$1;"
    iput-object p1, p0, Ljava/util/stream/Collectors$Partition$1;->this$0:Ljava/util/stream/Collectors$Partition;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Boolean;",
            "TT;>;>;"
        }
    .end annotation

    .line 2067
    .local p0, "this":Ljava/util/stream/Collectors$Partition$1;, "Ljava/util/stream/Collectors$Partition$1;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/Collectors$Partition$1;->this$0:Ljava/util/stream/Collectors$Partition;

    iget-object v2, v2, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2068
    .local v0, "falseEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Boolean;TT;>;"
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Ljava/util/stream/Collectors$Partition$1;->this$0:Ljava/util/stream/Collectors$Partition;

    iget-object v3, v3, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2069
    .local v1, "trueEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Boolean;TT;>;"
    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 2074
    .local p0, "this":Ljava/util/stream/Collectors$Partition$1;, "Ljava/util/stream/Collectors$Partition$1;"
    const/4 v0, 0x2

    return v0
.end method
