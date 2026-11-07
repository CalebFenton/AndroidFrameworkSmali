.class public final Landroid/media/internal/utils/build/SdkLevel;
.super Ljava/lang/Object;
.source "SdkLevel.java"


# direct methods
.method public static blacklist isAtLeastS()Z
    .registers 2

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
