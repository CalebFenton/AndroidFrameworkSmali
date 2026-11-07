.class public Lorg/apache/xml/utils/NSInfo;
.super Ljava/lang/Object;
.source "NSInfo.java"


# static fields
.field public static final greylist ANCESTORHASXMLNS:I = 0x1

.field public static final greylist ANCESTORNOXMLNS:I = 0x2

.field public static final greylist ANCESTORXMLNSUNPROCESSED:I


# instance fields
.field public greylist m_ancestorHasXMLNSAttrs:I

.field public greylist m_hasProcessedNS:Z

.field public greylist m_hasXMLNSAttrs:Z

.field public greylist m_namespace:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Z)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    .line 85
    iput-boolean p2, p0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    .line 86
    iput-object p1, p0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    return-void
.end method

.method public constructor greylist <init>(ZZ)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    .line 45
    iput-boolean p2, p0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    return-void
.end method

.method public constructor greylist <init>(ZZI)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    .line 68
    iput-boolean p2, p0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    .line 69
    iput p3, p0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    return-void
.end method
