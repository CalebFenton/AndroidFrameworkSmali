.class public Ljava/net/UnknownHostException;
.super Ljava/io/IOException;
.source "UnknownHostException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x40617c964762288bL


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
    .param p1, "message"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
