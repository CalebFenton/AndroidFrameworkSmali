.class public final synthetic Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/HashMap;

.field public final synthetic blacklist f$1:Ljava/util/HashMap;

.field public final synthetic blacklist f$2:Ljava/util/HashMap;

.field public final synthetic blacklist f$3:Ljava/util/HashMap;

.field public final synthetic blacklist f$4:Ljava/util/HashMap;

.field public final synthetic blacklist f$5:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;->f$1:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;->f$2:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;->f$3:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;->f$4:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;->f$5:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final blacklist visit(Lcom/android/internal/widget/remotecompose/core/Operation;)V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;->f$1:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;->f$2:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;->f$3:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;->f$4:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;->f$5:Ljava/util/HashMap;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->lambda$applyUpdate$1(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/Operation;)V

    return-void
.end method
