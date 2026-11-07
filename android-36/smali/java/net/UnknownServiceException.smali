.class public Ljava/net/UnknownServiceException;
.super Ljava/io/IOException;
.source "UnknownServiceException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x39db61a6beb6c154L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 47
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method
