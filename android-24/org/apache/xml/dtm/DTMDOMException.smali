.class public Lorg/apache/xml/dtm/DTMDOMException;
.super Lorg/w3c/dom/DOMException;
.source "DTMDOMException.java"


# static fields
.field static final serialVersionUID:J = 0x1a4eb7830a6ed6deL


# direct methods
.method public constructor <init>(S)V
    .locals 1
    .param p1, "code"    # S

    #@0
    .prologue
    .line 52
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@6
    .line 50
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "code"    # S
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@3
    .line 39
    return-void
.end method
