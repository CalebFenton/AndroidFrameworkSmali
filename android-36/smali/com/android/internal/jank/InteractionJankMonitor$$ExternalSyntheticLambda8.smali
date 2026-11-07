.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist invoke(JJJ)V
    .registers 8

    .line 0
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;->f$0:I

    move p0, v0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$end$5(IJJJ)V

    return-void
.end method
