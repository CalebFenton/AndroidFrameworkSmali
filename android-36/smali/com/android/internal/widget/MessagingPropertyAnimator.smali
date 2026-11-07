.class public Lcom/android/internal/widget/MessagingPropertyAnimator;
.super Ljava/lang/Object;
.source "MessagingPropertyAnimator.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final blacklist ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist ALPHA_OUT:Landroid/view/animation/Interpolator;

.field private static final blacklist APPEAR_ANIMATION_LENGTH:J = 0xd2L

.field private static final blacklist CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private static final blacklist TAG_ALPHA_ANIMATOR:I = 0x102056b

.field private static final blacklist TAG_FIRST_LAYOUT:I = 0x102056c

.field private static final blacklist TAG_LAYOUT_TOP:I = 0x102056e

.field private static final blacklist TAG_TOP:I = 0x1020572

.field private static final blacklist TAG_TOP_ANIMATOR:I = 0x1020571

.field private static final blacklist TOP:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsetTop(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smupdateLayerType(Landroid/view/View;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 35
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 36
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingPropertyAnimator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    .line 44
    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator$1;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPropertyAnimator$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->TOP:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fadeIn(Landroid/view/View;)V
    .registers 6
    .param p0, "v"    # Landroid/view/View;

    .line 182
    const v0, 0x102056b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 183
    .local v1, "existing":Landroid/animation/ObjectAnimator;
    if-eqz v1, :cond_e

    .line 184
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 186
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_19

    .line 187
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_19
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_46

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 191
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 192
    sget-object v3, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    const-wide/16 v3, 0xd2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 194
    new-instance v3, Lcom/android/internal/widget/MessagingPropertyAnimator$3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MessagingPropertyAnimator$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 201
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V

    .line 202
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 203
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 204
    return-void

    :array_46
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static blacklist fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "endAction"    # Ljava/lang/Runnable;

    .line 215
    const v0, 0x102056b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 216
    .local v1, "existing":Landroid/animation/ObjectAnimator;
    if-eqz v1, :cond_e

    .line 217
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 219
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    invoke-static {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isHidingAnimated(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_51

    .line 226
    :cond_22
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v4, 0x1

    aput v3, v5, v4

    .line 226
    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 228
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    sget-object v3, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    const-wide/16 v5, 0xd2

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 230
    new-instance v3, Lcom/android/internal/widget/MessagingPropertyAnimator$4;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator$4;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    invoke-static {p0, v4}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V

    .line 241
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 242
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 243
    return-void

    .line 220
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    :cond_51
    :goto_51
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 221
    if-eqz p1, :cond_59

    .line 222
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 224
    :cond_59
    return-void
.end method

.method public static blacklist getLayoutTop(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 90
    const v0, 0x102056e

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 91
    .local v0, "tag":Ljava/lang/Integer;
    if-nez v0, :cond_10

    .line 92
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v1

    return v1

    .line 94
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static blacklist getTop(Landroid/view/View;)I
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 121
    const v0, 0x1020572

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 122
    .local v0, "tag":Ljava/lang/Integer;
    if-nez v0, :cond_10

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    return v1

    .line 125
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static blacklist isAnimatingAlpha(Landroid/view/View;)Z
    .registers 2
    .param p0, "v"    # Landroid/view/View;

    .line 255
    const v0, 0x102056b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static blacklist isAnimatingTranslation(Landroid/view/View;)Z
    .registers 2
    .param p0, "v"    # Landroid/view/View;

    .line 251
    const v0, 0x1020571

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist isFirstLayout(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 70
    const v0, 0x102056c

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 71
    .local v0, "tag":Ljava/lang/Boolean;
    if-nez v0, :cond_d

    .line 72
    const/4 v1, 0x1

    return v1

    .line 74
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static blacklist isHidingAnimated(Landroid/view/View;)Z
    .registers 2
    .param p0, "v"    # Landroid/view/View;

    .line 175
    instance-of v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v0, :cond_c

    .line 176
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->isHidingAnimated()Z

    move-result v0

    return v0

    .line 178
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$static$0(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020437

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static blacklist recycle(Landroid/view/View;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 78
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setFirstLayout(Landroid/view/View;Z)V

    .line 79
    return-void
.end method

.method public static blacklist setClippingDeactivated(Landroid/view/View;Z)V
    .registers 3
    .param p0, "transformedView"    # Landroid/view/View;
    .param p1, "deactivated"    # Z

    .line 246
    sget-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    .line 248
    return-void
.end method

.method private static blacklist setFirstLayout(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "first"    # Z

    .line 82
    const v0, 0x102056c

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method private static blacklist setLayoutTop(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "top"    # I

    .line 86
    const v0, 0x102056e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static blacklist setToLaidOutPosition(Landroid/view/View;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 259
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getLayoutTop(Landroid/view/View;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    .line 260
    return-void
.end method

.method private static blacklist setTop(Landroid/view/View;I)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 129
    const v0, 0x1020572

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 130
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateTopAndBottom(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method public static blacklist startLocalTranslationFrom(Landroid/view/View;ILandroid/view/animation/Interpolator;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startTranslation"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 105
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getLayoutTop(Landroid/view/View;)I

    move-result v1

    invoke-static {p0, v0, v1, p2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    .line 106
    return-void
.end method

.method public static blacklist startLocalTranslationTo(Landroid/view/View;ILandroid/view/animation/Interpolator;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "endTranslation"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 116
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    .line 117
    .local v0, "top":I
    add-int v1, v0, p1

    invoke-static {p0, v0, v1, p2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    .line 118
    return-void
.end method

.method private static blacklist startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V
    .registers 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 142
    const v0, 0x1020571

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 143
    .local v1, "existing":Landroid/animation/ObjectAnimator;
    if-eqz v1, :cond_e

    .line 144
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 146
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_4b

    if-eq p1, p2, :cond_4b

    .line 147
    invoke-static {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isHidingAnimated(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_4b

    .line 151
    :cond_23
    sget-object v2, Lcom/android/internal/widget/MessagingPropertyAnimator;->TOP:Landroid/util/IntProperty;

    filled-new-array {p1, p2}, [I

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 152
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    .line 153
    invoke-virtual {v2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    const-wide/16 v3, 0xd2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 155
    new-instance v3, Lcom/android/internal/widget/MessagingPropertyAnimator$2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MessagingPropertyAnimator$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 169
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 170
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 171
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 172
    return-void

    .line 148
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    :cond_4b
    :goto_4b
    invoke-static {p0, p2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    .line 149
    return-void
.end method

.method private static blacklist updateLayerType(Landroid/view/View;Z)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "animating"    # Z

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 208
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_18

    .line 209
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-ne v0, v2, :cond_18

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 212
    :cond_18
    :goto_18
    return-void
.end method

.method private static blacklist updateTopAndBottom(Landroid/view/View;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;

    .line 134
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    .line 135
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 136
    .local v1, "height":I
    invoke-virtual {p0, v0}, Landroid/view/View;->setTop(I)V

    .line 137
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Landroid/view/View;->setBottom(I)V

    .line 138
    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 60
    invoke-static {p1, p3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setLayoutTop(Landroid/view/View;I)V

    .line 61
    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isFirstLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 62
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setFirstLayout(Landroid/view/View;Z)V

    .line 63
    invoke-static {p1, p3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    .line 64
    return-void

    .line 66
    :cond_11
    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0, p3, v1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    .line 67
    return-void
.end method
