.class public final synthetic Landroid/service/contentcapture/ContentCaptureService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/contentcapture/ContentCaptureService;

.field public final synthetic blacklist f$1:Landroid/view/contentcapture/ContentCaptureSessionId;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureSessionId;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$$ExternalSyntheticLambda0;->f$0:Landroid/service/contentcapture/ContentCaptureService;

    iput-object p2, p0, Landroid/service/contentcapture/ContentCaptureService$$ExternalSyntheticLambda0;->f$1:Landroid/view/contentcapture/ContentCaptureSessionId;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$$ExternalSyntheticLambda0;->f$0:Landroid/service/contentcapture/ContentCaptureService;

    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService$$ExternalSyntheticLambda0;->f$1:Landroid/view/contentcapture/ContentCaptureSessionId;

    check-cast p1, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-static {v0, v1, p1}, Landroid/service/contentcapture/ContentCaptureService;->$r8$lambda$Azqdm1PMLvRVcHJ8G6Q4nwJm1cw(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method
