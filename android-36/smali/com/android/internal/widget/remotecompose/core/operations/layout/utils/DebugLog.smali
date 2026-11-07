.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;,
        Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$LogNode;
    }
.end annotation


# static fields
.field public static final blacklist DEBUG_LAYOUT_ON:Z = false

.field public static blacklist currentNode:Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;

.field public static blacklist node:Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 59
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;

    const/4 v1, 0x0

    const-string v2, "Root"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->node:Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;

    .line 60
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->node:Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->currentNode:Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clear()V
    .registers 3

    .line 64
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;

    const/4 v1, 0x0

    const-string v2, "Root"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->node:Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;

    .line 65
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->node:Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->currentNode:Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;

    .line 66
    return-void
.end method

.method public static blacklist display()V
    .registers 0

    .line 160
    return-void
.end method

.method public static blacklist e()V
    .registers 0

    .line 99
    return-void
.end method

.method public static blacklist e(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V
    .registers 1
    .param p0, "valueSupplier"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;

    .line 115
    return-void
.end method

.method public static blacklist log(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V
    .registers 1
    .param p0, "valueSupplier"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;

    .line 88
    return-void
.end method

.method public static blacklist printNode(ILcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;Ljava/lang/StringBuilder;)V
    .registers 3
    .param p0, "indent"    # I
    .param p1, "node"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 151
    return-void
.end method

.method public static blacklist s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V
    .registers 1
    .param p0, "valueSupplier"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;

    .line 77
    return-void
.end method
