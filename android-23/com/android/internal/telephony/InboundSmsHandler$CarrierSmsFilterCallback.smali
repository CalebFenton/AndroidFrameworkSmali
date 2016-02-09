.class final Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierSmsFilterCallback"
.end annotation


# instance fields
.field private final mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p2, "smsFilter"    # Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@0
    .prologue
    .line 1196
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    #@5
    .line 1197
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@7
    .line 1196
    return-void
.end method


# virtual methods
.method public onDownloadMmsComplete(I)V
    .locals 3
    .param p1, "result"    # I

    #@0
    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Unexpected onDownloadMmsComplete call with result: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@19
    .line 1241
    return-void
.end method

.method public onFilterComplete(Z)V
    .locals 7
    .param p1, "keepMessage"    # Z

    #@0
    .prologue
    .line 1205
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@2
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@4
    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->disposeConnection(Landroid/content/Context;)V

    #@9
    .line 1207
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "onFilterComplete: keepMessage is "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap2(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    #@22
    .line 1208
    if-eqz p1, :cond_0

    #@24
    .line 1209
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@26
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@28
    invoke-static {v3}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get1(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)[[B

    #@2b
    move-result-object v3

    #@2c
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@2e
    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get3(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    .line 1210
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@34
    invoke-static {v5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get0(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)I

    #@37
    move-result v5

    #@38
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@3a
    invoke-static {v6}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get2(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    #@3d
    move-result-object v6

    #@3e
    .line 1209
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V

    #@41
    .line 1204
    :goto_0
    return-void

    #@42
    .line 1213
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@45
    move-result-wide v0

    #@46
    .line 1216
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@48
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@4a
    invoke-static {v3}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get2(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    #@4d
    move-result-object v3

    #@4e
    invoke-static {v3}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-get0(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    .line 1217
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@54
    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get2(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    #@57
    move-result-object v4

    #@58
    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-get1(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    .line 1216
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    .line 1219
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@62
    .line 1221
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@64
    const/4 v3, 0x3

    #@65
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    #@68
    goto :goto_0

    #@69
    .line 1218
    :catchall_0
    move-exception v2

    #@6a
    .line 1219
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6d
    .line 1218
    throw v2
.end method

.method public onSendMmsComplete(I[B)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B

    #@0
    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Unexpected onSendMmsComplete call with result: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@19
    .line 1236
    return-void
.end method

.method public onSendMultipartSmsComplete(I[I)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I

    #@0
    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Unexpected onSendMultipartSmsComplete call with result: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@19
    .line 1231
    return-void
.end method

.method public onSendSmsComplete(II)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "messageRef"    # I

    #@0
    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Unexpected onSendSmsComplete call with result: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@19
    .line 1226
    return-void
.end method
