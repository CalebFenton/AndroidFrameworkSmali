.class public Lorg/apache/xml/utils/StopParseException;
.super Lorg/xml/sax/SAXException;
.source "StopParseException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x2ea6f17783bb411L


# direct methods
.method constructor greylist <init>()V
    .registers 2

    .line 38
    const-string v0, "Stylesheet PIs found, stop the parse"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    return-void
.end method
