.class public Ljavax/xml/transform/sax/SAXResult;
.super Ljava/lang/Object;
.source "SAXResult.java"

# interfaces
.implements Ljavax/xml/transform/Result;


# static fields
.field public static final whitelist test-api FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXResult/feature"


# instance fields
.field private greylist-max-o handler:Lorg/xml/sax/ContentHandler;

.field private greylist-max-o lexhandler:Lorg/xml/sax/ext/LexicalHandler;

.field private greylist-max-o systemId:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Ljavax/xml/transform/sax/SAXResult;->setHandler(Lorg/xml/sax/ContentHandler;)V

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist test-api getHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .line 71
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXResult;->handler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public whitelist test-api getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 2

    .line 95
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXResult;->lexhandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api setHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .line 62
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXResult;->handler:Lorg/xml/sax/ContentHandler;

    .line 63
    return-void
.end method

.method public whitelist test-api setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ext/LexicalHandler;

    .line 86
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXResult;->lexhandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 87
    return-void
.end method

.method public whitelist test-api setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXResult;->systemId:Ljava/lang/String;

    .line 106
    return-void
.end method
