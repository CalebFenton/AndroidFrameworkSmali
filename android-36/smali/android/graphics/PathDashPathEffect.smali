.class public Landroid/graphics/PathDashPathEffect;
.super Landroid/graphics/PathEffect;
.source "PathDashPathEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PathDashPathEffect$Style;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V
    .registers 8
    .param p1, "shape"    # Landroid/graphics/Path;
    .param p2, "advance"    # F
    .param p3, "phase"    # F
    .param p4, "style"    # Landroid/graphics/PathDashPathEffect$Style;

    .line 44
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v0

    iget v2, p4, Landroid/graphics/PathDashPathEffect$Style;->native_style:I

    invoke-static {v0, v1, p2, p3, v2}, Landroid/graphics/PathDashPathEffect;->nativeCreate(JFFI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathDashPathEffect;->native_instance:J

    .line 47
    return-void
.end method

.method private static native greylist-max-o nativeCreate(JFFI)J
.end method
