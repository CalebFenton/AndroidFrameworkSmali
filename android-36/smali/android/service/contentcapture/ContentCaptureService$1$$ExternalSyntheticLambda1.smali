.class public final synthetic Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p1, Landroid/service/contentcapture/ContentCaptureService;

    check-cast p2, Landroid/os/IBinder;

    invoke-static {p1, p2}, Landroid/service/contentcapture/ContentCaptureService$1;->$r8$lambda$8JC6fc1Gxw2srmc18hV6aq2oduE(Landroid/service/contentcapture/ContentCaptureService;Landroid/os/IBinder;)V

    return-void
.end method
