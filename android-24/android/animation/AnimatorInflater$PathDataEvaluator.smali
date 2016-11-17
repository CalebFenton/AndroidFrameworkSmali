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
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/util/PathParser$PathData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPathData:Landroid/util/PathParser$PathData;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 259
    new-instance v0, Landroid/util/PathParser$PathData;

    #@5
    invoke-direct {v0}, Landroid/util/PathParser$PathData;-><init>()V

    #@8
    iput-object v0, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mPathData:Landroid/util/PathParser$PathData;

    #@a
    .line 258
    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Landroid/util/PathParser$PathData;
    .locals 2
    .param p1, "fraction"    # F
    .param p2, "startPathData"    # Landroid/util/PathParser$PathData;
    .param p3, "endPathData"    # Landroid/util/PathParser$PathData;

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mPathData:Landroid/util/PathParser$PathData;

    #@2
    invoke-static {v0, p2, p3, p1}, Landroid/util/PathParser;->interpolatePathData(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;F)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Can\'t interpolate between two incompatible pathData"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 268
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mPathData:Landroid/util/PathParser$PathData;

    #@13
    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startPathData"    # Ljava/lang/Object;
    .param p3, "endPathData"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 262
    check-cast p2, Landroid/util/PathParser$PathData;

    #@2
    .end local p2    # "startPathData":Ljava/lang/Object;
    check-cast p3, Landroid/util/PathParser$PathData;

    #@4
    .end local p3    # "endPathData":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/AnimatorInflater$PathDataEvaluator;->evaluate(FLandroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Landroid/util/PathParser$PathData;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
