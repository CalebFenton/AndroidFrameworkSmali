.class public Ljavax/xml/xpath/XPathFactoryConfigurationException;
.super Ljavax/xml/xpath/XPathException;
.source "XPathFactoryConfigurationException.java"


# static fields
.field private static final serialVersionUID:J = -0x197e9ec3778880e4L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathException;-><init>(Ljava/lang/String;)V

    #@3
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 58
    return-void
.end method
