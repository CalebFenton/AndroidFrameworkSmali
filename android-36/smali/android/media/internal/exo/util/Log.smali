.class public final Landroid/media/internal/exo/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static blacklist logLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 83
    sget v0, Landroid/media/internal/exo/util/Log;->logLevel:I

    if-nez v0, :cond_7

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 125
    sget v0, Landroid/media/internal/exo/util/Log;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_8

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 111
    sget v0, Landroid/media/internal/exo/util/Log;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_8

    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method
