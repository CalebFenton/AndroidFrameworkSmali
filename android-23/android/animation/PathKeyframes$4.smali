.class Landroid/animation/PathKeyframes$4;
.super Landroid/animation/PathKeyframes$IntKeyframesBase;
.source "PathKeyframes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/PathKeyframes;


# direct methods
.method constructor <init>(Landroid/animation/PathKeyframes;)V
    .locals 1
    .param p1, "this$0"    # Landroid/animation/PathKeyframes;

    #@0
    .prologue
    .line 201
    iput-object p1, p0, Landroid/animation/PathKeyframes$4;->this$0:Landroid/animation/PathKeyframes;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/animation/PathKeyframes$IntKeyframesBase;-><init>(Landroid/animation/PathKeyframes$IntKeyframesBase;)V

    #@6
    return-void
.end method


# virtual methods
.method public getIntValue(F)I
    .locals 2
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 204
    iget-object v1, p0, Landroid/animation/PathKeyframes$4;->this$0:Landroid/animation/PathKeyframes;

    #@2
    invoke-virtual {v1, p1}, Landroid/animation/PathKeyframes;->getValue(F)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/PointF;

    #@8
    .line 205
    .local v0, "pointF":Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->y:F

    #@a
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@d
    move-result v1

    #@e
    return v1
.end method
