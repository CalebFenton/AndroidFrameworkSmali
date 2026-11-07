.class public Landroid/graphics/AvoidXfermode;
.super Landroid/graphics/Xfermode;
.source "AvoidXfermode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/AvoidXfermode$Mode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor greylist <init>(IILandroid/graphics/AvoidXfermode$Mode;)V
    .registers 6
    .param p1, "opColor"    # I
    .param p2, "tolerance"    # I
    .param p3, "mode"    # Landroid/graphics/AvoidXfermode$Mode;

    .line 55
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 56
    if-ltz p2, :cond_a

    const/16 v0, 0xff

    if-gt p2, v0, :cond_a

    .line 59
    return-void

    .line 57
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tolerance must be 0..255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
