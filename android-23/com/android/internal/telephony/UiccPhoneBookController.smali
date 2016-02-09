.class public Lcom/android/internal/telephony/UiccPhoneBookController;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "UiccPhoneBookController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiccPhoneBookController"


# instance fields
.field private mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    #@3
    .line 40
    const-string/jumbo v0, "simphonebook"

    #@6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 41
    const-string/jumbo v0, "simphonebook"

    #@f
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@12
    .line 43
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/UiccPhoneBookController;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@14
    .line 39
    return-void
.end method

.method private getDefaultSubscription()I
    .locals 1

    #@0
    .prologue
    .line 154
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    .locals 7
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 139
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@8
    move-result v2

    #@9
    .line 141
    .local v2, "phoneId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/UiccPhoneBookController;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@b
    aget-object v3, v3, v2

    #@d
    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    #@f
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getIccPhoneBookInterfaceManagerProxy()Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v3

    #@13
    return-object v3

    #@14
    .line 146
    :catch_0
    move-exception v0

    #@15
    .line 147
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v3, "UiccPhoneBookController"

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Exception is :"

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, " For subscription :"

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 148
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    #@41
    .line 149
    return-object v6

    #@42
    .line 142
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    #@43
    .line 143
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "UiccPhoneBookController"

    #@46
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "Exception is :"

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    const-string/jumbo v5, " For subscription :"

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 144
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    #@6f
    .line 145
    return-object v6
.end method


# virtual methods
.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    #@4
    move-result-object v0

    #@5
    .line 124
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    #@7
    .line 125
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnRecordsInEf(I)Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 127
    :cond_0
    const-string/jumbo v1, "UiccPhoneBookController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getAdnRecordsInEf iccPbkIntMgrProxy isnull for Subscription:"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 129
    return-object v4
.end method

.method public getAdnRecordsSize(I)[I
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAdnRecordsSizeForSubscriber(II)[I

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getAdnRecordsSizeForSubscriber(II)[I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 104
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    #@4
    move-result-object v0

    #@5
    .line 105
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    #@7
    .line 106
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnRecordsSize(I)[I

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 108
    :cond_0
    const-string/jumbo v1, "UiccPhoneBookController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getAdnRecordsSize iccPbkIntMgrProxy is null for Subscription:"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 110
    return-object v4
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    #@3
    move-result v1

    #@4
    move-object v0, p0

    #@5
    move v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v4, p3

    #@8
    move v5, p4

    #@9
    move-object v6, p5

    #@a
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/UiccPhoneBookController;->updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    #@3
    move-result-object v0

    #@4
    .line 85
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    #@6
    move v1, p2

    #@7
    move-object v2, p3

    #@8
    move-object v3, p4

    #@9
    move v4, p5

    #@a
    move-object v5, p6

    #@b
    .line 86
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 89
    :cond_0
    const-string/jumbo v1, "UiccPhoneBookController"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "updateAdnRecordsInEfByIndex iccPbkIntMgrProxy is null for Subscription:"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 91
    const/4 v1, 0x0

    #@2b
    return v1
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    #@3
    move-result v1

    #@4
    move-object v0, p0

    #@5
    move v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v4, p3

    #@8
    move-object v5, p4

    #@9
    move-object v6, p5

    #@a
    move-object v7, p6

    #@b
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/UiccPhoneBookController;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "newTag"    # Ljava/lang/String;
    .param p6, "newPhoneNumber"    # Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    #@3
    move-result-object v0

    #@4
    .line 61
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    #@6
    move v1, p2

    #@7
    move-object v2, p3

    #@8
    move-object v3, p4

    #@9
    move-object v4, p5

    #@a
    move-object v5, p6

    #@b
    move-object v6, p7

    #@c
    .line 62
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 65
    :cond_0
    const-string/jumbo v1, "UiccPhoneBookController"

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 67
    const/4 v1, 0x0

    #@2c
    return v1
.end method
