.class public Landroid/icu/util/ICUInputTooLongException;
.super Landroid/icu/util/ICUException;
.source "ICUInputTooLongException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x241f46a598ba6b72L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/icu/util/ICUException;-><init>()V

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 37
    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method
