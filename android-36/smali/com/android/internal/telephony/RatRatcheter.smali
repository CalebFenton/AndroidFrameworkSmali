.class public Lcom/android/internal/telephony/RatRatcheter;
.super Ljava/lang/Object;
.source "RatRatcheter.java"


# instance fields
.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mRatFamilyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$Z3Q6bI_xDE9-Ct_n932gefgu69A(Lcom/android/internal/telephony/RatRatcheter;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RatRatcheter;->lambda$new$0(IIII)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/RatRatcheter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 77
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_2a

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/RatRatcheter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/RatRatcheter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/RatRatcheter;)V

    .line 79
    invoke-virtual {v0, p1, v1}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 83
    :cond_2a
    invoke-direct {p0}, Lcom/android/internal/telephony/RatRatcheter;->resetRatFamilyMap()V

    return-void
.end method

.method private blacklist isSameRatFamily(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .registers 10

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 145
    :try_start_5
    invoke-virtual {p1, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_64

    .line 147
    invoke-virtual {p2, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    if-nez v3, :cond_13

    goto :goto_64

    .line 153
    :cond_13
    invoke-virtual {p1, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v3

    .line 152
    invoke-static {v3}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v3

    .line 157
    invoke-virtual {p2, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    .line 156
    invoke-static {v1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v1

    const/16 v5, 0x13

    const/16 v6, 0xe

    if-ne v3, v6, :cond_3b

    .line 167
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p1

    if-eqz p1, :cond_3b

    move v3, v5

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_66

    :cond_3b
    :goto_3b
    if-ne v1, v6, :cond_44

    .line 172
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p1

    if-eqz p1, :cond_44

    move v1, v5

    :cond_44
    if-ne v3, v1, :cond_48

    .line 176
    monitor-exit v0

    return v2

    .line 177
    :cond_48
    iget-object p1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_52

    .line 178
    monitor-exit v0

    return v4

    .line 180
    :cond_52
    iget-object p1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_61

    goto :goto_62

    :cond_61
    move v2, v4

    :goto_62
    monitor-exit v0

    return v2

    .line 149
    :cond_64
    :goto_64
    monitor-exit v0

    return v4

    .line 181
    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_5 .. :try_end_67} :catchall_39

    throw p0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 5

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/RatRatcheter;->resetRatFamilyMap()V

    return-void
.end method

.method private blacklist ratchetRat(II)I
    .registers 6

    .line 88
    invoke-static {p1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result p1

    .line 89
    invoke-static {p2}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 91
    :try_start_b
    iget-object v2, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-nez v2, :cond_19

    .line 93
    monitor-exit v1

    return p2

    :catchall_17
    move-exception p0

    goto :goto_38

    .line 96
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-eq p0, v2, :cond_25

    .line 98
    monitor-exit v1

    return p2

    :cond_25
    const/4 p2, -0x1

    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 103
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-le v2, p0, :cond_31

    goto :goto_32

    :cond_31
    move p1, v0

    .line 104
    :goto_32
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p0

    monitor-exit v1

    return p0

    .line 106
    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_17

    throw p0
.end method

.method private blacklist resetRatFamilyMap()V
    .registers 14

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 190
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/RatRatcheter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 191
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    const-string v3, "ratchet_rat_families"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-static {v1, v2, v3}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 193
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    goto/16 :goto_a4

    .line 200
    :cond_28
    const-string v2, "ratchet_rat_families"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_35

    .line 201
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    goto/16 :goto_a6

    .line 202
    :cond_35
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_38
    if-ge v4, v2, :cond_a2

    aget-object v5, v1, v4

    .line 203
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 204
    array-length v6, v5

    const/4 v7, 0x2

    if-ge v6, v7, :cond_47

    goto :goto_9f

    .line 205
    :cond_47
    new-instance v6, Landroid/util/SparseIntArray;

    array-length v7, v5

    invoke-direct {v6, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 207
    array-length v7, v5

    move v8, v3

    move v9, v8

    :goto_50
    if-ge v8, v7, :cond_9f

    aget-object v10, v5, v8
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_32

    .line 210
    :try_start_54
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_5c} :catch_89
    .catchall {:try_start_54 .. :try_end_5c} :catchall_32

    .line 215
    :try_start_5c
    iget-object v12, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_7b

    .line 216
    const-string v5, "RilRatcheter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RAT listed twice: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    :cond_7b
    add-int/lit8 v10, v9, 0x1

    .line 219
    invoke-virtual {v6, v11, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 220
    iget-object v9, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move v9, v10

    goto :goto_50

    .line 212
    :catch_89
    const-string v5, "RilRatcheter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 223
    :cond_a2
    monitor-exit v0

    return-void

    .line 193
    :cond_a4
    :goto_a4
    monitor-exit v0

    return-void

    .line 223
    :goto_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_5c .. :try_end_a7} :catchall_32

    throw p0
.end method

.method public static blacklist updateBandwidths([ILandroid/telephony/ServiceState;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 63
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->sum()I

    move-result v1

    .line 64
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->sum()I

    move-result v2

    if-le v2, v1, :cond_1f

    .line 67
    invoke-virtual {p1, p0}, Landroid/telephony/ServiceState;->setCellBandwidths([I)V

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v0
.end method


# virtual methods
.method public blacklist ratchet(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V
    .registers 11

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RatRatcheter;->isSameRatFamily(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 117
    const-string p0, "RilRatcheter"

    const-string p1, "Same cell cannot have different RAT Families. Likely bug."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 121
    filled-new-array {v0, v1}, [I

    move-result-object v2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_3f

    .line 123
    aget v4, v2, v3

    .line 124
    invoke-virtual {p1, v4, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v5

    .line 126
    invoke-virtual {p2, v4, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 129
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v6

    .line 130
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v7

    .line 129
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RatRatcheter;->ratchetRat(II)I

    move-result v6

    .line 131
    invoke-virtual {v4, v6}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 132
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo;->setIsUsingCarrierAggregation(Z)V

    .line 133
    :cond_39
    invoke-virtual {p2, v4}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 137
    :cond_3f
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/internal/telephony/RatRatcheter;->updateBandwidths([ILandroid/telephony/ServiceState;)Z

    return-void
.end method
