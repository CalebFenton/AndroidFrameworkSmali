.class Landroid/view/View$TransformationInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformationInfo"
.end annotation


# instance fields
.field mAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mInverseMatrix:Landroid/graphics/Matrix;

.field private final mMatrix:Landroid/graphics/Matrix;

.field mTransitionAlpha:F


# direct methods
.method static synthetic -get0(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    #@2
    return-object p1
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    .line 3127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3135
    new-instance v0, Landroid/graphics/Matrix;

    #@7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@a
    iput-object v0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    #@c
    .line 3151
    iput v1, p0, Landroid/view/View$TransformationInfo;->mAlpha:F

    #@e
    .line 3158
    iput v1, p0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    #@10
    .line 3127
    return-void
.end method
