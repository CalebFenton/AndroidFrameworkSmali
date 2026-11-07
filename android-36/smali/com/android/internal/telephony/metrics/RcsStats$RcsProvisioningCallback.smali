.class public Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;
.super Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;
.source "RcsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/RcsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RcsProvisioningCallback"
.end annotation


# instance fields
.field private blacklist mEnableSingleRegistration:Z

.field private blacklist mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

.field private blacklist mRegistered:Z

.field private blacklist mSubId:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/RcsStats;Lcom/android/internal/telephony/metrics/RcsStats;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 663
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;-><init>()V

    .line 664
    const-string v0, "created RcsProvisioningCallback"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->logd(Ljava/lang/String;)V

    .line 665
    iput-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    .line 666
    iput p3, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mSubId:I

    .line 667
    iput-boolean p4, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mEnableSingleRegistration:Z

    const/4 p1, 0x0

    .line 668
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mRegistered:Z

    return-void
.end method


# virtual methods
.method public blacklist getRegistered()Z
    .registers 1

    .line 676
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mRegistered:Z

    return p0
.end method

.method public blacklist onAutoConfigurationErrorReceived(ILjava/lang/String;)V
    .registers 7

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 692
    :try_start_4
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mSubId:I

    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mEnableSingleRegistration:Z

    const/4 v3, 0x1

    invoke-virtual {p2, v2, p1, v3, p0}, Lcom/android/internal/telephony/metrics/RcsStats;->onRcsAcsProvisioningStats(IIIZ)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 696
    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->restoreCallingIdentity(J)V

    .line 697
    throw p0
.end method

.method public blacklist onConfigurationChanged([B)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onConfigurationReset()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist onPreProvisioningReceived([B)V
    .registers 7

    .line 720
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 723
    :try_start_4
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mSubId:I

    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mEnableSingleRegistration:Z

    const/16 v3, 0xc8

    const/4 v4, 0x3

    invoke-virtual {p1, v2, v3, v4, p0}, Lcom/android/internal/telephony/metrics/RcsStats;->onRcsAcsProvisioningStats(IIIZ)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 727
    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->restoreCallingIdentity(J)V

    .line 728
    throw p0
.end method

.method public blacklist onRemoved()V
    .registers 5

    .line 707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 710
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mSubId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/RcsStats;->onStoreCompleteRcsAcsProvisioningStats(I)V

    .line 712
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    iget p0, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mSubId:I

    invoke-static {v2, p0}, Lcom/android/internal/telephony/metrics/RcsStats;->-$$Nest$mremoveRcsProvisioningCallback(Lcom/android/internal/telephony/metrics/RcsStats;I)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 714
    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->restoreCallingIdentity(J)V

    .line 715
    throw p0
.end method

.method public declared-synchronized blacklist setEnableSingleRegistration(Z)V
    .registers 2

    monitor-enter p0

    .line 672
    :try_start_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mEnableSingleRegistration:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 673
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public blacklist setRegistered(Z)V
    .registers 2

    .line 680
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->mRegistered:Z

    return-void
.end method
