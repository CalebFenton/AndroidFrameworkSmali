.class public Lorg/apache/xml/dtm/ref/DTMNodeIterator;
.super Ljava/lang/Object;
.source "DTMNodeIterator.java"

# interfaces
.implements Lorg/w3c/dom/traversal/NodeIterator;


# instance fields
.field private dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

.field private valid:Z


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 2
    .param p1, "dtmIterator"    # Lorg/apache/xml/dtm/DTMIterator;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    const/4 v1, 0x1

    #@4
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    #@6
    .line 74
    :try_start_0
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;

    #@c
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 70
    return-void

    #@f
    .line 77
    :catch_0
    move-exception v0

    #@10
    .line 78
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@12
    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@15
    throw v1
.end method


# virtual methods
.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    #@3
    .line 98
    return-void
.end method

.method public getDTMIterator()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2
    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    #@0
    .prologue
    .line 113
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .locals 2

    #@0
    .prologue
    .line 130
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@7
    throw v0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .locals 2

    #@0
    .prologue
    .line 139
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    #@5
    move-result v0

    #@6
    .line 140
    .local v0, "handle":I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@8
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public getWhatToShow()I
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@2
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getWhatToShow()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 161
    new-instance v1, Lorg/apache/xml/dtm/DTMDOMException;

    #@6
    const/16 v2, 0xb

    #@8
    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@b
    throw v1

    #@c
    .line 163
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@e
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@11
    move-result v0

    #@12
    .line 164
    .local v0, "handle":I
    const/4 v1, -0x1

    #@13
    if-ne v0, v1, :cond_1

    #@15
    .line 165
    const/4 v1, 0x0

    #@16
    return-object v1

    #@17
    .line 166
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@19
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@1c
    move-result-object v1

    #@1d
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .locals 3

    #@0
    .prologue
    .line 178
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 179
    new-instance v1, Lorg/apache/xml/dtm/DTMDOMException;

    #@6
    const/16 v2, 0xb

    #@8
    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    #@b
    throw v1

    #@c
    .line 181
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@e
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->previousNode()I

    #@11
    move-result v0

    #@12
    .line 182
    .local v0, "handle":I
    const/4 v1, -0x1

    #@13
    if-ne v0, v1, :cond_1

    #@15
    .line 183
    const/4 v1, 0x0

    #@16
    return-object v1

    #@17
    .line 184
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@19
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@1c
    move-result-object v1

    #@1d
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method
