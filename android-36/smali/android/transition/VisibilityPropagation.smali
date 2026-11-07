.class public abstract Landroid/transition/VisibilityPropagation;
.super Landroid/transition/TransitionPropagation;
.source "VisibilityPropagation.java"


# static fields
.field private static final greylist-max-o PROPNAME_VIEW_CENTER:Ljava/lang/String; = "android:visibilityPropagation:center"

.field private static final greylist-max-o PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibilityPropagation:visibility"

.field private static final greylist-max-o VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 37
    const-string v0, "android:visibilityPropagation:visibility"

    const-string v1, "android:visibilityPropagation:center"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/transition/TransitionPropagation;-><init>()V

    return-void
.end method

.method private static greylist-max-o getViewCoordinate(Landroid/transition/TransitionValues;I)I
    .registers 5
    .param p0, "values"    # Landroid/transition/TransitionValues;
    .param p1, "coordinateIndex"    # I

    .line 105
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 106
    return v0

    .line 109
    :cond_4
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibilityPropagation:center"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 110
    .local v1, "coordinates":[I
    if-nez v1, :cond_11

    .line 111
    return v0

    .line 114
    :cond_11
    aget v0, v1, p1

    return v0
.end method


# virtual methods
.method public whitelist captureValues(Landroid/transition/TransitionValues;)V
    .registers 9
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 44
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 45
    .local v0, "view":Landroid/view/View;
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 46
    .local v1, "visibility":Ljava/lang/Integer;
    if-nez v1, :cond_16

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 49
    :cond_16
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibilityPropagation:visibility"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 51
    .local v3, "loc":[I
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 52
    const/4 v4, 0x0

    aget v5, v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 53
    aget v5, v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 54
    const/4 v4, 0x1

    aget v5, v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 55
    aget v5, v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v2

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 56
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibilityPropagation:center"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public whitelist getPropagationProperties()[Ljava/lang/String;
    .registers 2

    .line 61
    sget-object v0, Landroid/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getViewVisibility(Landroid/transition/TransitionValues;)I
    .registers 5
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 72
    const/16 v0, 0x8

    if-nez p1, :cond_5

    .line 73
    return v0

    .line 75
    :cond_5
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibilityPropagation:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 76
    .local v1, "visibility":Ljava/lang/Integer;
    if-nez v1, :cond_12

    .line 77
    return v0

    .line 79
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getViewX(Landroid/transition/TransitionValues;)I
    .registers 3
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 90
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/transition/VisibilityPropagation;->getViewCoordinate(Landroid/transition/TransitionValues;I)I

    move-result v0

    return v0
.end method

.method public whitelist getViewY(Landroid/transition/TransitionValues;)I
    .registers 3
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 101
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/transition/VisibilityPropagation;->getViewCoordinate(Landroid/transition/TransitionValues;I)I

    move-result v0

    return v0
.end method
