.class public Lorg/apache/xml/dtm/ref/DTMNodeIterator;
.super Ljava/lang/Object;
.source "DTMNodeIterator.java"

# interfaces
.implements Lorg/w3c/dom/traversal/NodeIterator;


# instance fields
.field private greylist dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

.field private greylist valid:Z


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    .line 74
    :try_start_6
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/dtm/DTMIterator;

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;
    :try_end_e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 78
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method


# virtual methods
.method public greylist detach()V
    .registers 2

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    return-void
.end method

.method public greylist getDTMIterator()Lorg/apache/xml/dtm/DTMIterator;
    .registers 1

    .line 87
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    return-object p0
.end method

.method public greylist getExpandEntityReferences()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .registers 2

    .line 130
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public greylist getRoot()Lorg/w3c/dom/Node;
    .registers 2

    .line 139
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    move-result v0

    .line 140
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public greylist getWhatToShow()I
    .registers 1

    .line 149
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->getWhatToShow()I

    move-result p0

    return p0
.end method

.method public greylist nextNode()Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 160
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    if-eqz v0, :cond_1a

    .line 163
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    .line 161
    :cond_1a
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public greylist previousNode()Lorg/w3c/dom/Node;
    .registers 3

    .line 178
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    if-eqz v0, :cond_1a

    .line 181
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->previousNode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    .line 179
    :cond_1a
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method
