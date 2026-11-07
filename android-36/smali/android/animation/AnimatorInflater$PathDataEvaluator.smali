.class Landroid/animation/AnimatorInflater$PathDataEvaluator;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathDataEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/util/PathParser$PathData;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mPathData:Landroid/util/PathParser$PathData;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Landroid/util/PathParser$PathData;

    invoke-direct {v0}, Landroid/util/PathParser$PathData;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mPathData:Landroid/util/PathParser$PathData;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/animation/AnimatorInflater-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o evaluate(FLandroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Landroid/util/PathParser$PathData;
    .registers 6
    .param p1, "fraction"    # F
    .param p2, "startPathData"    # Landroid/util/PathParser$PathData;
    .param p3, "endPathData"    # Landroid/util/PathParser$PathData;

    .line 267
    iget-object v0, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mPathData:Landroid/util/PathParser$PathData;

    invoke-static {v0, p2, p3, p1}, Landroid/util/PathParser;->interpolatePathData(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;F)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 271
    iget-object v0, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mPathData:Landroid/util/PathParser$PathData;

    return-object v0

    .line 268
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 261
    check-cast p2, Landroid/util/PathParser$PathData;

    check-cast p3, Landroid/util/PathParser$PathData;

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/AnimatorInflater$PathDataEvaluator;->evaluate(FLandroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Landroid/util/PathParser$PathData;

    move-result-object p1

    return-object p1
.end method
