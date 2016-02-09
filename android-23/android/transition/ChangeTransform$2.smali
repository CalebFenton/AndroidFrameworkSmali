.class final Landroid/transition/ChangeTransform$2;
.super Landroid/util/Property;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/transition/ChangeTransform$PathAnimatorMatrix;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public get(Landroid/transition/ChangeTransform$PathAnimatorMatrix;)Landroid/graphics/PointF;
    .locals 1
    .param p1, "object"    # Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 84
    check-cast p1, Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/transition/ChangeTransform$2;->get(Landroid/transition/ChangeTransform$PathAnimatorMatrix;)Landroid/graphics/PointF;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public set(Landroid/transition/ChangeTransform$PathAnimatorMatrix;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "object"    # Landroid/transition/ChangeTransform$PathAnimatorMatrix;
    .param p2, "value"    # Landroid/graphics/PointF;

    #@0
    .prologue
    .line 90
    invoke-virtual {p1, p2}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setTranslation(Landroid/graphics/PointF;)V

    #@3
    .line 89
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 89
    check-cast p1, Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/PointF;

    #@4
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/transition/ChangeTransform$2;->set(Landroid/transition/ChangeTransform$PathAnimatorMatrix;Landroid/graphics/PointF;)V

    #@7
    return-void
.end method
