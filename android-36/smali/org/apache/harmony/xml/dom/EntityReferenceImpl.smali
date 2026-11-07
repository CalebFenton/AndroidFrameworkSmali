.class public Lorg/apache/harmony/xml/dom/EntityReferenceImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "EntityReferenceImpl.java"

# interfaces
.implements Lorg/w3c/dom/EntityReference;


# instance fields
.field private blacklist name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 38
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNodeType()S
    .registers 2

    .line 48
    const/4 v0, 0x5

    return v0
.end method
