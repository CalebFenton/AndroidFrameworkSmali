.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

.field final synthetic val$call:Lcom/android/ims/ImsCall;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;
    .param p2, "val$call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 1257
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    #@2
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->val$call:Lcom/android/ims/ImsCall;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 1261
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    #@2
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->val$call:Lcom/android/ims/ImsCall;

    #@6
    invoke-static {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@9
    move-result-object v0

    #@a
    .line 1262
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    #@c
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "onCallMerged: ImsPhoneConnection="

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@25
    .line 1263
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    #@27
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v4, "onCallMerged: CurrentVideoProvider="

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@44
    .line 1264
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    #@46
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@48
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->val$call:Lcom/android/ims/ImsCall;

    #@4a
    invoke-static {v2, v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    #@4d
    .line 1265
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    #@4f
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@51
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, "onCallMerged: CurrentVideoProvider="

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    .line 1259
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :goto_0
    return-void

    #@6d
    .line 1266
    :catch_0
    move-exception v1

    #@6e
    .line 1267
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    #@70
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@72
    new-instance v3, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v4, "onCallMerged: exception "

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v3

    #@82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@89
    goto :goto_0
.end method
