.class public Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;
.super Ljava/lang/Object;
.source "CoreDocumentAccessibility.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;


# instance fields
.field private final blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

.field private final blacklist mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p2, "remoteContext"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 56
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 57
    return-void
.end method

.method static blacklist componentStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;
    .registers 4
    .param p0, "root"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation

    .line 277
    nop

    .line 278
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    .line 279
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda3;-><init>()V

    .line 280
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 277
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist findScrollable(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    .registers 3
    .param p0, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    .line 158
    .local v0, "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :goto_4
    if-eqz v0, :cond_16

    .line 159
    const-class v1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    .line 161
    .local v1, "scrollable":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    if-eqz v1, :cond_11

    .line 162
    return-object v1

    .line 164
    :cond_11
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    .line 166
    .end local v1    # "scrollable":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    goto :goto_4

    .line 168
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist isClickAction(I)Z
    .registers 2
    .param p0, "action"    # I

    .line 141
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static blacklist isContainerWithSemantics(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 3
    .param p0, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 312
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    if-eqz v0, :cond_c

    .line 313
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result v0

    return v0

    .line 316
    :cond_c
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-nez v0, :cond_12

    .line 317
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_12
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 321
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;-><init>()V

    .line 322
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 320
    return v0
.end method

.method static blacklist isInteresting(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 4
    .param p0, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 298
    return v1

    .line 301
    :cond_8
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isContainerWithSemantics(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 302
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->modifiersStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;-><init>()V

    .line 303
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    .line 301
    :cond_1e
    return v1
.end method

.method static blacklist isModifierWithSemantics(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Z
    .registers 2
    .param p0, "modifier"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 307
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    .line 308
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 307
    :goto_10
    return v0
.end method

.method private static blacklist isScrollBackwardAction(I)Z
    .registers 2
    .param p0, "action"    # I

    .line 129
    const/16 v0, 0x2000

    if-eq p0, v0, :cond_11

    const v0, 0x1020038

    if-eq p0, v0, :cond_11

    const v0, 0x1020039

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private static blacklist isScrollForwardAction(I)Z
    .registers 2
    .param p0, "action"    # I

    .line 135
    const/16 v0, 0x1000

    if-eq p0, v0, :cond_11

    const v0, 0x102003a

    if-eq p0, v0, :cond_11

    const v0, 0x102003b

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private static blacklist isShowOnScreenAction(I)Z
    .registers 2
    .param p0, "action"    # I

    .line 125
    const v0, 0x1020036

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method static synthetic blacklist lambda$componentStream$3(Lcom/android/internal/widget/remotecompose/core/Operation;)Ljava/util/stream/Stream;
    .registers 2
    .param p0, "op"    # Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 282
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_c

    .line 283
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->componentStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 285
    :cond_c
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$findComponentById$0(ILcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 3
    .param p0, "virtualViewId"    # I
    .param p1, "op"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 74
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$modifiersStream$4(Lcom/android/internal/widget/remotecompose/core/Operation;)Z
    .registers 2
    .param p0, "it"    # Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 292
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    return v0
.end method

.method static synthetic blacklist lambda$modifiersStream$5(Lcom/android/internal/widget/remotecompose/core/Operation;)Ljava/util/stream/Stream;
    .registers 2
    .param p0, "it"    # Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 293
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$semanticModifiersForComponent$1(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Z
    .registers 2
    .param p0, "it"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 239
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    .line 241
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 239
    :goto_10
    return v0
.end method

.method static synthetic blacklist lambda$semanticModifiersForComponent$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;
    .registers 2
    .param p0, "i"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 242
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    return-object v0
.end method

.method static blacklist modifiersStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;
    .registers 3
    .param p0, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda5;-><init>()V

    .line 292
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda6;-><init>()V

    .line 293
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 291
    return-object v0
.end method

.method private blacklist showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 145
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->findScrollable(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    move-result-object v0

    .line 147
    .local v0, "scrollable":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    if-eqz v0, :cond_b

    .line 148
    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v1

    return v1

    .line 151
    :cond_b
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .registers 5
    .param p1, "virtualViewId"    # I

    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    .line 69
    .local v0, "root":Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    if-eqz v0, :cond_25

    const/4 v1, -0x1

    if-ne p1, v1, :cond_c

    goto :goto_25

    .line 73
    :cond_c
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->componentStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda4;-><init>(I)V

    .line 74
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 73
    return-object v1

    .line 70
    :cond_25
    :goto_25
    return-object v0
.end method

.method public blacklist getComponentIdAt(Landroid/graphics/PointF;)Ljava/lang/Integer;
    .registers 3
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 62
    sget-object v0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->RootId:Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist mergeMode(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .registers 8
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 81
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-nez v0, :cond_7

    .line 82
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object v0

    .line 85
    :cond_7
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    .line 88
    .local v0, "result":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 89
    .local v2, "modifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    if-eqz v3, :cond_3d

    .line 90
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    .line 92
    .local v3, "semantics":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;
    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->ordinal()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_3d

    .line 93
    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    .line 96
    .end local v2    # "modifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    .end local v3    # "semantics":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;
    :cond_3d
    goto :goto_18

    .line 98
    :cond_3e
    return-object v0
.end method

.method public blacklist performAction(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILandroid/os/Bundle;)Z
    .registers 7
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 102
    const/4 v0, 0x1

    .line 105
    .local v0, "needsRepaint":Z
    :try_start_1
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isClickAction(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->performClick(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_5e

    .line 118
    if-eqz v0, :cond_12

    .line 119
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 106
    :cond_12
    return v1

    .line 107
    :cond_13
    :try_start_13
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isScrollForwardAction(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 108
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->FORWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->scrollDirection(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_5e

    .line 118
    if-eqz v0, :cond_28

    .line 119
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 108
    :cond_28
    return v1

    .line 109
    :cond_29
    :try_start_29
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isScrollBackwardAction(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 110
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->BACKWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->scrollDirection(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z

    move-result v1
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_5e

    .line 118
    if-eqz v0, :cond_3e

    .line 119
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 110
    :cond_3e
    return v1

    .line 111
    :cond_3f
    :try_start_3f
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isShowOnScreenAction(I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 112
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v1
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_5e

    .line 118
    if-eqz v0, :cond_52

    .line 119
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 112
    :cond_52
    return v1

    .line 114
    :cond_53
    const/4 v0, 0x0

    .line 115
    nop

    .line 118
    if-eqz v0, :cond_5c

    .line 119
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 115
    :cond_5c
    const/4 v1, 0x0

    return v1

    .line 118
    :catchall_5e
    move-exception v1

    if-eqz v0, :cond_66

    .line 119
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 121
    :cond_66
    throw v1
.end method

.method public blacklist performClick(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 6
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/lang/String;)V

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)I
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "pixels"    # I

    .line 180
    const-class v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    .line 182
    .local v0, "scrollable":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    if-eqz v0, :cond_f

    .line 183
    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I

    move-result v1

    return v1

    .line 186
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist scrollDirection(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "direction"    # Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    .line 199
    const-class v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    .line 201
    .local v0, "scrollable":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    if-eqz v0, :cond_f

    .line 202
    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->scrollDirection(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z

    move-result v1

    return v1

    .line 205
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist semanticModifiersForComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/List;
    .registers 5
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;",
            ">;"
        }
    .end annotation

    .line 229
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-nez v0, :cond_9

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 233
    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 234
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    .line 236
    .local v0, "modifiers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda1;-><init>()V

    .line 237
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda2;-><init>()V

    .line 242
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 243
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 236
    return-object v1
.end method

.method public blacklist semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;
    .registers 8
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "useUnmergedTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    if-nez v0, :cond_b

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 253
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mergeMode(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    .line 254
    .local v0, "mergeMode":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->CLEAR_AND_SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-eq v0, v1, :cond_59

    if-nez p2, :cond_1a

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->MERGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-ne v0, v1, :cond_1a

    goto :goto_59

    .line 259
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 262
    .local v3, "child":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v4, :cond_57

    .line 263
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isInteresting(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 264
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 266
    :cond_4d
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 267
    invoke-virtual {p0, v4, p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object v4

    .line 266
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    .end local v3    # "child":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_57
    :goto_57
    goto :goto_25

    .line 273
    :cond_58
    return-object v1

    .line 256
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_59
    :goto_59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist stringValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "id"    # I

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRemoteComposeState()Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_11

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1
.end method
