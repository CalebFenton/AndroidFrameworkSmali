.class public Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.super Ljava/lang/Object;
.source "DTMNodeListBase.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getLength()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
