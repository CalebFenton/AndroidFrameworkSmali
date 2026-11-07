.class public Ljavax/net/ssl/SSLException;
.super Ljava/io/IOException;
.source "SSLException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x3e9a5079c293dfe7L


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 68
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 70
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 85
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 87
    return-void
.end method
