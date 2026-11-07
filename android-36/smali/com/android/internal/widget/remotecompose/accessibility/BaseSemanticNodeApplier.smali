.class public abstract Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;
.super Ljava/lang/Object;
.source "BaseSemanticNodeApplier.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier<",
        "TN;>;"
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RemoteCompose"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    .local p0, "this":Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;, "Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist appendNullable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/String;

    .line 200
    .local p0, "this":Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;, "Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier<TN;>;"
    if-nez p1, :cond_3

    .line 201
    return-object p2

    .line 202
    :cond_3
    if-nez p2, :cond_6

    .line 203
    return-object p1

    .line 205
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist applyComponent(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Ljava/util/List;)V
    .registers 12
    .param p1, "remoteComposeAccessibility"    # Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;
    .param p3, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;, "Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier<TN;>;"
    .local p2, "nodeInfo":Ljava/lang/Object;, "TN;"
    .local p4, "semantics":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;>;"
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 53
    .local v0, "locationInWindow":[F
    invoke-virtual {p3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-int v5, v5

    aget v2, v0, v2

    .line 58
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    aget v4, v0, v4

    .line 59
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    invoke-direct {v1, v3, v5, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 62
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setUniqueId(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    instance-of v2, p3, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    if-eqz v2, :cond_53

    .line 65
    move-object v2, p3

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    .line 66
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getContentDescriptionId()Ljava/lang/Integer;

    move-result-object v2

    .line 65
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyContentDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 70
    move-object v2, p3

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    .line 71
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getTextId()Ljava/lang/Integer;

    move-result-object v2

    .line 70
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyText(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 75
    move-object v2, p3

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyRole(Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;Ljava/lang/Object;)V

    .line 78
    :cond_53
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applySemantics(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Ljava/util/List;)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_67

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_67

    .line 81
    const-string v2, ""

    invoke-virtual {p0, p2, v2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 84
    :cond_67
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v2, :cond_86

    .line 85
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 86
    .local v2, "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    const-class v3, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    .line 88
    .local v3, "scrollable":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    if-eqz v3, :cond_86

    .line 89
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentId()I

    move-result v4

    invoke-virtual {p0, p2, v4}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyListItem(Ljava/lang/Object;I)V

    .line 92
    .end local v2    # "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    .end local v3    # "scrollable":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    :cond_86
    return-void
.end method

.method protected blacklist applyContentDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V
    .registers 6
    .param p1, "contentDescriptionId"    # Ljava/lang/Integer;
    .param p3, "remoteComposeAccessibility"    # Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            ")V"
        }
    .end annotation

    .line 190
    .local p0, "this":Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;, "Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier<TN;>;"
    .local p2, "nodeInfo":Ljava/lang/Object;, "TN;"
    if-eqz p1, :cond_16

    .line 191
    nop

    .line 194
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p3, v1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->stringValue(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->appendNullable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 191
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 197
    :cond_16
    return-void
.end method

.method protected blacklist applyCoreSemantics(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;)V
    .registers 5
    .param p1, "remoteComposeAccessibility"    # Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;
    .param p3, "coreSemantics"    # Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;",
            ")V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;, "Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier<TN;>;"
    .local p2, "nodeInfo":Ljava/lang/Object;, "TN;"
    nop

    .line 143
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->getContentDescriptionId()Ljava/lang/Integer;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyContentDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 145
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyRole(Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->getTextId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyText(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 149
    nop

    .line 150
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->getStateDescriptionId()Ljava/lang/Integer;

    move-result-object v0

    .line 149
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyStateDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 152
    iget-boolean v0, p3, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    if-nez v0, :cond_26

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setEnabled(Ljava/lang/Object;Z)V

    .line 155
    :cond_26
    return-void
.end method

.method protected abstract blacklist applyListItem(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;I)V"
        }
    .end annotation
.end method

.method protected blacklist applyRole(Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;Ljava/lang/Object;)V
    .registers 4
    .param p1, "role"    # Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;",
            "TN;)V"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;, "Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier<TN;>;"
    .local p2, "nodeInfo":Ljava/lang/Object;, "TN;"
    if-eqz p1, :cond_9

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setRoleDescription(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    :cond_9
    return-void
.end method

.method protected abstract blacklist applyScrollable(Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;",
            "I)V"
        }
    .end annotation
.end method

.method protected blacklist applySemantics(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Ljava/util/List;)V
    .registers 9
    .param p1, "remoteComposeAccessibility"    # Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            "TN;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;, "Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier<TN;>;"
    .local p2, "nodeInfo":Ljava/lang/Object;, "TN;"
    .local p3, "semantics":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    .line 99
    .local v1, "semantic":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;
    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 100
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;

    if-eqz v2, :cond_21

    .line 101
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;

    .line 102
    .local v2, "coreSemantics":Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyCoreSemantics(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;)V

    .line 103
    .end local v2    # "coreSemantics":Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;
    goto :goto_87

    :cond_21
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    if-eqz v2, :cond_56

    .line 104
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    .line 105
    .local v2, "accessibleComponent":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 106
    const/4 v3, 0x1

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setClickable(Ljava/lang/Object;Z)V

    .line 109
    :cond_32
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getContentDescriptionId()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 110
    nop

    .line 111
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getContentDescriptionId()Ljava/lang/Integer;

    move-result-object v3

    .line 110
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyContentDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 116
    :cond_40
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getTextId()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 117
    nop

    .line 118
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getTextId()Ljava/lang/Integer;

    move-result-object v3

    .line 117
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyText(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    .line 123
    :cond_4e
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyRole(Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;Ljava/lang/Object;)V

    .line 124
    .end local v2    # "accessibleComponent":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;
    goto :goto_87

    :cond_56
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    if-eqz v2, :cond_6f

    .line 125
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    .line 127
    .local v2, "scrollableSemantic":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->supportsScrollByOffset()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 128
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->getScrollAxisRange()Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;

    move-result-object v3

    .line 129
    .local v3, "scrollAxis":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->scrollDirection()I

    move-result v4

    invoke-virtual {p0, p2, v3, v4}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyScrollable(Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;I)V

    .line 131
    .end local v2    # "scrollableSemantic":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    .end local v3    # "scrollAxis":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;
    :cond_6e
    goto :goto_87

    .line 132
    :cond_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown semantic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteCompose"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v1    # "semantic":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;
    :cond_87
    :goto_87
    goto/16 :goto_4

    .line 136
    :cond_89
    return-void
.end method

.method protected blacklist applyStateDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V
    .registers 6
    .param p1, "stateDescriptionId"    # Ljava/lang/Integer;
    .param p3, "remoteComposeAccessibility"    # Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            ")V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;, "Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier<TN;>;"
    .local p2, "nodeInfo":Ljava/lang/Object;, "TN;"
    if-eqz p1, :cond_16

    .line 162
    nop

    .line 165
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->getStateDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p3, v1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->stringValue(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->appendNullable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 162
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setStateDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 168
    :cond_16
    return-void
.end method

.method protected blacklist applyText(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V
    .registers 6
    .param p1, "textId"    # Ljava/lang/Integer;
    .param p3, "remoteComposeAccessibility"    # Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            ")V"
        }
    .end annotation

    .line 180
    .local p0, "this":Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;, "Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier<TN;>;"
    .local p2, "nodeInfo":Ljava/lang/Object;, "TN;"
    if-eqz p1, :cond_15

    .line 181
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->appendNullable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 184
    .end local v0    # "value":Ljava/lang/String;
    :cond_15
    return-void
.end method

.method protected abstract blacklist getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation
.end method

.method protected abstract blacklist getStateDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation
.end method

.method protected abstract blacklist getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation
.end method

.method protected abstract blacklist setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setClickable(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;Z)V"
        }
    .end annotation
.end method

.method protected abstract blacklist setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setEnabled(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;Z)V"
        }
    .end annotation
.end method

.method protected abstract blacklist setRoleDescription(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setStateDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setUniqueId(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
