.class public interface abstract Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;
.super Ljava/lang/Object;
.source "RemoteComposeDocumentAccessibility.java"


# static fields
.field public static final blacklist ACTION_CLICK:I = 0x10

.field public static final blacklist RootId:Ljava/lang/Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->RootId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public abstract blacklist findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.end method

.method public abstract blacklist getComponentIdAt(Landroid/graphics/PointF;)Ljava/lang/Integer;
.end method

.method public abstract blacklist mergeMode(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
.end method

.method public abstract blacklist performAction(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILandroid/os/Bundle;)Z
.end method

.method public abstract blacklist semanticModifiersForComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/List;
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
.end method

.method public abstract blacklist semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;
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
.end method

.method public abstract blacklist stringValue(I)Ljava/lang/String;
.end method
