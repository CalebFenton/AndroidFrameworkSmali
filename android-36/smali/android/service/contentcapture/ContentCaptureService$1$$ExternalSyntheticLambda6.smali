.class public final synthetic Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 0
    check-cast p1, Landroid/service/contentcapture/ContentCaptureService;

    check-cast p2, Landroid/view/contentcapture/ContentCaptureContext;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Lcom/android/internal/os/IResultReceiver;

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    move-object p0, p1

    move-object p1, p2

    move p2, p3

    move p3, p4

    move-object p4, p5

    move p5, p6

    invoke-static/range {p0 .. p5}, Landroid/service/contentcapture/ContentCaptureService$1;->$r8$lambda$bmWHvTVbpMyMJierxBdBj5I6i_U(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method
