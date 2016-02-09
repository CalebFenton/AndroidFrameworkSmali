.class public final Lorg/apache/xpath/domapi/XPathStylesheetDOM3Exception;
.super Ljavax/xml/transform/TransformerException;
.source "XPathStylesheetDOM3Exception.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@3
    .line 30
    return-void
.end method
