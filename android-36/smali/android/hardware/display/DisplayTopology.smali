.class public final Landroid/hardware/display/DisplayTopology;
.super Ljava/lang/Object;
.source "DisplayTopology.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayTopology$TreeNode;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EPSILON:F = 1.0E-4f

.field private static final blacklist MAX_GAP:F = 5.0f

.field private static final blacklist TAG:Ljava/lang/String; = "DisplayTopology"


# instance fields
.field private blacklist mPrimaryDisplayId:I

.field private blacklist mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    nop

    .line 73
    new-instance v0, Landroid/hardware/display/DisplayTopology$1;

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DisplayTopology;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 121
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V
    .registers 5
    .param p1, "root"    # Landroid/hardware/display/DisplayTopology$TreeNode;
    .param p2, "primaryDisplayId"    # I

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 127
    iput-object p1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 128
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz v0, :cond_18

    .line 133
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 134
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 137
    :cond_18
    iput p2, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 138
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 144
    sget-object v0, Landroid/hardware/display/DisplayTopology$TreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/display/DisplayTopology;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 145
    return-void
.end method

.method private blacklist allNodesIdMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation

    .line 825
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 826
    .local v0, "pend":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 828
    .local v1, "found":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    iget-object v2, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 830
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 831
    .local v2, "node":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 833
    .end local v2    # "node":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 835
    return-object v1
.end method

