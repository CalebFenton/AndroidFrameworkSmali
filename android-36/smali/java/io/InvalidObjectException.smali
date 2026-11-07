.class public Ljava/io/InvalidObjectException;
.super Ljava/io/ObjectStreamException;
.source "InvalidObjectException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x2cde8ae9921ad3dfL


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method
