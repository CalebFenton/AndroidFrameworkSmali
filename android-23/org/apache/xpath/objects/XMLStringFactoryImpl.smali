.class public Lorg/apache/xpath/objects/XMLStringFactoryImpl;
.super Lorg/apache/xml/utils/XMLStringFactory;
.source "XMLStringFactoryImpl.java"


# static fields
.field private static m_xstringfactory:Lorg/apache/xml/utils/XMLStringFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    new-instance v0, Lorg/apache/xpath/objects/XMLStringFactoryImpl;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;-><init>()V

    #@5
    .line 34
    sput-object v0, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->m_xstringfactory:Lorg/apache/xml/utils/XMLStringFactory;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xml/utils/XMLStringFactory;-><init>()V

    #@3
    return-void
.end method

.method public static getFactory()Lorg/apache/xml/utils/XMLStringFactory;
    .locals 1

    #@0
    .prologue
    .line 45
    sget-object v0, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->m_xstringfactory:Lorg/apache/xml/utils/XMLStringFactory;

    #@2
    return-object v0
.end method


# virtual methods
.method public emptystr()Lorg/apache/xml/utils/XMLString;
    .locals 1

    #@0
    .prologue
    .line 98
    sget-object v0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@2
    return-object v0
.end method

.method public newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    new-instance v0, Lorg/apache/xpath/objects/XString;

    #@2
    invoke-direct {v0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;
    .locals 1
    .param p1, "fsb"    # Lorg/apache/xml/utils/FastStringBuffer;
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 73
    new-instance v0, Lorg/apache/xpath/objects/XStringForFSB;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xpath/objects/XStringForFSB;-><init>(Lorg/apache/xml/utils/FastStringBuffer;II)V

    #@5
    return-object v0
.end method

.method public newstr([CII)Lorg/apache/xml/utils/XMLString;
    .locals 1
    .param p1, "string"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 88
    new-instance v0, Lorg/apache/xpath/objects/XStringForChars;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xpath/objects/XStringForChars;-><init>([CII)V

    #@5
    return-object v0
.end method
