.class Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;
.super Landroid/telephony/mbms/StreamingServiceCallback;
.source "MbmsStreamingServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

.field final synthetic blacklist val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IStreamingServiceCallback;II)V
    .registers 5
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-direct {p0}, Landroid/telephony/mbms/StreamingServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBroadcastSignalStrengthUpdated(I)V
    .registers 6
    .param p1, "signalStrength"    # I

    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onBroadcastSignalStrengthUpdated(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 213
    goto :goto_10

    .line 211
    :catch_6
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist onError(ILjava/lang/String;)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 178
    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    .line 182
    :try_start_3
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IStreamingServiceCallback;->onError(ILjava/lang/String;)V

    .line 185
    goto :goto_1c

    .line 183
    :catch_9
    move-exception v0

    goto :goto_13

    .line 179
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Middleware cannot send an unknown error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;
    .end local p1    # "errorCode":I
    .end local p2    # "message":Ljava/lang/String;
    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_9

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;
    .restart local p1    # "errorCode":I
    .restart local p2    # "message":Ljava/lang/String;
    :goto_13
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 186
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist onMediaDescriptionUpdated()V
    .registers 5

    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0}, Landroid/telephony/mbms/IStreamingServiceCallback;->onMediaDescriptionUpdated()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 204
    goto :goto_10

    .line 202
    :catch_6
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist onStreamMethodUpdated(I)V
    .registers 6
    .param p1, "methodType"    # I

    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onStreamMethodUpdated(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 222
    goto :goto_10

    .line 220
    :catch_6
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist onStreamStateUpdated(II)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .line 192
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IStreamingServiceCallback;->onStreamStateUpdated(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 195
    goto :goto_10

    .line 193
    :catch_6
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 196
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method
