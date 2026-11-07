.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DecoratorModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    return-void
.end method
