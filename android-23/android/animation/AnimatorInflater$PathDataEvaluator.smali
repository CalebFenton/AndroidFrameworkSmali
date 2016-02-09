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
        "<[",
        "Landroid/util/PathParser$PathDataNode;",
        ">;"
    }
.end annotation


# instance fields
.field private mNodeArray:[Landroid/util/PathParser$PathDataNode;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>([Landroid/util/PathParser$PathDataNode;)V
    .locals 0
    .param p1, "nodeArray"    # [Landroid/util/PathParser$PathDataNode;

    #@0
    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 275
    iput-object p1, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mNodeArray:[Landroid/util/PathParser$PathDataNode;

    #@5
    .line 274
    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startPathData"    # Ljava/lang/Object;
    .param p3, "endPathData"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 279
    check-cast p2, [Landroid/util/PathParser$PathDataNode;

    #@2
    .end local p2    # "startPathData":Ljava/lang/Object;
    check-cast p3, [Landroid/util/PathParser$PathDataNode;

    #@4
    .end local p3    # "endPathData":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/AnimatorInflater$PathDataEvaluator;->evaluate(F[Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public evaluate(F[Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;
    .locals 4
    .param p1, "fraction"    # F
    .param p2, "startPathData"    # [Landroid/util/PathParser$PathDataNode;
    .param p3, "endPathData"    # [Landroid/util/PathParser$PathDataNode;

    #@0
    .prologue
    .line 282
    invoke-static {p2, p3}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Can\'t interpolate between two incompatible pathData"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 287
    :cond_0
    iget-object v1, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mNodeArray:[Landroid/util/PathParser$PathDataNode;

    #@11
    if-eqz v1, :cond_1

    #@13
    iget-object v1, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mNodeArray:[Landroid/util/PathParser$PathDataNode;

    #@15
    invoke-static {v1, p2}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 291
    :goto_0
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_1
    array-length v1, p2

    #@1d
    if-ge v0, v1, :cond_2

    #@1f
    .line 292
    iget-object v1, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mNodeArray:[Landroid/util/PathParser$PathDataNode;

    #@21
    aget-object v1, v1, v0

    #@23
    aget-object v2, p2, v0

    #@25
    .line 293
    aget-object v3, p3, v0

    #@27
    .line 292
    invoke-virtual {v1, v2, v3, p1}, Landroid/util/PathParser$PathDataNode;->interpolatePathDataNode(Landroid/util/PathParser$PathDataNode;Landroid/util/PathParser$PathDataNode;F)V

    #@2a
    .line 291
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 288
    .end local v0    # "i":I
    :cond_1
    invoke-static {p2}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    #@30
    move-result-object v1

    #@31
    iput-object v1, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mNodeArray:[Landroid/util/PathParser$PathDataNode;

    #@33
    goto :goto_0

    #@34
    .line 296
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Landroid/animation/AnimatorInflater$PathDataEvaluator;->mNodeArray:[Landroid/util/PathParser$PathDataNode;

    #@36
    return-object v1
.end method
