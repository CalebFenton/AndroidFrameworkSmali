.class public Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;
.super Lorg/apache/xpath/objects/XRTreeFrag;
.source "XRTreeFragSelectWrapper.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final whitelist serialVersionUID:J = -0x5a91a43a5bb8e343L


# direct methods
.method public constructor greylist <init>(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XRTreeFrag;-><init>(Lorg/apache/xpath/Expression;)V

    return-void
.end method


# virtual methods
.method public greylist asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;
    .registers 3

    .line 151
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist detach()V
    .registers 3

    .line 88
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_DETACH_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p1

    .line 70
    iget-boolean p0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    .line 71
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_15

    return-object p1

    .line 74
    :cond_15
    new-instance p0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 53
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast p0, Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public greylist getType()I
    .registers 1

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public greylist num()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 100
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_NUM_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist rtf()I
    .registers 3

    .line 141
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist str()Ljava/lang/String;
    .registers 3

    .line 121
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_STR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist xstr()Lorg/apache/xml/utils/XMLString;
    .registers 3

    .line 111
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_XSTR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
