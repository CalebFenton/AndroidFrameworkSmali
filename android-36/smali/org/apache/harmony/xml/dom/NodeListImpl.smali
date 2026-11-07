.class public Lorg/apache/harmony/xml/dom/NodeListImpl;
.super Ljava/lang/Object;
.source "NodeListImpl.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private blacklist children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    .line 40
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/xml/dom/NodeImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method blacklist add(Lorg/apache/harmony/xml/dom/NodeImpl;)V
    .registers 3
    .param p1, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 51
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 3
    .param p1, "index"    # I

    .line 55
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method
