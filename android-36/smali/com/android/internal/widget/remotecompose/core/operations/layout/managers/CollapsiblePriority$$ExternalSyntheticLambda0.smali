.class public final synthetic Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    check-cast p2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority;->lambda$sortWithPriorities$0(ILcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I

    move-result p1

    return p1
.end method
