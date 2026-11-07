.class public interface abstract Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;
.super Ljava/lang/Object;
.source "CarrierMessagingServiceWrapper.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarrierMessagingCallback"
.end annotation


# virtual methods
.method public whitelist onDownloadMmsComplete(I)V
    .registers 2
    .param p1, "result"    # I

    .line 393
    return-void
.end method

.method public whitelist onReceiveSmsComplete(I)V
    .registers 2
    .param p1, "result"    # I

    .line 341
    return-void
.end method

.method public whitelist onSendMmsComplete(I[B)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B

    .line 382
    return-void
.end method

.method public whitelist onSendMultipartSmsComplete(I[I)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I

    .line 368
    return-void
.end method

.method public whitelist onSendSmsComplete(II)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "messageRef"    # I

    .line 354
    return-void
.end method
