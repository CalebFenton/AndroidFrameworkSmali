.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$LogNode;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;
.source "DebugLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogNode"
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;Ljava/lang/String;)V
    .registers 3
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;
    .param p2, "name"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;Ljava/lang/String;)V

    .line 56
    return-void
.end method
