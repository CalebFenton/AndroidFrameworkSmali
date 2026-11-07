.class public Landroid/view/Surface$FrameRateParams;
.super Ljava/lang/Object;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameRateParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$FrameRateParams$Builder;
    }
.end annotation


# static fields
.field public static final blacklist IGNORE:Landroid/view/Surface$FrameRateParams;


# instance fields
.field blacklist mChangeFrameRateStrategy:I

.field blacklist mDesiredMaxRate:F

.field blacklist mDesiredMinRate:F

.field blacklist mFixedSourceRate:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1055
    new-instance v0, Landroid/view/Surface$FrameRateParams$Builder;

    invoke-direct {v0}, Landroid/view/Surface$FrameRateParams$Builder;-><init>()V

    .line 1056
    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface$FrameRateParams$Builder;->setDesiredRateRange(FF)Landroid/view/Surface$FrameRateParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface$FrameRateParams$Builder;->build()Landroid/view/Surface$FrameRateParams;

    move-result-object v0

    sput-object v0, Landroid/view/Surface$FrameRateParams;->IGNORE:Landroid/view/Surface$FrameRateParams;

    .line 1055
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/Surface$FrameRateParams;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getChangeFrameRateStrategy()I
    .registers 2

    .line 1195
    iget v0, p0, Landroid/view/Surface$FrameRateParams;->mChangeFrameRateStrategy:I

    return v0
.end method

.method public blacklist getDesiredMaxRate()F
    .registers 2

    .line 1176
    iget v0, p0, Landroid/view/Surface$FrameRateParams;->mDesiredMaxRate:F

    return v0
.end method

.method public blacklist getDesiredMinRate()F
    .registers 2

    .line 1167
    iget v0, p0, Landroid/view/Surface$FrameRateParams;->mDesiredMinRate:F

    return v0
.end method

.method public blacklist getFixedSourceRate()F
    .registers 2

    .line 1185
    iget v0, p0, Landroid/view/Surface$FrameRateParams;->mFixedSourceRate:F

    return v0
.end method