.method private blacklist clampOffsets(Landroid/hardware/display/DisplayTopology$TreeNode;)V
    .registers 7
    .param p1, "display"    # Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 843
    if-nez p1, :cond_3

    .line 844
    return-void

    .line 846
    :cond_3
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 847
    .local v1, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    if-eqz v2, :cond_48

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    goto :goto_48

    .line 849
    :cond_25
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_33

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5c

    .line 850
    :cond_33
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    neg-float v3, v3

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    invoke-static {v1, v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    goto :goto_5c

    .line 848
    :cond_48
    :goto_48
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    neg-float v3, v3

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    invoke-static {v1, v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 852
    :cond_5c
    :goto_5c
    invoke-direct {p0, v1}, Landroid/hardware/display/DisplayTopology;->clampOffsets(Landroid/hardware/display/DisplayTopology$TreeNode;)V

    .line 853
    .end local v1    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    goto :goto_b

    .line 854
    :cond_60
    return-void
.end method

.method public static blacklist dpToPx(FI)F
    .registers 4
    .param p0, "dp"    # F
    .param p1, "dpi"    # I

    .line 103
    int-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static blacklist findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;
    .registers 6
    .param p0, "displayId"    # I
    .param p1, "startingNode"    # Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 647
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 648
    return-object v0

    .line 650
    :cond_4
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v1

    if-ne v1, p0, :cond_b

    .line 651
    return-object p1

    .line 653
    :cond_b
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 654
    .local v2, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {p0, v2}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v3

    .line 655
    .local v3, "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    if-eqz v3, :cond_26

    .line 656
    return-object v3

    .line 658
    .end local v2    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v3    # "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    :cond_26
    goto :goto_13

    .line 659
    :cond_27
    return-object v0
.end method

.method private blacklist findDisplayPlacements(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;
    .registers 9
    .param p1, "bounds1"    # Landroid/graphics/RectF;
    .param p2, "bounds2"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v0, "placements":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5f

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5f

    .line 719
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3c

    .line 720
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_3c
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_5f

    .line 723
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_5f
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b7

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b7

    .line 727
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_94

    .line 728
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_94
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_b7

    .line 731
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_b7
    return-object v0
.end method

.method private static blacklist findRightMostDisplay(Landroid/hardware/display/DisplayTopology$TreeNode;F)Landroid/util/Pair;
    .registers 10
    .param p0, "display"    # Landroid/hardware/display/DisplayTopology$TreeNode;
    .param p1, "xPos"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "F)",
            "Landroid/util/Pair<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 620
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 621
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Float;>;"
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 624
    .local v2, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v3

    packed-switch v3, :pswitch_data_86

    .line 629
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :pswitch_41
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    add-float/2addr v3, p1

    .local v3, "childXPos":F
    goto :goto_5e

    .line 627
    .end local v3    # "childXPos":F
    :pswitch_47
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    sub-float v3, p1, v3

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    add-float/2addr v3, v4

    .restart local v3    # "childXPos":F
    goto :goto_5e

    .line 625
    .end local v3    # "childXPos":F
    :pswitch_58
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    sub-float v3, p1, v3

    .line 633
    .restart local v3    # "childXPos":F
    :goto_5e
    invoke-static {v2, v3}, Landroid/hardware/display/DisplayTopology;->findRightMostDisplay(Landroid/hardware/display/DisplayTopology$TreeNode;F)Landroid/util/Pair;

    move-result-object v4

    .line 635
    .local v4, "childResult":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Float;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_84

    .line 636
    new-instance v5, Landroid/util/Pair;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/display/DisplayTopology$TreeNode;

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v5

    .line 638
    .end local v2    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v3    # "childXPos":F
    .end local v4    # "childResult":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Float;>;"
    :cond_84
    goto :goto_11

    .line 639
    :cond_85
    return-object v0

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_58
        :pswitch_47
        :pswitch_41
        :pswitch_47
    .end packed-switch
.end method

.method private static blacklist floatEquals(FF)Z
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 821
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_20

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_10
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    :goto_21
    return v0
.end method

.method private static blacklist getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V
    .registers 16
    .param p3, "display"    # Landroid/hardware/display/DisplayTopology$TreeNode;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "FFI)V"
        }
    .end annotation

    .line 676
    .local p0, "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .local p1, "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .local p2, "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    if-nez p3, :cond_3

    .line 677
    return-void

    .line 679
    :cond_3
    if-eqz p0, :cond_17

    .line 680
    new-instance v0, Landroid/graphics/RectF;

    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    add-float/2addr v1, p4

    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    add-float/2addr v2, p5

    invoke-direct {v0, p4, p5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :cond_17
    if-eqz p1, :cond_20

    .line 683
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :cond_20
    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 686
    .local v5, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    if-eqz p2, :cond_3a

    .line 687
    invoke-interface {p2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_3a
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v1

    if-nez v1, :cond_55

    .line 690
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    sub-float v6, p4, v1

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    add-float v7, p5, v1

    add-int/lit8 v8, p6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p0    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .end local p1    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .end local p2    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .local v2, "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .local v3, "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .local v4, "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    goto :goto_a2

    .line 692
    .end local v2    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .end local v3    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .end local v4    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .restart local p0    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .restart local p1    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .restart local p2    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    :cond_55
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p0    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .end local p1    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .end local p2    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .restart local v2    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .restart local v3    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .restart local v4    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_71

    .line 693
    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v6, p4, p0

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v7, p5, p0

    add-int/lit8 v8, p6, 0x1

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    goto :goto_a2

    .line 695
    :cond_71
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_8a

    .line 696
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v6, p4, p0

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    sub-float v7, p5, p0

    add-int/lit8 v8, p6, 0x1

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    goto :goto_a2

    .line 698
    :cond_8a
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_a2

    .line 699
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v6, p4, p0

    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v7, p5, p0

    add-int/lit8 v8, p6, 0x1

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    .line 702
    .end local v5    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    :cond_a2
    :goto_a2
    move-object p0, v2

    move-object p1, v3

    move-object p2, v4

    goto :goto_28

    .line 703
    .end local v2    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .end local v3    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .end local v4    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .restart local p0    # "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    .restart local p1    # "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    .restart local p2    # "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    :cond_a6
    return-void
.end method

.method static synthetic blacklist lambda$getGraph$2(Landroid/util/SparseArray;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 8
    .param p0, "bounds"    # Landroid/util/SparseArray;
    .param p1, "displayId1"    # Ljava/lang/Integer;
    .param p2, "displayId2"    # Ljava/lang/Integer;

    .line 748
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 749
    .local v0, "bounds1":Landroid/graphics/RectF;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 751
    .local v1, "bounds2":Landroid/graphics/RectF;
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    .line 752
    .local v2, "compareX":I
    if-eqz v2, :cond_1f

    .line 753
    return v2

    .line 755
    :cond_1f
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    return v3
.end method

.method static synthetic blacklist lambda$normalize$0(Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .registers 13
    .param p0, "depths"    # Ljava/util/Map;
    .param p1, "bounds"    # Ljava/util/Map;
    .param p2, "d1"    # Landroid/hardware/display/DisplayTopology$TreeNode;
    .param p3, "d2"    # Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 404
    if-ne p2, p3, :cond_4

    .line 405
    const/4 v0, 0x0

    return v0

    .line 408
    :cond_4
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 409
    .local v0, "compareDepths":I
    if-eqz v0, :cond_1f

    .line 410
    return v0

    .line 413
    :cond_1f
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 414
    .local v1, "bounds1":Landroid/graphics/RectF;
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 415
    .local v2, "bounds2":Landroid/graphics/RectF;
    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-double v3, v3

    iget v5, v1, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    float-to-double v5, v5

    iget v7, v2, Landroid/graphics/RectF;->top:F

    float-to-double v7, v7

    .line 416
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    .line 415
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    return v3
.end method

.method static synthetic blacklist lambda$normalize$1(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .registers 4
    .param p0, "d1"    # Landroid/hardware/display/DisplayTopology$TreeNode;
    .param p1, "d2"    # Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 527
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public static blacklist pxToDp(FI)F
    .registers 4
    .param p0, "px"    # F
    .param p1, "dpi"    # I

    .line 93
    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist addDisplay(IFF)V
    .registers 11
    .param p1, "displayId"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 172
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 173
    return-void

    .line 175
    :cond_9
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v0, :cond_1c

    .line 176
    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    iput-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 177
    iput p1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    goto :goto_6a

    .line 178
    :cond_1c
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 180
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    div-float v2, p2, v2

    sub-float v5, v0, v2

    .line 181
    .local v5, "offset":F
    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v4, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    .line 182
    .local v0, "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v0    # "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v5    # "offset":F
    goto :goto_6a

    .line 184
    :cond_48
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/display/DisplayTopology;->findRightMostDisplay(Landroid/hardware/display/DisplayTopology$TreeNode;F)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 185
    .local v6, "rightMostDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    .line 187
    .local v0, "newDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v0    # "newDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v6    # "rightMostDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    :goto_6a
    return-void
.end method

.method public blacklist copy()Landroid/hardware/display/DisplayTopology;
    .registers 4

    .line 539
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->copy()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    .line 540
    .local v0, "rootCopy":Landroid/hardware/display/DisplayTopology$TreeNode;
    :goto_c
    new-instance v1, Landroid/hardware/display/DisplayTopology;

    iget v2, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-direct {v1, v0, v2}, Landroid/hardware/display/DisplayTopology;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    return-object v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 577
    const-string v0, "DisplayTopology:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    const-string v0, "--------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 580
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrimaryDisplayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 584
    const-string v1, "Topology tree:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz v1, :cond_3e

    .line 586
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 587
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 588
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 590
    :cond_3e
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 594
    instance-of v0, p1, Landroid/hardware/display/DisplayTopology;

    if-nez v0, :cond_6

    .line 595
    const/4 v0, 0x0

    return v0

    .line 597
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getAbsoluteBounds()Landroid/util/SparseArray;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 551
    .local v1, "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    iget-object v4, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    .line 553
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 554
    .local v0, "boundsById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 555
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 556
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    goto :goto_1d

    .line 557
    :cond_3d
    return-object v0
.end method

.method public blacklist getGraph(Landroid/util/SparseIntArray;)Landroid/hardware/display/DisplayTopologyGraph;
    .registers 23
    .param p1, "densityPerDisplay"    # Landroid/util/SparseIntArray;

    .line 746
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology;->getAbsoluteBounds()Landroid/util/SparseArray;

    move-result-object v2

    .line 747
    .local v2, "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    new-instance v3, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    .line 757
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 758
    .local v4, "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2b

    .line 759
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 761
    .end local v5    # "i":I
    :cond_2b
    invoke-interface {v4, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 763
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 765
    .local v5, "adjacentDisplaysPerId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;>;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_37
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 766
    .local v7, "id":I
    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-nez v8, :cond_67

    .line 767
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot construct graph, no density for display "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "DisplayTopology"

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v6, 0x0

    return-object v6

    .line 770
    :cond_67
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 771
    .end local v7    # "id":I
    goto :goto_37

    .line 774
    :cond_7a
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_15a

    .line 775
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 776
    .local v7, "displayId1":I
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    .line 777
    .local v8, "bounds1":Landroid/graphics/RectF;
    nop

    .line 778
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 780
    .local v9, "adjacentDisplays1":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;>;"
    add-int/lit8 v10, v6, 0x1

    .local v10, "j":I
    :goto_9a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_148

    .line 781
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 782
    .local v11, "displayId2":I
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    .line 783
    .local v12, "bounds2":Landroid/graphics/RectF;
    nop

    .line 784
    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 786
    .local v13, "adjacentDisplays2":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;>;"
    invoke-direct {v0, v8, v12}, Landroid/hardware/display/DisplayTopology;->findDisplayPlacements(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v14

    .line 787
    .local v14, "placements1":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    invoke-direct {v0, v12, v8}, Landroid/hardware/display/DisplayTopology;->findDisplayPlacements(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v15

    .line 788
    .local v15, "placements2":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_c3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_fa

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v2

    .end local v2    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .local v18, "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    move-object/from16 v2, v17

    check-cast v2, Landroid/util/Pair;

    .line 789
    .local v2, "placement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;"
    move-object/from16 v17, v3

    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .local v17, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    new-instance v3, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    move-object/from16 v19, v4

    .end local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v19, "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 790
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v20, v6

    .end local v6    # "i":I
    .local v20, "i":I
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v3, v11, v4, v6}, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;-><init>(IIF)V

    .line 789
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    .end local v2    # "placement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;"
    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move/from16 v6, v20

    goto :goto_c3

    .line 792
    .end local v17    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .end local v18    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .end local v19    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20    # "i":I
    .local v2, "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .restart local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "i":I
    :cond_fa
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    .end local v2    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .end local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    .restart local v17    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .restart local v18    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .restart local v19    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20    # "i":I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_106
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 793
    .local v3, "placement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;"
    new-instance v4, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 794
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v16, v2

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v4, v7, v6, v2}, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;-><init>(IIF)V

    .line 793
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    .end local v3    # "placement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;"
    move-object/from16 v2, v16

    goto :goto_106

    .line 796
    :cond_12f
    iget v2, v12, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    const v4, 0x38d1b717    # 1.0E-4f

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_13c

    .line 798
    goto :goto_150

    .line 780
    .end local v11    # "displayId2":I
    .end local v12    # "bounds2":Landroid/graphics/RectF;
    .end local v13    # "adjacentDisplays2":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;>;"
    .end local v14    # "placements1":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    .end local v15    # "placements2":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    :cond_13c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move/from16 v6, v20

    goto/16 :goto_9a

    .end local v17    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .end local v18    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .end local v19    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20    # "i":I
    .restart local v2    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .restart local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "i":I
    :cond_148
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    .line 774
    .end local v2    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .end local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    .end local v7    # "displayId1":I
    .end local v8    # "bounds1":Landroid/graphics/RectF;
    .end local v9    # "adjacentDisplays1":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;>;"
    .end local v10    # "j":I
    .restart local v17    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .restart local v18    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .restart local v19    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20    # "i":I
    :goto_150
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    .end local v20    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_7b

    .end local v17    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .end local v18    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .end local v19    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .restart local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_15a
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    .line 803
    .end local v2    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .end local v4    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    .restart local v17    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Integer;>;"
    .restart local v18    # "bounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/RectF;>;"
    .restart local v19    # "displayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .line 804
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    .line 805
    .local v2, "nodes":[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16a
    array-length v4, v2

    if-ge v3, v4, :cond_18e

    .line 806
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 807
    .local v4, "displayId":I
    new-instance v6, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    .line 808
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v9, 0x0

    new-array v9, v9, [Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    invoke-direct {v6, v4, v7, v8}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;-><init>(II[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;)V

    aput-object v6, v2, v3

    .line 805
    .end local v4    # "displayId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_16a

    .line 811
    .end local v3    # "i":I
    :cond_18e
    new-instance v3, Landroid/hardware/display/DisplayTopologyGraph;

    iget v4, v0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-direct {v3, v4, v2}, Landroid/hardware/display/DisplayTopologyGraph;-><init>(I[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;)V

    return-object v3
.end method

.method public blacklist getPrimaryDisplayId()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    return v0
.end method

.method public blacklist getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 602
    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist normalize()V
    .registers 23

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v1, :cond_7

    .line 391
    return-void

    .line 393
    :cond_7
    iget-object v1, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-direct {v0, v1}, Landroid/hardware/display/DisplayTopology;->clampOffsets(Landroid/hardware/display/DisplayTopology$TreeNode;)V

    .line 395
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, v1

    .line 396
    .local v2, "bounds":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/graphics/RectF;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 397
    .local v3, "depths":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 398
    .local v4, "parents":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    iget-object v5, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    .line 403
    new-instance v1, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;

    invoke-direct {v1, v3, v2}, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 418
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 419
    .local v5, "displays":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    invoke-interface {v5, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 421
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_36
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_211

    .line 422
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 423
    .local v7, "targetDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    const/4 v8, 0x0

    .line 424
    .local v8, "lastIntersectingSourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    const/4 v9, 0x0

    .line 425
    .local v9, "lastOffsetX":F
    const/4 v10, 0x0

    .line 427
    .local v10, "lastOffsetY":F
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_46
    if-ge v11, v6, :cond_100

    .line 428
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v15, v16

    check-cast v15, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 429
    .local v15, "sourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/graphics/RectF;

    .line 430
    .local v13, "sourceBounds":Landroid/graphics/RectF;
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Landroid/graphics/RectF;

    .line 432
    .local v12, "targetBounds":Landroid/graphics/RectF;
    invoke-static {v13, v12}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v16

    if-nez v16, :cond_6c

    .line 433
    move-object/from16 v20, v1

    goto/16 :goto_f8

    .line 438
    :cond_6c
    iget v14, v12, Landroid/graphics/RectF;->left:F

    cmpl-float v14, v14, v17

    if-ltz v14, :cond_78

    .line 439
    iget v14, v13, Landroid/graphics/RectF;->right:F

    iget v0, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v0

    goto :goto_7e

    .line 440
    :cond_78
    iget v0, v13, Landroid/graphics/RectF;->left:F

    iget v14, v12, Landroid/graphics/RectF;->right:F

    sub-float v14, v0, v14

    :goto_7e
    nop

    .line 441
    .local v14, "offsetX":F
    iget v0, v12, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v17

    if-ltz v0, :cond_8e

    .line 442
    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    sub-float v0, v17, v0

    goto :goto_96

    .line 443
    :cond_8e
    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v17, v0

    :goto_96
    nop

    .line 444
    .local v0, "offsetY":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v20

    cmpg-float v17, v17, v20

    if-gtz v17, :cond_c9

    .line 445
    move/from16 v17, v0

    .end local v0    # "offsetY":F
    .local v17, "offsetY":F
    iget v0, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v14

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 446
    iget v0, v12, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v14

    iput v0, v12, Landroid/graphics/RectF;->right:F

    .line 448
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    move-object/from16 v20, v1

    const/4 v1, 0x1

    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .local v20, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    if-eq v0, v1, :cond_bf

    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c7

    .line 450
    :cond_bf
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v0

    add-float/2addr v0, v14

    invoke-static {v7, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 452
    :cond_c7
    const/4 v0, 0x0

    .end local v17    # "offsetY":F
    .restart local v0    # "offsetY":F
    goto :goto_f2

    .line 454
    .end local v20    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    :cond_c9
    move/from16 v17, v0

    move-object/from16 v20, v1

    .end local v0    # "offsetY":F
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .restart local v17    # "offsetY":F
    .restart local v20    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    iget v0, v12, Landroid/graphics/RectF;->top:F

    add-float v0, v0, v17

    iput v0, v12, Landroid/graphics/RectF;->top:F

    .line 455
    iget v0, v12, Landroid/graphics/RectF;->bottom:F

    add-float v0, v0, v17

    iput v0, v12, Landroid/graphics/RectF;->bottom:F

    .line 457
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    if-eqz v0, :cond_e6

    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ef

    .line 459
    :cond_e6
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v0

    add-float v0, v0, v17

    invoke-static {v7, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 461
    :cond_ef
    const/4 v14, 0x0

    move/from16 v0, v17

    .line 464
    .end local v17    # "offsetY":F
    .restart local v0    # "offsetY":F
    :goto_f2
    move-object v1, v15

    .line 465
    .end local v8    # "lastIntersectingSourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v1, "lastIntersectingSourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    move v8, v14

    .line 466
    .end local v9    # "lastOffsetX":F
    .local v8, "lastOffsetX":F
    move v9, v0

    move v10, v9

    move v9, v8

    move-object v8, v1

    .line 427
    .end local v0    # "offsetY":F
    .end local v1    # "lastIntersectingSourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v12    # "targetBounds":Landroid/graphics/RectF;
    .end local v13    # "sourceBounds":Landroid/graphics/RectF;
    .end local v14    # "offsetX":F
    .end local v15    # "sourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v8, "lastIntersectingSourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .restart local v9    # "lastOffsetX":F
    :goto_f8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    goto/16 :goto_46

    .end local v20    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    :cond_100
    move-object/from16 v20, v1

    const/4 v1, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x3

    .line 471
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .end local v11    # "j":I
    .restart local v20    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    if-nez v8, :cond_10d

    .line 473
    goto/16 :goto_209

    .line 475
    :cond_10d
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 476
    .local v0, "parent":Landroid/hardware/display/DisplayTopology$TreeNode;
    if-ne v0, v8, :cond_117

    .line 480
    goto/16 :goto_209

    .line 483
    :cond_117
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    .line 484
    .local v11, "childBounds":Landroid/graphics/RectF;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    .line 486
    .local v12, "parentBounds":Landroid/graphics/RectF;
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v13

    const-string v14, "Unexpected value: "

    packed-switch v13, :pswitch_data_232

    .line 491
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    :pswitch_147
    iget v13, v12, Landroid/graphics/RectF;->bottom:F

    iget v15, v11, Landroid/graphics/RectF;->top:F

    invoke-static {v13, v15}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v13

    goto :goto_16a

    .line 488
    :pswitch_150
    iget v13, v12, Landroid/graphics/RectF;->right:F

    iget v15, v11, Landroid/graphics/RectF;->left:F

    invoke-static {v13, v15}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v13

    goto :goto_16a

    .line 489
    :pswitch_159
    iget v13, v12, Landroid/graphics/RectF;->top:F

    iget v15, v11, Landroid/graphics/RectF;->bottom:F

    invoke-static {v13, v15}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v13

    goto :goto_16a

    .line 487
    :pswitch_162
    iget v13, v12, Landroid/graphics/RectF;->left:F

    iget v15, v11, Landroid/graphics/RectF;->right:F

    invoke-static {v13, v15}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v13

    .line 491
    :goto_16a
    nop

    .line 495
    .local v13, "areTouching":Z
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v15

    const/16 v16, 0x0

    const v21, 0x38d1b717    # 1.0E-4f

    packed-switch v15, :pswitch_data_23e

    .line 502
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :pswitch_192
    iget v14, v11, Landroid/graphics/RectF;->right:F

    add-float v14, v14, v21

    iget v15, v12, Landroid/graphics/RectF;->left:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1a8

    iget v14, v11, Landroid/graphics/RectF;->left:F

    iget v15, v12, Landroid/graphics/RectF;->right:F

    add-float v15, v15, v21

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1a8

    move v14, v1

    goto :goto_1c3

    :cond_1a8
    move/from16 v14, v16

    goto :goto_1c3

    .line 497
    :pswitch_1ab
    iget v14, v11, Landroid/graphics/RectF;->bottom:F

    add-float v14, v14, v21

    iget v15, v12, Landroid/graphics/RectF;->top:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1c1

    iget v14, v11, Landroid/graphics/RectF;->top:F

    iget v15, v12, Landroid/graphics/RectF;->bottom:F

    add-float v15, v15, v21

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1c1

    move v14, v1

    goto :goto_1c3

    :cond_1c1
    move/from16 v14, v16

    .line 502
    :goto_1c3
    and-int/2addr v13, v14

    .line 506
    if-nez v13, :cond_209

    .line 508
    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 509
    nop

    .line 510
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/RectF;

    .line 511
    .local v14, "lastIntersectingSourceDisplayBounds":Landroid/graphics/RectF;
    invoke-static {v8}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    cmpl-float v15, v9, v17

    if-eqz v15, :cond_1f4

    .line 514
    cmpl-float v1, v9, v17

    if-lez v1, :cond_1e6

    move/from16 v1, v18

    goto :goto_1e8

    :cond_1e6
    move/from16 v1, v16

    :goto_1e8
    invoke-static {v7, v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 515
    iget v1, v11, Landroid/graphics/RectF;->top:F

    iget v15, v14, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v15

    invoke-static {v7, v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    goto :goto_209

    .line 517
    :cond_1f4
    cmpl-float v15, v10, v17

    if-eqz v15, :cond_209

    .line 518
    cmpl-float v15, v10, v17

    if-lez v15, :cond_1fe

    move/from16 v1, v19

    :cond_1fe
    invoke-static {v7, v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 519
    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v15, v14, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v15

    invoke-static {v7, v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 421
    .end local v0    # "parent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v7    # "targetDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v8    # "lastIntersectingSourceDisplay":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v9    # "lastOffsetX":F
    .end local v10    # "lastOffsetY":F
    .end local v11    # "childBounds":Landroid/graphics/RectF;
    .end local v12    # "parentBounds":Landroid/graphics/RectF;
    .end local v13    # "areTouching":Z
    .end local v14    # "lastIntersectingSourceDisplayBounds":Landroid/graphics/RectF;
    :cond_209
    :goto_209
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    goto/16 :goto_36

    .end local v20    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    :cond_211
    move-object/from16 v20, v1

    .line 526
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    .end local v6    # "i":I
    .restart local v20    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    new-instance v0, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda2;-><init>()V

    .line 529
    .local v0, "idComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_230

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 530
    .local v6, "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 531
    .end local v6    # "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    goto :goto_21c

    .line 532
    :cond_230
    return-void

    nop

    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_162
        :pswitch_159
        :pswitch_150
        :pswitch_147
    .end packed-switch

    :pswitch_data_23e
    .packed-switch 0x0
        :pswitch_1ab
        :pswitch_192
        :pswitch_1ab
        :pswitch_192
    .end packed-switch
.end method

.method public blacklist rearrange(Ljava/util/Map;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p1, "newPos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/graphics/PointF;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v2, :cond_9

    .line 265
    return-void

    .line 267
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v2, "availableParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    iget-object v3, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    .line 271
    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology;->allNodesIdMap()Ljava/util/Map;

    move-result-object v3

    .line 275
    .local v3, "needsParent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v4, v5, :cond_1e3

    .line 279
    iget-object v4, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 280
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 281
    .local v5, "n":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 282
    .end local v5    # "n":Landroid/hardware/display/DisplayTopology$TreeNode;
    goto :goto_32

    .line 284
    :cond_46
    iget-object v4, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :goto_53
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1df

    .line 298
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 299
    .local v4, "bestDist":D
    const/4 v6, 0x0

    .local v6, "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    const/4 v7, 0x0

    .line 301
    .local v7, "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_65
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1ad

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 302
    .local v9, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 303
    .local v10, "childPos":Landroid/graphics/PointF;
    iget v11, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v12

    add-float/2addr v11, v12

    .line 304
    .local v11, "childRight":F
    iget v12, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v13

    add-float/2addr v12, v13

    .line 305
    .local v12, "childBottom":F
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_91
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 306
    .local v14, "parent":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    .line 307
    .local v15, "parentPos":Landroid/graphics/PointF;
    iget v0, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v16

    add-float v0, v0, v16

    .line 308
    .local v0, "parentRight":F
    move-wide/from16 v16, v4

    .end local v4    # "bestDist":D
    .local v16, "bestDist":D
    iget v4, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    .line 315
    .local v4, "parentBottom":F
    nop

    .line 316
    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move/from16 v18, v0

    .end local v0    # "parentRight":F
    .local v18, "parentRight":F
    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v19, v5

    iget v5, v10, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v5, v19, v0

    .line 317
    .local v5, "xOverlap":F
    nop

    .line 318
    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move/from16 v19, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v20, v4

    .end local v4    # "parentBottom":F
    .local v20, "parentBottom":F
    iget v4, v10, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v19, v0

    .line 323
    .local v0, "yOverlap":F
    cmpl-float v4, v5, v0

    if-lez v4, :cond_123

    .line 335
    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v4

    move/from16 v19, v0

    .end local v0    # "yOverlap":F
    .local v19, "yOverlap":F
    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v0, v5

    .line 336
    .local v0, "xDeviation":F
    iget v4, v10, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    .end local v0    # "xDeviation":F
    .local v21, "xDeviation":F
    iget v0, v15, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_105

    .line 337
    iget v0, v15, Landroid/graphics/PointF;->y:F

    sub-float v0, v12, v0

    .line 338
    .local v0, "yDeviation":F
    const/4 v4, 0x1

    .local v4, "pos":I
    goto :goto_10a

    .line 340
    .end local v0    # "yDeviation":F
    .end local v4    # "pos":I
    :cond_105
    iget v0, v10, Landroid/graphics/PointF;->y:F

    sub-float v0, v20, v0

    .line 341
    .restart local v0    # "yDeviation":F
    const/4 v4, 0x3

    .line 343
    .restart local v4    # "pos":I
    :goto_10a
    move/from16 v22, v0

    .end local v0    # "yDeviation":F
    .local v22, "yDeviation":F
    iget v0, v10, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    sub-float v0, v23, v0

    move/from16 v28, v5

    move v5, v0

    move/from16 v0, v21

    move/from16 v21, v28

    move-object/from16 v28, v6

    move v6, v4

    move/from16 v4, v22

    move-object/from16 v22, v28

    .local v0, "offset":F
    goto :goto_15e

    .line 345
    .end local v4    # "pos":I
    .end local v19    # "yOverlap":F
    .end local v21    # "xDeviation":F
    .end local v22    # "yDeviation":F
    .local v0, "yOverlap":F
    :cond_123
    move/from16 v19, v0

    .end local v0    # "yOverlap":F
    .restart local v19    # "yOverlap":F
    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v0

    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v0, v19

    .line 346
    .local v0, "yDeviation":F
    iget v4, v10, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    .end local v0    # "yDeviation":F
    .local v21, "yDeviation":F
    iget v0, v15, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_143

    .line 347
    iget v0, v15, Landroid/graphics/PointF;->x:F

    sub-float v0, v11, v0

    .line 348
    .local v0, "xDeviation":F
    const/4 v4, 0x0

    .restart local v4    # "pos":I
    goto :goto_148

    .line 350
    .end local v0    # "xDeviation":F
    .end local v4    # "pos":I
    :cond_143
    iget v0, v10, Landroid/graphics/PointF;->x:F

    sub-float v0, v18, v0

    .line 351
    .restart local v0    # "xDeviation":F
    const/4 v4, 0x2

    .line 353
    .restart local v4    # "pos":I
    :goto_148
    move/from16 v22, v0

    .end local v0    # "xDeviation":F
    .local v22, "xDeviation":F
    iget v0, v10, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    sub-float v0, v23, v0

    move/from16 v28, v5

    move v5, v0

    move/from16 v0, v22

    move-object/from16 v22, v6

    move v6, v4

    move/from16 v4, v21

    move/from16 v21, v28

    .line 356
    .restart local v0    # "xDeviation":F
    .local v4, "yDeviation":F
    .local v5, "offset":F
    .local v6, "pos":I
    .local v21, "xOverlap":F
    .local v22, "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    :goto_15e
    move-object/from16 v24, v7

    move-object/from16 v23, v8

    .end local v7    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v24, "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    float-to-double v7, v0

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .end local v9    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v10    # "childPos":Landroid/graphics/PointF;
    .local v25, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v26, "childPos":Landroid/graphics/PointF;
    float-to-double v9, v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    .line 357
    .local v7, "dist":D
    cmpl-double v9, v7, v16

    if-ltz v9, :cond_180

    .line 358
    move-object/from16 v0, p0

    move-wide/from16 v4, v16

    move-object/from16 v6, v22

    move-object/from16 v8, v23

    move-object/from16 v7, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    goto/16 :goto_91

    .line 361
    :cond_180
    move-wide v9, v7

    .line 362
    .end local v16    # "bestDist":D
    .local v9, "bestDist":D
    move-object/from16 v16, v25

    .line 363
    .end local v22    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v16, "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    move-object/from16 v17, v14

    .line 366
    .end local v24    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v17, "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    move/from16 v27, v0

    move-object/from16 v0, v16

    .end local v16    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v0, "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v27, "xDeviation":F
    invoke-static {v0, v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 367
    invoke-static {v0, v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 368
    .end local v4    # "yDeviation":F
    .end local v5    # "offset":F
    .end local v6    # "pos":I
    .end local v7    # "dist":D
    .end local v14    # "parent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v15    # "parentPos":Landroid/graphics/PointF;
    .end local v18    # "parentRight":F
    .end local v19    # "yOverlap":F
    .end local v20    # "parentBottom":F
    .end local v21    # "xOverlap":F
    .end local v27    # "xDeviation":F
    move-object v6, v0

    move-wide v4, v9

    move-object/from16 v7, v17

    move-object/from16 v8, v23

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v0, p0

    goto/16 :goto_91

    .line 305
    .end local v0    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v17    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v25    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v26    # "childPos":Landroid/graphics/PointF;
    .local v4, "bestDist":D
    .local v6, "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v7, "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .local v9, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .restart local v10    # "childPos":Landroid/graphics/PointF;
    :cond_19d
    move-wide/from16 v16, v4

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .line 369
    .end local v4    # "bestDist":D
    .end local v6    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v7    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v9    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v10    # "childPos":Landroid/graphics/PointF;
    .end local v11    # "childRight":F
    .end local v12    # "childBottom":F
    .local v16, "bestDist":D
    .restart local v22    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .restart local v24    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    move-object/from16 v0, p0

    goto/16 :goto_65

    .line 371
    .end local v16    # "bestDist":D
    .end local v22    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v24    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    .restart local v4    # "bestDist":D
    .restart local v6    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .restart local v7    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    :cond_1ad
    nop

    .line 373
    invoke-virtual {v7, v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->addChild(Landroid/hardware/display/DisplayTopology$TreeNode;)V

    .line 374
    invoke-static {v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c6

    .line 377
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v4    # "bestDist":D
    .end local v6    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v7    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    move-object/from16 v0, p0

    goto/16 :goto_53

    .line 375
    .restart local v4    # "bestDist":D
    .restart local v6    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .restart local v7    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    :cond_1c6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "child not in pending set! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    .end local v4    # "bestDist":D
    .end local v6    # "bestChild":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v7    # "bestParent":Landroid/hardware/display/DisplayTopology$TreeNode;
    :cond_1df
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/DisplayTopology;->normalize()V

    .line 383
    return-void

    .line 276
    :cond_1e3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newPos has wrong number of entries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeDisplay(I)Z
    .registers 7
    .param p1, "displayId"    # I

    .line 224
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    if-nez v0, :cond_a

    .line 225
    const/4 v0, 0x0

    return v0

    .line 229
    :cond_a
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 230
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 232
    :goto_17
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 233
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 234
    .local v1, "node":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    if-eq v2, p1, :cond_38

    .line 235
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/DisplayTopology;->addDisplay(IFF)V

    .line 237
    :cond_38
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 238
    .end local v1    # "node":Landroid/hardware/display/DisplayTopology$TreeNode;
    goto :goto_17

    .line 240
    :cond_40
    iget v1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    if-ne v1, p1, :cond_54

    .line 241
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz v1, :cond_51

    .line 242
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v1

    iput v1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    goto :goto_54

    .line 244
    :cond_51
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 247
    :cond_54
    :goto_54
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 607
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 608
    .local v0, "out":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 609
    .local v1, "writer":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayTopology;->dump(Ljava/io/PrintWriter;)V

    .line 610
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist updateDisplay(IFF)Z
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 200
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    .line 201
    .local v0, "display":Landroid/hardware/display/DisplayTopology$TreeNode;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 202
    return v1

    .line 204
    :cond_a
    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    invoke-static {v2, p2}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    invoke-static {v2, p3}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 205
    return v1

    .line 207
    :cond_1f
    invoke-static {v0, p2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 208
    invoke-static {v0, p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 209
    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->normalize()V

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updated, new width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayTopology"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 567
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 568
    iget v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    return-void
.end method
