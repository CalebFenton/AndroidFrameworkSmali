.class public Lcom/android/internal/telephony/UiccPhoneBookController;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "UiccPhoneBookController.java"


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 41
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getIccPhoneBookServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_14

    .line 44
    invoke-virtual {v0, p0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->register(Landroid/os/IBinder;)V

    :cond_14
    return-void
.end method

.method private greylist-max-r getDefaultSubscription()I
    .registers 1

    .line 166
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result p0

    return p0
.end method

.method private greylist-max-r getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 7

    .line 150
    const-string p0, " For subscription :"

    const-string v0, "Exception is :"

    const-string v1, "UiccPhoneBookController"

    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v2

    const/4 v3, 0x0

    .line 152
    :try_start_f
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_17} :catch_1a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception v2

    goto :goto_1c

    :catch_1a
    move-exception v2

    goto :goto_3c

    .line 158
    :goto_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    return-object v3

    .line 154
    :goto_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v3
.end method


# virtual methods
.method public blacklist getAdnRecordsCapacityForSubscriber(I)Lcom/android/internal/telephony/uicc/AdnCapacity;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object p0

    return-object p0

    .line 122
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAdnRecordsCapacity iccPbkIntMgr is null for Subscription:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiccPhoneBookController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getAdnRecordsInEf(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 107
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 109
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAdnRecordsInEf iccPbkIntMgr isnull for Subscription:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiccPhoneBookController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getAdnRecordsSize(I)[I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAdnRecordsSizeForSubscriber(II)[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist getAdnRecordsSizeForSubscriber(II)[I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 88
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object p0

    return-object p0

    .line 90
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAdnRecordsSize iccPbkIntMgr is null for Subscription:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiccPhoneBookController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist updateAdnRecordsInEfByIndexForSubscriber(IILandroid/content/ContentValues;ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 68
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILandroid/content/ContentValues;ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 71
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateAdnRecordsInEfByIndex iccPbkIntMgr is null for Subscription:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiccPhoneBookController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 53
    const-string v1, "tag"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string p2, "number"

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string p2, "newTag"

    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string p2, "newNumber"

    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result p2

    invoke-virtual {p0, p2, p1, v0, p6}, Lcom/android/internal/telephony/UiccPhoneBookController;->updateAdnRecordsInEfBySearchForSubscriber(IILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist updateAdnRecordsInEfBySearchForSubscriber(IILandroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 134
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearchForSubscriber(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 137
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateAdnRecordsInEfBySearchForSubscriber iccPbkIntMgr is null for Subscription:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiccPhoneBookController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
