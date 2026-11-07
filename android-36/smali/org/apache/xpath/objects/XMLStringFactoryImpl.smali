.class public Lorg/apache/xpath/objects/XMLStringFactoryImpl;
.super Lorg/apache/xml/utils/XMLStringFactory;
.source "XMLStringFactoryImpl.java"


# static fields
.field private static greylist m_xstringfactory:Lorg/apache/xml/utils/XMLStringFactory;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lorg/apache/xpath/objects/XMLStringFactoryImpl;

    invoke-direct {v0}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->m_xstringfactory:Lorg/apache/xml/utils/XMLStringFactory;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xml/utils/XMLStringFactory;-><init>()V

    return-void
.end method

.method public static greylist getFactory()Lorg/apache/xml/utils/XMLStringFactory;
    .registers 1

    .line 45
    sget-object v0, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->m_xstringfactory:Lorg/apache/xml/utils/XMLStringFactory;

    return-object v0
.end method


# virtual methods
.method public greylist emptystr()Lorg/apache/xml/utils/XMLString;
    .registers 1

    .line 98
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0
.end method

.method public greylist newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .registers 2

    .line 58
    new-instance p0, Lorg/apache/xpath/objects/XString;

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public greylist newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;
    .registers 4

    .line 73
    new-instance p0, Lorg/apache/xpath/objects/XStringForFSB;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/objects/XStringForFSB;-><init>(Lorg/apache/xml/utils/FastStringBuffer;II)V

    return-object p0
.end method

.method public greylist newstr([CII)Lorg/apache/xml/utils/XMLString;
    .registers 4

    .line 88
    new-instance p0, Lorg/apache/xpath/objects/XStringForChars;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/objects/XStringForChars;-><init>([CII)V

    return-object p0
.end method
