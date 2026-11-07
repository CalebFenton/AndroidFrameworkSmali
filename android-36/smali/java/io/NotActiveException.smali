.class public Ljava/io/NotActiveException;
.super Ljava/io/ObjectStreamException;
.source "NotActiveException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x36085fdb3abe1fffL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    .line 52
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
