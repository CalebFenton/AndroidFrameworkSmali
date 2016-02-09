.class Ljava/util/prefs/NodeSet;
.super Ljava/lang/Object;
.source "NodeSet.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 12
    .local p1, "nodes":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/w3c/dom/Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/prefs/NodeSet;->list:Ljava/util/ArrayList;

    #@a
    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 14
    iget-object v1, p0, Ljava/util/prefs/NodeSet;->list:Ljava/util/ArrayList;

    #@12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lorg/w3c/dom/Node;

    #@18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    goto :goto_0

    #@1c
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 19
    iget-object v0, p0, Ljava/util/prefs/NodeSet;->list:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 23
    const/4 v1, 0x0

    #@1
    .line 25
    .local v1, "result":Lorg/w3c/dom/Node;
    :try_start_0
    iget-object v2, p0, Ljava/util/prefs/NodeSet;->list:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    .end local v1    # "result":Lorg/w3c/dom/Node;
    check-cast v1, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 31
    .local v1, "result":Lorg/w3c/dom/Node;
    return-object v1

    #@a
    .line 26
    .end local v1    # "result":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v0

    #@b
    .line 28
    .local v0, "ioobe":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    #@c
    return-object v2
.end method
