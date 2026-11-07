.class public final Landroid/view/ViewGroup$InspectionCompanion;
.super Ljava/lang/Object;
.source "ViewGroup$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAddStatesFromChildrenId:I

.field private blacklist mAlwaysDrawnWithCacheId:I

.field private blacklist mAnimationCacheId:I

.field private blacklist mClipChildrenId:I

.field private blacklist mClipToPaddingId:I

.field private blacklist mDescendantFocusabilityId:I

.field private blacklist mLayoutAnimationId:I

.field private blacklist mLayoutModeId:I

.field private blacklist mPersistentDrawingCacheId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mSplitMotionEventsId:I

.field private blacklist mTouchscreenBlocksFocusId:I

.field private blacklist mTransitionGroupId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 9
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 85
    const-string v0, "addStatesFromChildren"

    const v1, 0x10100f0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mAddStatesFromChildrenId:I

    .line 86
    const-string v0, "alwaysDrawnWithCache"

    const v1, 0x10100ef

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mAlwaysDrawnWithCacheId:I

    .line 87
    const-string v0, "animationCache"

    const v1, 0x10100ed

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mAnimationCacheId:I

    .line 88
    const-string v0, "clipChildren"

    const v1, 0x10100ea

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mClipChildrenId:I

    .line 89
    const-string v0, "clipToPadding"

    const v1, 0x10100eb

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mClipToPaddingId:I

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 91
    .local v0, "descendantFocusabilityEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/high16 v1, 0x20000

    const-string v2, "beforeDescendants"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    const/high16 v1, 0x40000

    const-string v2, "afterDescendants"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    const/high16 v1, 0x60000

    const-string v2, "blocksDescendants"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v2, "descendantFocusability"

    const v3, 0x10100f1

    invoke-interface {p1, v2, v3, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$InspectionCompanion;->mDescendantFocusabilityId:I

    .line 95
    const-string v1, "layoutAnimation"

    const v2, 0x10100ec

    invoke-interface {p1, v1, v2}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$InspectionCompanion;->mLayoutAnimationId:I

    .line 96
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 97
    .local v1, "layoutModeEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v2, "clipBounds"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    const-string v2, "opticalBounds"

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v5, "layoutMode"

    const v6, 0x10103da

    invoke-interface {p1, v5, v6, v2}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$InspectionCompanion;->mLayoutModeId:I

    .line 100
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 101
    .local v2, "persistentDrawingCacheEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v5, "none"

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    const-string v3, "animation"

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    const/4 v3, 0x2

    const-string/jumbo v5, "scrolling"

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    const/4 v3, 0x3

    const-string v5, "all"

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v5, "persistentDrawingCache"

    const v6, 0x10100ee

    invoke-interface {p1, v5, v6, v3}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v3

    iput v3, p0, Landroid/view/ViewGroup$InspectionCompanion;->mPersistentDrawingCacheId:I

    .line 106
    const-string/jumbo v3, "splitMotionEvents"

    const v5, 0x10102ef

    invoke-interface {p1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/view/ViewGroup$InspectionCompanion;->mSplitMotionEventsId:I

    .line 107
    const-string/jumbo v3, "touchscreenBlocksFocus"

    const v5, 0x101048f

    invoke-interface {p1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/view/ViewGroup$InspectionCompanion;->mTouchscreenBlocksFocusId:I

    .line 108
    const-string/jumbo v3, "transitionGroup"

    const v5, 0x1010401

    invoke-interface {p1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/view/ViewGroup$InspectionCompanion;->mTransitionGroupId:I

    .line 109
    iput-boolean v4, p0, Landroid/view/ViewGroup$InspectionCompanion;->mPropertiesMapped:Z

    .line 110
    return-void
.end method

.method public blacklist readProperties(Landroid/view/ViewGroup;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/view/ViewGroup;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 114
    iget-boolean v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_71

    .line 117
    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mAddStatesFromChildrenId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->addStatesFromChildren()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 118
    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mAlwaysDrawnWithCacheId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 119
    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mAnimationCacheId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAnimationCacheEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 120
    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mClipChildrenId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 121
    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mClipToPaddingId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 122
    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mDescendantFocusabilityId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 123
    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mLayoutAnimationId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 124
    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mLayoutModeId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 125
    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mPersistentDrawingCacheId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 126
    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mSplitMotionEventsId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isMotionEventSplittingEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 127
    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mTouchscreenBlocksFocusId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 128
    iget v0, p0, Landroid/view/ViewGroup$InspectionCompanion;->mTransitionGroupId:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 129
    return-void

    .line 115
    :cond_71
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 17
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup$InspectionCompanion;->readProperties(Landroid/view/ViewGroup;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
