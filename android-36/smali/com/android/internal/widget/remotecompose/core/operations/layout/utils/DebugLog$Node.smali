.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;
.super Ljava/lang/Object;
.source "DebugLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field public blacklist endString:Ljava/lang/String;

.field public blacklist list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist name:Ljava/lang/String;

.field public blacklist parent:Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;Ljava/lang/String;)V
    .registers 5
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;
    .param p2, "name"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;->list:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;->parent:Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;

    .line 36
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;->name:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;->endString:Ljava/lang/String;

    .line 38
    if-eqz p1, :cond_28

    .line 39
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;->add(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;)V

    .line 41
    :cond_28
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;)V
    .registers 3
    .param p1, "node"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;

    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog$Node;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method
