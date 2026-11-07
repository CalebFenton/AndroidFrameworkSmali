.class public interface abstract Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;
.super Ljava/lang/Object;
.source "SemanticNodeApplier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final blacklist VIRTUAL_VIEW_ID_KEY:Ljava/lang/String; = "VirtualViewId"


# virtual methods
.method public abstract blacklist addChildren(Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist applyComponent(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Ljava/util/List;)V
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
.end method
