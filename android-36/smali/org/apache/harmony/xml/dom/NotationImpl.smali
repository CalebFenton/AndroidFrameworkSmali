.class public Lorg/apache/harmony/xml/dom/NotationImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "NotationImpl.java"

# interfaces
.implements Lorg/w3c/dom/Notation;


# instance fields
.field private blacklist notationName:Ljava/lang/String;

.field private blacklist publicID:Ljava/lang/String;

.field private blacklist systemID:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "notationName"    # Ljava/lang/String;
    .param p3, "publicID"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NotationImpl;->notationName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNodeType()S
    .registers 2

    .line 52
    const/16 v0, 0xc

    return v0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NotationImpl;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NotationImpl;->systemID:Ljava/lang/String;

    return-object v0
.end method
