.class public final synthetic Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda3;
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

    check-cast p2, Landroid/view/contentcapture/DataShareRequest;

    check-cast p3, Landroid/service/contentcapture/IDataShareCallback;

    invoke-static {p1, p2, p3}, Landroid/service/contentcapture/ContentCaptureService$1;->$r8$lambda$bWf1Mouvf2BfRGf6knhCLmSneo0(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    return-void
.end method
