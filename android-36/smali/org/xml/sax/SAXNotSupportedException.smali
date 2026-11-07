.class public Lorg/xml/sax/SAXNotSupportedException;
.super Lorg/xml/sax/SAXException;
.source "SAXNotSupportedException.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lorg/xml/sax/SAXException;-><init>()V

    .line 37
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
