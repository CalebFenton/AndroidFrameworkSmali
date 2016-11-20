.class public Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
.super Ljava/lang/Object;
.source "DataEnabledSettings.java"


# static fields
.field public static final REASON_DATA_ENABLED_BY_CARRIER:I = 0x4

.field public static final REASON_INTERNAL_DATA_ENABLED:I = 0x1

.field public static final REASON_POLICY_DATA_ENABLED:I = 0x3

.field public static final REASON_REGISTERED:I = 0x0

.field public static final REASON_USER_DATA_ENABLED:I = 0x2


# instance fields
.field private mCarrierDataEnabled:Z

.field private final mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

.field private mInternalDataEnabled:Z

.field private mPolicyDataEnabled:Z

.field private mUserDataEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 45
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    #@6
    .line 51
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mUserDataEnabled:Z

    #@8
    .line 56
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    #@a
    .line 62
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    #@c
    .line 64
    new-instance v0, Landroid/os/RegistrantList;

    #@e
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    #@13
    .line 29
    return-void
.end method

.method private notifyDataEnabledChanged(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    new-instance v1, Landroid/util/Pair;

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v2

    #@8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v3

    #@c
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@f
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@12
    .line 117
    return-void
.end method


# virtual methods
.method public declared-synchronized isCarrierDataEnabled()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 107
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized isDataEnabled(Z)Z
    .locals 1
    .param p1, "checkUserDataEnabled"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    #@3
    if-eqz v0, :cond_3

    #@5
    .line 112
    if-eqz p1, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mUserDataEnabled:Z

    #@9
    .line 111
    if-eqz v0, :cond_3

    #@b
    .line 113
    :cond_0
    if-eqz p1, :cond_1

    #@d
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    #@f
    .line 111
    if-eqz v0, :cond_3

    #@11
    .line 114
    :cond_1
    if-eqz p1, :cond_2

    #@13
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :goto_0
    monitor-exit p0

    #@16
    .line 111
    return v0

    #@17
    .line 114
    :cond_2
    const/4 v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 111
    :cond_3
    const/4 v0, 0x0

    #@1a
    goto :goto_0

    #@1b
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method public declared-synchronized isInternalDataEnabled()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized isPolicyDataEnabled()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 96
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized isUserDataEnabled()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mUserDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 123
    const/4 v0, 0x1

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@9
    move-result v0

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V

    #@e
    .line 121
    return-void
.end method

.method public declared-synchronized setCarrierDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 100
    const/4 v2, 0x1

    #@3
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@6
    move-result v0

    #@7
    .line 101
    .local v0, "prevDataEnabled":Z
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    #@9
    .line 102
    const/4 v2, 0x1

    #@a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@d
    move-result v2

    #@e
    if-eq v0, v2, :cond_1

    #@10
    .line 103
    if-eqz v0, :cond_0

    #@12
    const/4 v1, 0x0

    #@13
    :cond_0
    const/4 v2, 0x4

    #@14
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_1
    monitor-exit p0

    #@18
    .line 99
    return-void

    #@19
    .end local v0    # "prevDataEnabled":Z
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit p0

    #@1b
    throw v1
.end method

.method public declared-synchronized setInternalDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 67
    const/4 v2, 0x1

    #@3
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@6
    move-result v0

    #@7
    .line 68
    .local v0, "prevDataEnabled":Z
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    #@9
    .line 69
    const/4 v2, 0x1

    #@a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@d
    move-result v2

    #@e
    if-eq v0, v2, :cond_1

    #@10
    .line 70
    if-eqz v0, :cond_0

    #@12
    const/4 v1, 0x0

    #@13
    :cond_0
    const/4 v2, 0x1

    #@14
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_1
    monitor-exit p0

    #@18
    .line 66
    return-void

    #@19
    .end local v0    # "prevDataEnabled":Z
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit p0

    #@1b
    throw v1
.end method

.method public declared-synchronized setPolicyDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 89
    const/4 v2, 0x1

    #@3
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@6
    move-result v0

    #@7
    .line 90
    .local v0, "prevDataEnabled":Z
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    #@9
    .line 91
    const/4 v2, 0x1

    #@a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@d
    move-result v2

    #@e
    if-eq v0, v2, :cond_1

    #@10
    .line 92
    if-eqz v0, :cond_0

    #@12
    const/4 v1, 0x0

    #@13
    :cond_0
    const/4 v2, 0x3

    #@14
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_1
    monitor-exit p0

    #@18
    .line 88
    return-void

    #@19
    .end local v0    # "prevDataEnabled":Z
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit p0

    #@1b
    throw v1
.end method

.method public declared-synchronized setUserDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 78
    const/4 v2, 0x1

    #@3
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@6
    move-result v0

    #@7
    .line 79
    .local v0, "prevDataEnabled":Z
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mUserDataEnabled:Z

    #@9
    .line 80
    const/4 v2, 0x1

    #@a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    #@d
    move-result v2

    #@e
    if-eq v0, v2, :cond_1

    #@10
    .line 81
    if-eqz v0, :cond_0

    #@12
    const/4 v1, 0x0

    #@13
    :cond_0
    const/4 v2, 0x2

    #@14
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_1
    monitor-exit p0

    #@18
    .line 77
    return-void

    #@19
    .end local v0    # "prevDataEnabled":Z
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit p0

    #@1b
    throw v1
.end method

.method public unregisterForDataEnabledChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 126
    return-void
.end method
