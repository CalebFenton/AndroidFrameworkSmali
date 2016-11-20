.class public Ljavax/xml/xpath/XPathException;
.super Ljava/lang/Exception;
.source "XPathException.java"


# static fields
.field private static final serialVersionUID:J = -0x197e9ec3778880e4L


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@4
    .line 51
    if-nez p1, :cond_0

    #@6
    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "message == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 54
    :cond_0
    iput-object v0, p0, Ljavax/xml/xpath/XPathException;->cause:Ljava/lang/Throwable;

    #@11
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 67
    if-nez p1, :cond_0

    #@3
    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@6
    .line 68
    iput-object p1, p0, Ljavax/xml/xpath/XPathException;->cause:Ljava/lang/Throwable;

    #@8
    .line 69
    if-nez p1, :cond_1

    #@a
    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    const-string/jumbo v1, "cause == null"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    goto :goto_0

    #@18
    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Ljavax/xml/xpath/XPathException;->cause:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    #@0
    .prologue
    .line 88
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {p0, v0}, Ljavax/xml/xpath/XPathException;->printStackTrace(Ljava/io/PrintStream;)V

    #@5
    .line 87
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 79
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathException;->getCause()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 80
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathException;->getCause()Ljava/lang/Throwable;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    #@d
    .line 81
    const-string/jumbo v0, "--------------- linked to ------------------"

    #@10
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13
    .line 84
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    #@16
    .line 78
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathException;->getCause()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 93
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathException;->getCause()Ljava/lang/Throwable;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@d
    .line 94
    const-string/jumbo v0, "--------------- linked to ------------------"

    #@10
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 97
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    #@16
    .line 91
    return-void
.end method
