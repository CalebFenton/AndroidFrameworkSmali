.class public final synthetic Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->lambda$semanticModifiersForComponent$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    move-result-object p1

    return-object p1
.end method
