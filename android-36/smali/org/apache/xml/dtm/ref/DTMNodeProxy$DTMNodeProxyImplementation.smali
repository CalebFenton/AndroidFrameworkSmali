.class Lorg/apache/xml/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;
.super Ljava/lang/Object;
.source "DTMNodeProxy.java"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMNodeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DTMNodeProxyImplementation"
.end annotation


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .registers 4

    .line 1407
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public whitelist test-api createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .registers 4

    .line 1402
    new-instance p0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw p0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1420
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CORE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    const-string p0, "XML"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    :cond_18
    const-string p0, "1.0"

    .line 1422
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "2.0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    return p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0
.end method
