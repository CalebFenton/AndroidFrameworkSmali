.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->getDownloadableSubscriptionMetadata(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic blacklist val$callback:Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

.field final synthetic blacklist val$forceDeactivateSim:Z

.field final synthetic blacklist val$portIndex:I

.field final synthetic blacklist val$slotId:I

.field final synthetic blacklist val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

.field final synthetic blacklist val$switchAfterDownload:Z


# direct methods
.method constructor blacklist <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ZIILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
    .registers 8
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
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

    .line 932
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput-boolean p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$switchAfterDownload:Z

    iput p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$slotId:I

    iput p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$portIndex:I

    iput-object p5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iput-boolean p6, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$forceDeactivateSim:Z

    iput-object p7, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$callback:Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 936
    iget-boolean v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$switchAfterDownload:Z

    if-eqz v0, :cond_2c

    .line 938
    :try_start_4
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$slotId:I

    iget v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$portIndex:I

    iget-object v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$forceDeactivateSim:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/service/euicc/EuiccService;->onGetDownloadableSubscriptionMetadata(IILandroid/telephony/euicc/DownloadableSubscription;Z)Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_14} :catch_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_4 .. :try_end_14} :catch_15

    .local v0, "result":Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
    goto :goto_2b

    .line 940
    .end local v0    # "result":Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
    :catch_15
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "EuiccService"

    const-string v2, "The new onGetDownloadableSubscriptionMetadata(int, int, DownloadableSubscription, boolean) is not implemented. Fall back to the old one."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v1, v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$slotId:I

    iget-object v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$forceDeactivateSim:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/euicc/EuiccService;->onGetDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Z)Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;

    move-result-object v0

    .line 946
    .local v0, "result":Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
    :goto_2b
    goto :goto_3a

    .line 950
    .end local v0    # "result":Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
    :cond_2c
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$slotId:I

    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$forceDeactivateSim:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/euicc/EuiccService;->onGetDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Z)Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;

    move-result-object v0

    .line 954
    .restart local v0    # "result":Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
    :goto_3a
    :try_start_3a
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;->val$callback:Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;->onComplete(Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40

    .line 957
    goto :goto_41

    .line 955
    :catch_40
    move-exception v1

    .line 958
    :goto_41
    return-void
.end method
