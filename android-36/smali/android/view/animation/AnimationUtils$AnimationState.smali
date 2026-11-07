.class Landroid/view/animation/AnimationUtils$AnimationState;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationState"
.end annotation


# instance fields
.field greylist-max-o animationClockLocked:Z

.field greylist-max-o currentVsyncTimeMillis:J

.field greylist-max-o lastReportedTimeMillis:J

.field blacklist mExpectedPresentationTimeNanos:J


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/animation/AnimationUtils-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/animation/AnimationUtils$AnimationState;-><init>()V

    return-void
.end method
