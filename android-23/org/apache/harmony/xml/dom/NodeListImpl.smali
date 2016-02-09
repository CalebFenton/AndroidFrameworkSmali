.class public Lorg/apache/harmony/xml/dom/NodeListImpl;
.super Ljava/lang/Object;
.source "NodeListImpl.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    #@a
    .line 38
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/xml/dom/NodeImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    #@5
    .line 42
    return-void
.end method


# virtual methods
.method add(Lorg/apache/harmony/xml/dom/NodeImpl;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 46
    return-void
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_0

    #@8
    .line 56
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 58
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    #@c
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/w3c/dom/Node;

    #@12
    return-object v0
.end method
