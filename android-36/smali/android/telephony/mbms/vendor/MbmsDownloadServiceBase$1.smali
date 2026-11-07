.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;
.super Landroid/telephony/mbms/MbmsDownloadSessionCallback;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

.field final synthetic blacklist val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IMbmsDownloadSessionCallback;II)V
    .registers 5
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
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

    .line 127
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$subscriptionId:I

    invoke-direct {p0}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(ILjava/lang/String;)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 131
    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    .line 135
    :try_start_3
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onError(ILjava/lang/String;)V

    .line 138
    goto :goto_1c

    .line 136
    :catch_9
    move-exception v0

    goto :goto_13

    .line 132
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Middleware cannot send an unknown error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;
    .end local p1    # "errorCode":I
    .end local p2    # "message":Ljava/lang/String;
    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_9

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;
    .restart local p1    # "errorCode":I
    .restart local p2    # "message":Ljava/lang/String;
    :goto_13
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist onFileServicesUpdated(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/FileServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/FileServiceInfo;>;"
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onFileServicesUpdated(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 147
    goto :goto_10

    .line 145
    :catch_6
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist onMiddlewareReady()V
    .registers 5

    .line 153
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    invoke-interface {v0}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onMiddlewareReady()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 156
    goto :goto_10

    .line 154
    :catch_6
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 157
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method
