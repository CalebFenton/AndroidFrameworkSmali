.class Landroid/animation/PathKeyframes$1;
.super Landroid/animation/PathKeyframes$FloatKeyframesBase;
.source "PathKeyframes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/animation/PathKeyframes;


# direct methods
.method constructor blacklist <init>(Landroid/animation/PathKeyframes;)V
    .registers 2
    .param p1, "this$0"    # Landroid/animation/PathKeyframes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 156
    iput-object p1, p0, Landroid/animation/PathKeyframes$1;->this$0:Landroid/animation/PathKeyframes;

    invoke-direct {p0}, Landroid/animation/PathKeyframes$FloatKeyframesBase;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getFloatValue(F)F
    .registers 4
    .param p1, "fraction"    # F

    .line 159
    iget-object v0, p0, Landroid/animation/PathKeyframes$1;->this$0:Landroid/animation/PathKeyframes;

    invoke-virtual {v0, p1}, Landroid/animation/PathKeyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 160
    .local v0, "pointF":Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->x:F

    return v1
.end method
