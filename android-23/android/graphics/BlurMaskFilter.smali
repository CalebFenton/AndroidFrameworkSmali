.class public Landroid/graphics/BlurMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "BlurMaskFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BlurMaskFilter$Blur;
    }
.end annotation


# direct methods
.method public constructor <init>(FLandroid/graphics/BlurMaskFilter$Blur;)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "style"    # Landroid/graphics/BlurMaskFilter$Blur;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    #@3
    .line 62
    iget v0, p2, Landroid/graphics/BlurMaskFilter$Blur;->native_int:I

    #@5
    invoke-static {p1, v0}, Landroid/graphics/BlurMaskFilter;->nativeConstructor(FI)J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Landroid/graphics/BlurMaskFilter;->native_instance:J

    #@b
    .line 61
    return-void
.end method

.method private static native nativeConstructor(FI)J
.end method
