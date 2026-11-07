.class public Ljava/lang/UnsatisfiedLinkError;
.super Ljava/lang/LinkageError;
.source "UnsatisfiedLinkError.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x37c7936202f0ef44L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 44
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method
