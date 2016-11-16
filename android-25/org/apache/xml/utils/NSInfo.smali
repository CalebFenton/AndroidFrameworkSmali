.class public Lorg/apache/xml/utils/NSInfo;
.super Ljava/lang/Object;
.source "NSInfo.java"


# static fields
.field public static final ANCESTORHASXMLNS:I = 0x1

.field public static final ANCESTORNOXMLNS:I = 0x2

.field public static final ANCESTORXMLNSUNPROCESSED:I


# instance fields
.field public m_ancestorHasXMLNSAttrs:I

.field public m_hasProcessedNS:Z

.field public m_hasXMLNSAttrs:Z

.field public m_namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "hasXMLNSAttrs"    # Z

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    #@6
    .line 85
    iput-boolean p2, p0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    #@8
    .line 86
    iput-object p1, p0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    #@a
    .line 87
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    #@d
    .line 81
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "hasProcessedNS"    # Z
    .param p2, "hasXMLNSAttrs"    # Z

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-boolean p1, p0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    #@5
    .line 45
    iput-boolean p2, p0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    #@7
    .line 46
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    #@a
    .line 47
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    #@d
    .line 41
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 1
    .param p1, "hasProcessedNS"    # Z
    .param p2, "hasXMLNSAttrs"    # Z
    .param p3, "ancestorHasXMLNSAttrs"    # I

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-boolean p1, p0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    #@5
    .line 68
    iput-boolean p2, p0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    #@7
    .line 69
    iput p3, p0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    #@9
    .line 70
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    #@c
    .line 64
    return-void
.end method
