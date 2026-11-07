.class public Ljava/lang/ClassCircularityError;
.super Ljava/lang/LinkageError;
.source "ClassCircularityError.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0xea1d92582e610a9L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 43
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
