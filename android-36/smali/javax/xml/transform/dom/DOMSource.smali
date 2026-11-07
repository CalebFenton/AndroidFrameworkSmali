.class public Ljavax/xml/transform/dom/DOMSource;
.super Ljava/lang/Object;
.source "DOMSource.java"

# interfaces
.implements Ljavax/xml/transform/Source;


# static fields
.field public static final whitelist test-api FEATURE:Ljava/lang/String; = "http://javax.xml.transform.dom.DOMSource/feature"


# instance fields
.field private greylist-max-o node:Lorg/w3c/dom/Node;

.field private greylist-max-o systemID:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/w3c/dom/Node;)V
    .registers 2
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMSource;->setNode(Lorg/w3c/dom/Node;)V

    .line 80
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .registers 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "systemID"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMSource;->setNode(Lorg/w3c/dom/Node;)V

    .line 91
    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMSource;->setSystemId(Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public whitelist test-api getNode()Lorg/w3c/dom/Node;
    .registers 2

    .line 109
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMSource;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMSource;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api setNode(Lorg/w3c/dom/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 100
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMSource;->node:Lorg/w3c/dom/Node;

    .line 101
    return-void
.end method

.method public whitelist test-api setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemID"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMSource;->systemID:Ljava/lang/String;

    .line 120
    return-void
.end method
