.class public final synthetic Landroid/service/contentcapture/ContentCaptureService$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    check-cast p1, Landroid/service/contentcapture/ContentCaptureService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/content/pm/ParceledListSlice;

    invoke-static {p1, p2, p3}, Landroid/service/contentcapture/ContentCaptureService$2;->$r8$lambda$HXAgZSz0lmkjYbfDt00C8Y4p1Xs(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;)V

    return-void
.end method
