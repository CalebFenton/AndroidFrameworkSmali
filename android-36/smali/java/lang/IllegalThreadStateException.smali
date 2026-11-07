.class public Ljava/lang/IllegalThreadStateException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalThreadStateException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x69d5dea93850c6ceL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 48
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method
