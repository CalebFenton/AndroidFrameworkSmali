.class public final synthetic Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda7;
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

    check-cast p3, Landroid/service/contentcapture/SnapshotData;

    invoke-static {p1, p2, p3}, Landroid/service/contentcapture/ContentCaptureService$1;->$r8$lambda$0tuRIcs-kl3hMZ-bOSPj8ECMvuY(Landroid/service/contentcapture/ContentCaptureService;ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method
