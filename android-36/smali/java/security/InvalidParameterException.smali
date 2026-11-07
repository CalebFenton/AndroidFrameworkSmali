.class public Ljava/security/InvalidParameterException;
.super Ljava/lang/IllegalArgumentException;
.source "InvalidParameterException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0xbe81dd6b0831860L


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
    .param p1, "msg"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
