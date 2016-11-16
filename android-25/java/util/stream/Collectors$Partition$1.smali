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
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/Collectors$Partition;


# direct methods
.method constructor <init>(Ljava/util/stream/Collectors$Partition;)V
    .locals 0

    #@0
    .prologue
    .line 1553
    .local p1, "this$1":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TT;>;"
    iput-object p1, p0, Ljava/util/stream/Collectors$Partition$1;->this$1:Ljava/util/stream/Collectors$Partition;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Boolean;",
            "TT;>;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1556
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v2

    #@8
    iget-object v3, p0, Ljava/util/stream/Collectors$Partition$1;->this$1:Ljava/util/stream/Collectors$Partition;

    #@a
    iget-object v3, v3, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    #@c
    invoke-direct {v0, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@f
    .line 1557
    .local v0, "falseEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Boolean;TT;>;"
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@11
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@14
    move-result-object v2

    #@15
    iget-object v3, p0, Ljava/util/stream/Collectors$Partition$1;->this$1:Ljava/util/stream/Collectors$Partition;

    #@17
    iget-object v3, v3, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    #@19
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1c
    .line 1558
    .local v1, "trueEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Boolean;TT;>;"
    const/4 v2, 0x2

    #@1d
    new-array v2, v2, [Ljava/util/Map$Entry;

    #@1f
    aput-object v0, v2, v4

    #@21
    aput-object v1, v2, v5

    #@23
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@26
    move-result-object v2

    #@27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v2

    #@2b
    return-object v2
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1563
    const/4 v0, 0x2

    #@1
    return v0
.end method
