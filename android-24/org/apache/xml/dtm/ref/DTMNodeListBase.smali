.class public Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.super Ljava/lang/Object;
.source "DTMNodeListBase.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
