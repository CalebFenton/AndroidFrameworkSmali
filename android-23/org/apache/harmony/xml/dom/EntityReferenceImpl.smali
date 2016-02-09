.class public Lorg/apache/harmony/xml/dom/EntityReferenceImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "EntityReferenceImpl.java"

# interfaces
.implements Lorg/w3c/dom/EntityReference;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    #@3
    .line 38
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    #@5
    .line 36
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x5

    #@1
    return v0
.end method
