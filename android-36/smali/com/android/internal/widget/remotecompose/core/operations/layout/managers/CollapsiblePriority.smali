.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority;
.super Ljava/lang/Object;
.source "CollapsiblePriority.java"


# static fields
.field public static final blacklist HORIZONTAL:I = 0x0

.field public static final blacklist VERTICAL:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getPriority(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F
    .registers 5
    .param p0, "c"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p1, "orientation"    # I

    .line 37
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v0, :cond_1c

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 39
    .local v0, "lc":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    const-class v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;

    .line 41
    .local v1, "priority":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->getOrientation()I

    move-result v2

    if-ne v2, p1, :cond_1c

    .line 42
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->getPriority()F

    move-result v2

    return v2

    .line 45
    .end local v0    # "lc":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    .end local v1    # "priority":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;
    :cond_1c
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0
.end method

.method static synthetic blacklist lambda$sortWithPriorities$0(ILcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I
    .registers 6
    .param p0, "orientation"    # I
    .param p1, "t1"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "t2"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 59
    invoke-static {p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority;->getPriority(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F

    move-result v0

    .line 60
    .local v0, "p1":F
    invoke-static {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority;->getPriority(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F

    move-result v1

    .line 61
    .local v1, "p2":F
    sub-float v2, v1, v0

    float-to-int v2, v2

    return v2
.end method

.method static blacklist sortWithPriorities(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation

    .line 56
    .local p0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    .local v0, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;>;"
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 63
    return-object v0
.end method
