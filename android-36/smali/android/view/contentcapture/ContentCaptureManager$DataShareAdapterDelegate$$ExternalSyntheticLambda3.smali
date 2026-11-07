.class public final synthetic Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Landroid/view/contentcapture/DataShareWriteAdapter;

    invoke-interface {p1}, Landroid/view/contentcapture/DataShareWriteAdapter;->onRejected()V

    return-void
.end method
