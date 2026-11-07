.class public Lorg/apache/xpath/XPathProcessorException;
.super Lorg/apache/xpath/XPathException;
.source "XPathProcessorException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x10de5b603c804fabL


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/xpath/XPathException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
