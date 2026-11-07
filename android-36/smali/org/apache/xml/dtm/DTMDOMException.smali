.class public Lorg/apache/xml/dtm/DTMDOMException;
.super Lorg/w3c/dom/DOMException;
.source "DTMDOMException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x1a4eb7830a6ed6deL


# direct methods
.method public constructor greylist <init>(S)V
    .registers 3

    .line 52
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(SLjava/lang/String;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-void
.end method
