.class public Landroid/media/FaceDetector$Face;
.super Ljava/lang/Object;
.source "FaceDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/FaceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Face"
.end annotation


# static fields
.field public static final CONFIDENCE_THRESHOLD:F = 0.4f

.field public static final EULER_X:I = 0x0

.field public static final EULER_Y:I = 0x1

.field public static final EULER_Z:I = 0x2


# instance fields
.field private mConfidence:F

.field private mEyesDist:F

.field private mMidPointX:F

.field private mMidPointY:F

.field private mPoseEulerX:F

.field private mPoseEulerY:F

.field private mPoseEulerZ:F

.field final synthetic this$0:Landroid/media/FaceDetector;


# direct methods
.method private constructor <init>(Landroid/media/FaceDetector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/FaceDetector;

    #@0
    .prologue
    .line 89
    iput-object p1, p0, Landroid/media/FaceDetector$Face;->this$0:Landroid/media/FaceDetector;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/FaceDetector;Landroid/media/FaceDetector$Face;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/FaceDetector;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/FaceDetector$Face;-><init>(Landroid/media/FaceDetector;)V

    #@3
    return-void
.end method


# virtual methods
.method public confidence()F
    .locals 1

    #@0
    .prologue
    .line 51
    iget v0, p0, Landroid/media/FaceDetector$Face;->mConfidence:F

    #@2
    return v0
.end method

.method public eyesDistance()F
    .locals 1

    #@0
    .prologue
    .line 66
    iget v0, p0, Landroid/media/FaceDetector$Face;->mEyesDist:F

    #@2
    return v0
.end method

.method public getMidPoint(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/PointF;

    #@0
    .prologue
    .line 60
    iget v0, p0, Landroid/media/FaceDetector$Face;->mMidPointX:F

    #@2
    iget v1, p0, Landroid/media/FaceDetector$Face;->mMidPointY:F

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    #@7
    .line 58
    return-void
.end method

.method public pose(I)F
    .locals 1
    .param p1, "euler"    # I

    #@0
    .prologue
    .line 79
    if-nez p1, :cond_0

    #@2
    .line 80
    iget v0, p0, Landroid/media/FaceDetector$Face;->mPoseEulerX:F

    #@4
    return v0

    #@5
    .line 81
    :cond_0
    const/4 v0, 0x1

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 82
    iget v0, p0, Landroid/media/FaceDetector$Face;->mPoseEulerY:F

    #@a
    return v0

    #@b
    .line 83
    :cond_1
    const/4 v0, 0x2

    #@c
    if-ne p1, v0, :cond_2

    #@e
    .line 84
    iget v0, p0, Landroid/media/FaceDetector$Face;->mPoseEulerZ:F

    #@10
    return v0

    #@11
    .line 85
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@16
    throw v0
.end method
