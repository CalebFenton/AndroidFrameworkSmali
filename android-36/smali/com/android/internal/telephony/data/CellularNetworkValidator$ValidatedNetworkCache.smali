.class Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;
.super Ljava/lang/Object;
.source "CellularNetworkValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/CellularNetworkValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidatedNetworkCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;
    }
.end annotation


# instance fields
.field private final blacklist mValidatedNetworkAQ:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mValidatedNetworkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/CellularNetworkValidator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkAQ:Ljava/util/ArrayDeque;

    .line 98
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/CellularNetworkValidator;Lcom/android/internal/telephony/data/CellularNetworkValidator-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;-><init>(Lcom/android/internal/telephony/data/CellularNetworkValidator;)V

    return-void
.end method

.method private blacklist getValidationCacheTtl(I)J
    .registers 4

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->this$0:Lcom/android/internal/telephony/data/CellularNetworkValidator;

    invoke-static {p0}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/data/CellularNetworkValidator;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "carrier_config"

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_1d

    .line 183
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 185
    const-string p1, "data_switch_validation_min_gap_long"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_1f

    :cond_1d
    const-wide/16 p0, 0x0

    .line 189
    :goto_1f
    sget-wide v0, Lcom/android/internal/telephony/data/CellularNetworkValidator;->MAX_VALIDATION_CACHE_TTL:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist getValidationNetworkIdentity(I)Ljava/lang/String;
    .registers 6

    .line 157
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 158
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result p0

    .line 158
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 160
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_7e

    .line 162
    :cond_1d
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 164
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    if-nez v1, :cond_30

    goto :goto_7e

    .line 166
    :cond_30
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7e

    .line 169
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7e

    move-object v1, p0

    check-cast v1, Landroid/telephony/CellIdentityLte;

    .line 170
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_54

    goto :goto_7e

    .line 174
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7e
    :goto_7e
    return-object v0
.end method


# virtual methods
.method declared-synchronized blacklist isRecentlyValidated(I)Z
    .registers 10

    monitor-enter p0

    .line 113
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->getValidationCacheTtl(I)J

    move-result-wide v0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->getValidationNetworkIdentity(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    .line 115
    iget-object v4, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_49

    .line 118
    :cond_15
    iget-object v4, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;

    iget-wide v4, v2, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;->mValidationTimeStamp:J

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    cmp-long v0, v6, v0

    if-gez v0, :cond_29

    const/4 v3, 0x1

    .line 120
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecentlyValidated on subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ? "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$smlogd(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 121
    monitor-exit p0

    return v3

    :catchall_47
    move-exception p1

    goto :goto_4b

    .line 116
    :cond_49
    :goto_49
    monitor-exit p0

    return v3

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_47

    throw p1
.end method

.method declared-synchronized blacklist storeLastValidationResult(IZ)V
    .registers 6

    monitor-enter p0

    .line 125
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->getValidationNetworkIdentity(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeLastValidationResult for subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_19

    .line 127
    const-string p1, " validated."

    goto :goto_1b

    :catchall_17
    move-exception p1

    goto :goto_83

    :cond_19
    const-string p1, " not validated."

    :goto_1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {p1}, Lcom/android/internal/telephony/data/CellularNetworkValidator;->-$$Nest$smlogd(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_17

    if-nez v0, :cond_29

    .line 128
    monitor-exit p0

    return-void

    :cond_29
    if-nez p2, :cond_3d

    .line 132
    :try_start_2b
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkAQ:Ljava/util/ArrayDeque;

    iget-object p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_17

    .line 134
    monitor-exit p0

    return-void

    .line 136
    :cond_3d
    :try_start_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;

    if-eqz v1, :cond_59

    .line 140
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;->update(J)V

    .line 142
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkAQ:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 143
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkAQ:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 145
    :cond_59
    new-instance v1, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;-><init>(Ljava/lang/String;J)V

    .line 146
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkAQ:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 150
    :goto_68
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkAQ:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_81

    .line 151
    iget-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkAQ:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;

    .line 152
    iget-object p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;->mValidatedNetworkMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;->mValidationIdentity:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catchall {:try_start_3d .. :try_end_81} :catchall_17

    .line 154
    :cond_81
    monitor-exit p0

    return-void

    :goto_83
    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_17

    throw p1
.end method
