.class public abstract Landroid/transition/VisibilityPropagation;
.super Landroid/transition/TransitionPropagation;
.source "VisibilityPropagation.java"


# static fields
.field private static final PROPNAME_VIEW_CENTER:Ljava/lang/String; = "android:visibilityPropagation:center"

.field private static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibilityPropagation:visibility"

.field private static final VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 37
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 38
    const-string/jumbo v1, "android:visibilityPropagation:visibility"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 39
    const-string/jumbo v1, "android:visibilityPropagation:center"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 37
    sput-object v0, Landroid/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    #@11
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Landroid/transition/TransitionPropagation;-><init>()V

    #@3
    return-void
.end method

.method private static getViewCoordinate(Landroid/transition/TransitionValues;I)I
    .locals 4
    .param p0, "values"    # Landroid/transition/TransitionValues;
    .param p1, "coordinateIndex"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 105
    if-nez p0, :cond_0

    #@3
    .line 106
    return v3

    #@4
    .line 109
    :cond_0
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string/jumbo v2, "android:visibilityPropagation:center"

    #@9
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [I

    #@f
    .line 110
    .local v0, "coordinates":[I
    if-nez v0, :cond_1

    #@11
    .line 111
    return v3

    #@12
    .line 114
    :cond_1
    aget v1, v0, p1

    #@14
    return v1
.end method


# virtual methods
.method public captureValues(Landroid/transition/TransitionValues;)V
    .locals 7
    .param p1, "values"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 44
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@4
    .line 45
    .local v1, "view":Landroid/view/View;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string/jumbo v4, "android:visibility:visibility"

    #@9
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Ljava/lang/Integer;

    #@f
    .line 46
    .local v2, "visibility":Ljava/lang/Integer;
    if-nez v2, :cond_0

    #@11
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@14
    move-result v3

    #@15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v2

    #@19
    .line 49
    :cond_0
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1b
    const-string/jumbo v4, "android:visibilityPropagation:visibility"

    #@1e
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 50
    const/4 v3, 0x2

    #@22
    new-array v0, v3, [I

    #@24
    .line 51
    .local v0, "loc":[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@27
    .line 52
    aget v3, v0, v5

    #@29
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    #@2c
    move-result v4

    #@2d
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@30
    move-result v4

    #@31
    add-int/2addr v3, v4

    #@32
    aput v3, v0, v5

    #@34
    .line 53
    aget v3, v0, v5

    #@36
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@39
    move-result v4

    #@3a
    div-int/lit8 v4, v4, 0x2

    #@3c
    add-int/2addr v3, v4

    #@3d
    aput v3, v0, v5

    #@3f
    .line 54
    aget v3, v0, v6

    #@41
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    #@44
    move-result v4

    #@45
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@48
    move-result v4

    #@49
    add-int/2addr v3, v4

    #@4a
    aput v3, v0, v6

    #@4c
    .line 55
    aget v3, v0, v6

    #@4e
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@51
    move-result v4

    #@52
    div-int/lit8 v4, v4, 0x2

    #@54
    add-int/2addr v3, v4

    #@55
    aput v3, v0, v6

    #@57
    .line 56
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@59
    const-string/jumbo v4, "android:visibilityPropagation:center"

    #@5c
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    .line 43
    return-void
.end method

.method public getPropagationProperties()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 61
    sget-object v0, Landroid/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getViewVisibility(Landroid/transition/TransitionValues;)I
    .locals 4
    .param p1, "values"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    .line 72
    if-nez p1, :cond_0

    #@4
    .line 73
    return v3

    #@5
    .line 75
    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@7
    const-string/jumbo v2, "android:visibilityPropagation:visibility"

    #@a
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/Integer;

    #@10
    .line 76
    .local v0, "visibility":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@12
    .line 77
    return v3

    #@13
    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public getViewX(Landroid/transition/TransitionValues;)I
    .locals 1
    .param p1, "values"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    invoke-static {p1, v0}, Landroid/transition/VisibilityPropagation;->getViewCoordinate(Landroid/transition/TransitionValues;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getViewY(Landroid/transition/TransitionValues;)I
    .locals 1
    .param p1, "values"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 101
    const/4 v0, 0x1

    #@1
    invoke-static {p1, v0}, Landroid/transition/VisibilityPropagation;->getViewCoordinate(Landroid/transition/TransitionValues;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method
