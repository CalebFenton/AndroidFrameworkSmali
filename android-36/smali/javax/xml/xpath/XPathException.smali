.class public Ljavax/xml/xpath/XPathException;
.super Ljava/lang/Exception;
.source "XPathException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x197e9ec3778880e4L


# instance fields
.field private final greylist-max-o cause:Ljava/lang/Throwable;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    if-eqz p1, :cond_9

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/xpath/XPathException;->cause:Ljava/lang/Throwable;

    .line 55
    return-void

    .line 52
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 67
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Ljavax/xml/xpath/XPathException;->cause:Ljava/lang/Throwable;

    .line 69
    if-eqz p1, :cond_10

    .line 72
    return-void

    .line 70
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cause == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 75
    iget-object v0, p0, Ljavax/xml/xpath/XPathException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public whitelist test-api printStackTrace()V
    .registers 2

    .line 88
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljavax/xml/xpath/XPathException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 89
    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintStream;

    .line 79
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 80
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 81
    const-string v0, "--------------- linked to ------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    :cond_12
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 85
    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintWriter;

    .line 92
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 93
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 94
    const-string v0, "--------------- linked to ------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    :cond_12
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 98
    return-void
.end method
