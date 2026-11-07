.class public interface abstract Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;
.super Ljava/lang/Object;
.source "AccessibleComponent.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;,
        Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    }
.end annotation


# virtual methods
.method public blacklist getContentDescriptionId()Ljava/lang/Integer;
    .registers 2

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .registers 2

    .line 101
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object v0
.end method

.method public blacklist getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    .registers 2

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTextId()Ljava/lang/Integer;
    .registers 2

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isClickable()Z
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method
