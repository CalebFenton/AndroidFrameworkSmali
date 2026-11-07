.class Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;
.super Ljava/lang/Object;
.source "MbmsGroupCallServiceBase.java"

# interfaces
.implements Landroid/telephony/mbms/GroupCallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

.field final synthetic blacklist val$callback:Landroid/telephony/mbms/IGroupCallCallback;

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;Landroid/telephony/mbms/IGroupCallCallback;II)V
    .registers 5
    .param p1, "this$1"    # Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$callback:Landroid/telephony/mbms/IGroupCallCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$subscriptionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBroadcastSignalStrengthUpdated(I)V
    .registers 6
    .param p1, "signalStrength"    # I

    .line 159
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$callback:Landroid/telephony/mbms/IGroupCallCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IGroupCallCallback;->onBroadcastSignalStrengthUpdated(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 162
    goto :goto_12

    .line 160
    :catch_6
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v1, v1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist onError(ILjava/lang/String;)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 139
    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    .line 143
    :try_start_3
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$callback:Landroid/telephony/mbms/IGroupCallCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IGroupCallCallback;->onError(ILjava/lang/String;)V

    .line 146
    goto :goto_1e

    .line 144
    :catch_9
    move-exception v0

    goto :goto_13

    .line 140
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Middleware cannot send an unknown error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;
    .end local p1    # "errorCode":I
    .end local p2    # "message":Ljava/lang/String;
    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_9

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;
    .restart local p1    # "errorCode":I
    .restart local p2    # "message":Ljava/lang/String;
    :goto_13
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v1, v1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method public whitelist onGroupCallStateChanged(II)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .line 151
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$callback:Landroid/telephony/mbms/IGroupCallCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IGroupCallCallback;->onGroupCallStateChanged(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 154
    goto :goto_12

    .line 152
    :catch_6
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v1, v1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method
