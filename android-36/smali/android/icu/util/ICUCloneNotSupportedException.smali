.class public Landroid/icu/util/ICUCloneNotSupportedException;
.super Landroid/icu/util/ICUException;
.source "ICUCloneNotSupportedException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x42f3e07e34148794L


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/icu/util/ICUException;-><init>()V

    .line 26
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 43
    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method
