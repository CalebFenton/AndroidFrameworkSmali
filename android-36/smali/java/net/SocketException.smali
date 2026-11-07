.class public Ljava/net/SocketException;
.super Ljava/io/IOException;
.source "SocketException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x5260763abee0a196L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 55
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 60
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method
