.class public final Landroid/view/Surface$FrameRateParams$Builder;
.super Ljava/lang/Object;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface$FrameRateParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mChangeFrameRateStrategy:I

.field private blacklist mDesiredMaxRate:F

.field private blacklist mDesiredMinRate:F

.field private blacklist mFixedSourceRate:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/view/Surface$FrameRateParams;
    .registers 3

    .line 1152
    new-instance v0, Landroid/view/Surface$FrameRateParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/Surface$FrameRateParams;-><init>(Landroid/view/Surface-IA;)V

    .line 1153
    .local v0, "frameRate":Landroid/view/Surface$FrameRateParams;
    iget v1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mDesiredMinRate:F

    iput v1, v0, Landroid/view/Surface$FrameRateParams;->mDesiredMinRate:F

    .line 1154
    iget v1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mDesiredMaxRate:F

    iput v1, v0, Landroid/view/Surface$FrameRateParams;->mDesiredMaxRate:F

    .line 1155
    iget v1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mFixedSourceRate:F

    iput v1, v0, Landroid/view/Surface$FrameRateParams;->mFixedSourceRate:F

    .line 1156
    iget v1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mChangeFrameRateStrategy:I

    iput v1, v0, Landroid/view/Surface$FrameRateParams;->mChangeFrameRateStrategy:I

    .line 1157
    return-object v0
.end method

.method public blacklist setChangeFrameRateStrategy(I)Landroid/view/Surface$FrameRateParams$Builder;
    .registers 2
    .param p1, "changeFrameRateStrategy"    # I

    .line 1142
    iput p1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mChangeFrameRateStrategy:I

    .line 1143
    return-object p0
.end method

.method public blacklist setDesiredRateRange(FF)Landroid/view/Surface$FrameRateParams$Builder;
    .registers 5
    .param p1, "desiredMinRate"    # F
    .param p2, "desiredMaxRate"    # F

    .line 1093
    cmpg-float v0, p2, p1

    if-gez v0, :cond_c

    .line 1094
    const-string v0, "Surface"

    const-string v1, "Failed to set desired frame rate range. desiredMaxRate should be greater than or equal to desiredMinRate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return-object p0

    .line 1099
    :cond_c
    iput p1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mDesiredMinRate:F

    .line 1100
    iput p2, p0, Landroid/view/Surface$FrameRateParams$Builder;->mDesiredMaxRate:F

    .line 1101
    return-object p0
.end method

.method public blacklist setFixedSourceRate(F)Landroid/view/Surface$FrameRateParams$Builder;
    .registers 2
    .param p1, "fixedSourceRate"    # F

    .line 1126
    iput p1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mFixedSourceRate:F

    .line 1127
    return-object p0
.end method
