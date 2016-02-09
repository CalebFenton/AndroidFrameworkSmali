.class Ljava/util/Collections$SingletonMap$1;
.super Ljava/util/AbstractSet;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$SingletonMap;->entrySet()Ljava/util/Set;
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
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/Collections$SingletonMap;


# direct methods
.method constructor <init>(Ljava/util/Collections$SingletonMap;)V
    .locals 0

    #@0
    .prologue
    .line 323
    .local p1, "this$1":Ljava/util/Collections$SingletonMap;, "Ljava/util/Collections$SingletonMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/Collections$SingletonMap$1;->this$1:Ljava/util/Collections$SingletonMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 325
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 326
    check-cast v0, Ljava/util/Map$Entry;

    #@8
    .line 327
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/Collections$SingletonMap$1;->this$1:Ljava/util/Collections$SingletonMap;

    #@a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Ljava/util/Collections$SingletonMap;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 328
    iget-object v1, p0, Ljava/util/Collections$SingletonMap$1;->this$1:Ljava/util/Collections$SingletonMap;

    #@16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/util/Collections$SingletonMap;->containsValue(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    .line 327
    :cond_0
    return v1

    #@1f
    .line 330
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 338
    new-instance v0, Ljava/util/Collections$SingletonMap$1$1;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonMap$1$1;-><init>(Ljava/util/Collections$SingletonMap$1;)V

    #@5
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 334
    const/4 v0, 0x1

    #@1
    return v0
.end method
