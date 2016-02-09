.class public Lorg/apache/xml/utils/StopParseException;
.super Lorg/xml/sax/SAXException;
.source "StopParseException.java"


# static fields
.field static final serialVersionUID:J = 0x2ea6f17783bb411L


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, "Stylesheet PIs found, stop the parse"

    #@3
    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@6
    .line 36
    return-void
.end method
