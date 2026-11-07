.class public Ljavax/xml/xpath/XPathConstants;
.super Ljava/lang/Object;
.source "XPathConstants.java"


# static fields
.field public static final whitelist test-api BOOLEAN:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api DOM_OBJECT_MODEL:Ljava/lang/String; = "http://java.sun.com/jaxp/xpath/dom"

.field public static final whitelist test-api NODE:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api NODESET:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api NUMBER:Ljavax/xml/namespace/QName;

.field public static final whitelist test-api STRING:Ljavax/xml/namespace/QName;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "NUMBER"

    const-string v2, "http://www.w3.org/1999/XSL/Transform"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    .line 51
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "STRING"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    .line 58
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    .line 65
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "NODESET"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    .line 72
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "NODE"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
