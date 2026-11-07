.class public Ljava/nio/file/ProviderMismatchException;
.super Ljava/lang/IllegalArgumentException;
.source "ProviderMismatchException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x45430d587bc7bdf2L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method
