.class public final Landroid/app/GameModeConfiguration$Builder;
.super Ljava/lang/Object;
.source "GameModeConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/GameModeConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFpsOverride:I

.field private blacklist mScalingFactor:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/GameModeConfiguration;)V
    .registers 3
    .param p1, "configuration"    # Landroid/app/GameModeConfiguration;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Landroid/app/GameModeConfiguration;->-$$Nest$fgetmFpsOverride(Landroid/app/GameModeConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/app/GameModeConfiguration$Builder;->mFpsOverride:I

    .line 72
    invoke-static {p1}, Landroid/app/GameModeConfiguration;->-$$Nest$fgetmScalingFactor(Landroid/app/GameModeConfiguration;)F

    move-result v0

    iput v0, p0, Landroid/app/GameModeConfiguration$Builder;->mScalingFactor:F

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/GameModeConfiguration;
    .registers 4

    .line 122
    new-instance v0, Landroid/app/GameModeConfiguration;

    iget v1, p0, Landroid/app/GameModeConfiguration$Builder;->mScalingFactor:F

    iget v2, p0, Landroid/app/GameModeConfiguration$Builder;->mFpsOverride:I

    invoke-direct {v0, v1, v2}, Landroid/app/GameModeConfiguration;-><init>(FI)V

    return-object v0
.end method

.method public whitelist setFpsOverride(I)Landroid/app/GameModeConfiguration$Builder;
    .registers 4
    .param p1, "fpsOverride"    # I

    .line 111
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "FPS override should be non-negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 113
    iput p1, p0, Landroid/app/GameModeConfiguration$Builder;->mFpsOverride:I

    .line 114
    return-object p0
.end method

.method public whitelist setScalingFactor(F)Landroid/app/GameModeConfiguration$Builder;
    .registers 6
    .param p1, "scalingFactor"    # F

    .line 85
    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_13

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const-string v1, "Scaling factor should fall between 0.1 and 1.0 (inclusive)"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 87
    iput p1, p0, Landroid/app/GameModeConfiguration$Builder;->mScalingFactor:F

    .line 88
    return-object p0
.end method
