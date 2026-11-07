.class public final Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRateLimitation"
.end annotation


# instance fields
.field public blacklist range:Landroid/view/SurfaceControl$RefreshRateRange;

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>(IFF)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "min"    # F
    .param p3, "max"    # F

    .line 787
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v0, p2, p3}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    invoke-direct {p0, p1, v0}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;-><init>(ILandroid/view/SurfaceControl$RefreshRateRange;)V

    .line 788
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/view/SurfaceControl$RefreshRateRange;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "range"    # Landroid/view/SurfaceControl$RefreshRateRange;

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    iput p1, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->type:I

    .line 792
    iput-object p2, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 793
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefreshRateLimitation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
