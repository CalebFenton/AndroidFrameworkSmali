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
.field private greylist-max-o mAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private greylist-max-o mInverseMatrix:Landroid/graphics/Matrix;

.field private final greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field greylist-max-o mTransitionAlpha:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlpha(Landroid/view/View$TransformationInfo;)F
    .registers 1

    iget p0, p0, Landroid/view/View$TransformationInfo;->mAlpha:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInverseMatrix(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatrix(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAlpha(Landroid/view/View$TransformationInfo;F)V
    .registers 2

    iput p1, p0, Landroid/view/View$TransformationInfo;->mAlpha:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInverseMatrix(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 4722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4730
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    .line 4745
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 4753
    iput v0, p0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    return-void
.end method
