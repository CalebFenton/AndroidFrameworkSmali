.class public Ljava/net/ProtocolException;
.super Ljava/io/IOException;
.source "ProtocolException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x54a20b74e2cecb70L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 56
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method
