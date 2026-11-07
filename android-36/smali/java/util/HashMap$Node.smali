.class Ljava/util/HashMap$Node;
.super Ljava/lang/Object;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o hash:I

.field final greylist-max-r key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field greylist-max-r next:Ljava/util/HashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-r value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V
    .registers 5
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 286
    .local p0, "this":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput p1, p0, Ljava/util/HashMap$Node;->hash:I

    .line 288
    iput-object p2, p0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .line 289
    iput-object p3, p0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 290
    iput-object p4, p0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 291
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 308
    .local p0, "this":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 309
    return v0

    .line 313
    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_24

    .line 311
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .line 312
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 313
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_25

    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_24
    const/4 v0, 0x0

    .line 311
    :goto_25
    return v0
.end method

.method public final whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 293
    .local p0, "this":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 294
    .local p0, "this":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 298
    .local p0, "this":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 302
    .local p0, "this":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 303
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 304
    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 295
    .local p0, "this":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
