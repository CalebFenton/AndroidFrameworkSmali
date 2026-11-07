.class public interface abstract Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
.super Ljava/lang/Object;
.source "ScrollableComponent.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;,
        Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;
    }
.end annotation


# static fields
.field public static final blacklist SCROLL_HORIZONTAL:I = 0x1

.field public static final blacklist SCROLL_NONE:I = 0x0

.field public static final blacklist SCROLL_VERTICAL:I = 0x2


# virtual methods
.method public blacklist getScrollAxisRange()Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;
    .registers 2

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "offset"    # I

    .line 48
    return p2
.end method

.method public abstract blacklist scrollDirection()I
.end method

.method public blacklist scrollDirection(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "direction"    # Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "child"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportsScrollByOffset()Z
    .registers 2

    .line 37
    const/4 v0, 0x1

    return v0
.end method
