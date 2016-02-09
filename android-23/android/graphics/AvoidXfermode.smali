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
.method public constructor <init>(IILandroid/graphics/AvoidXfermode$Mode;)V
    .locals 2
    .param p1, "opColor"    # I
    .param p2, "tolerance"    # I
    .param p3, "mode"    # Landroid/graphics/AvoidXfermode$Mode;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    #@3
    .line 53
    if-ltz p2, :cond_0

    #@5
    const/16 v0, 0xff

    #@7
    if-le p2, v0, :cond_1

    #@9
    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "tolerance must be 0..255"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 56
    :cond_1
    iget v0, p3, Landroid/graphics/AvoidXfermode$Mode;->nativeInt:I

    #@14
    invoke-static {p1, p2, v0}, Landroid/graphics/AvoidXfermode;->nativeCreate(III)J

    #@17
    move-result-wide v0

    #@18
    iput-wide v0, p0, Landroid/graphics/AvoidXfermode;->native_instance:J

    #@1a
    .line 52
    return-void
.end method

.method private static native nativeCreate(III)J
.end method
