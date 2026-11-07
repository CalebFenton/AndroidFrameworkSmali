.class public final Lorg/apache/xpath/objects/DTMXRTreeFrag;
.super Ljava/lang/Object;
.source "DTMXRTreeFrag.java"


# instance fields
.field private greylist m_dtm:Lorg/apache/xml/dtm/DTM;

.field private greylist m_dtmIdentity:I

.field private greylist m_xctxt:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor greylist <init>(ILorg/apache/xpath/XPathContext;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_xctxt:Lorg/apache/xpath/XPathContext;

    .line 37
    iput p1, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    .line 38
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtm:Lorg/apache/xml/dtm/DTM;

    return-void
.end method


# virtual methods
.method public final greylist destruct()V
    .registers 2

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 43
    iput-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_xctxt:Lorg/apache/xpath/XPathContext;

    return-void
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 52
    instance-of v0, p1, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 53
    iget p0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    check-cast p1, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTMIdentity()I

    move-result p1

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return v1
.end method

.method final greylist getDTM()Lorg/apache/xml/dtm/DTM;
    .registers 1

    .line 46
    iget-object p0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtm:Lorg/apache/xml/dtm/DTM;

    return-object p0
.end method

.method public final greylist getDTMIdentity()I
    .registers 1

    .line 47
    iget p0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    return p0
.end method

.method final greylist getXPathContext()Lorg/apache/xpath/XPathContext;
    .registers 1

    .line 48
    iget-object p0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_xctxt:Lorg/apache/xpath/XPathContext;

    return-object p0
.end method

.method public final whitelist test-api hashCode()I
    .registers 1

    .line 50
    iget p0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    return p0
.end method
