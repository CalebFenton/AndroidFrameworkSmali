.class public Ljavax/xml/xpath/XPathConstants;
.super Ljava/lang/Object;
.source "XPathConstants.java"


# static fields
.field public static final BOOLEAN:Ljavax/xml/namespace/QName;

.field public static final DOM_OBJECT_MODEL:Ljava/lang/String; = "http://java.sun.com/jaxp/xpath/dom"

.field public static final NODE:Ljavax/xml/namespace/QName;

.field public static final NODESET:Ljavax/xml/namespace/QName;

.field public static final NUMBER:Ljavax/xml/namespace/QName;

.field public static final STRING:Ljavax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 44
    new-instance v0, Ljavax/xml/namespace/QName;

    #@2
    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    #@5
    const-string/jumbo v2, "NUMBER"

    #@8
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    sput-object v0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    #@d
    .line 51
    new-instance v0, Ljavax/xml/namespace/QName;

    #@f
    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    #@12
    const-string/jumbo v2, "STRING"

    #@15
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    sput-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    #@1a
    .line 58
    new-instance v0, Ljavax/xml/namespace/QName;

    #@1c
    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    #@1f
    const-string/jumbo v2, "BOOLEAN"

    #@22
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    sput-object v0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    #@27
    .line 65
    new-instance v0, Ljavax/xml/namespace/QName;

    #@29
    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    #@2c
    const-string/jumbo v2, "NODESET"

    #@2f
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    sput-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    #@34
    .line 72
    new-instance v0, Ljavax/xml/namespace/QName;

    #@36
    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    #@39
    const-string/jumbo v2, "NODE"

    #@3c
    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    sput-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    #@41
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
