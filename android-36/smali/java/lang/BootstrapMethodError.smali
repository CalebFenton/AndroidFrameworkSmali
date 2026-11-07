.class public Ljava/lang/BootstrapMethodError;
.super Ljava/lang/LinkageError;
.source "BootstrapMethodError.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x124L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 51
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 82
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {p0, v0}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/BootstrapMethodError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 84
    return-void
.end method
