.class public final Lorg/apache/xpath/objects/DTMXRTreeFrag;
.super Ljava/lang/Object;
.source "DTMXRTreeFrag.java"


# instance fields
.field private m_dtm:Lorg/apache/xml/dtm/DTM;

.field private m_dtmIdentity:I

.field private m_xctxt:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor <init>(ILorg/apache/xpath/XPathContext;)V
    .locals 1
    .param p1, "dtmIdentity"    # I
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    #@6
    .line 36
    iput-object p2, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_xctxt:Lorg/apache/xpath/XPathContext;

    #@8
    .line 37
    iput p1, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    #@a
    .line 38
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@10
    .line 35
    return-void
.end method


# virtual methods
.method public final destruct()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 42
    iput-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@3
    .line 43
    iput-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_xctxt:Lorg/apache/xpath/XPathContext;

    #@5
    .line 41
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 52
    instance-of v1, p1, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 53
    iget v1, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    #@7
    check-cast p1, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@9
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTMIdentity()I

    #@c
    move-result v2

    #@d
    if-ne v1, v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0

    #@11
    .line 55
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method final getDTM()Lorg/apache/xml/dtm/DTM;
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    return-object v0
.end method

.method public final getDTMIdentity()I
    .locals 1

    #@0
    .prologue
    .line 47
    iget v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    #@2
    return v0
.end method

.method final getXPathContext()Lorg/apache/xpath/XPathContext;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_xctxt:Lorg/apache/xpath/XPathContext;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 50
    iget v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    #@2
    return v0
.end method
