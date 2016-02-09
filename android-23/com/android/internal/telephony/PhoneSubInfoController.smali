.class public Lcom/android/internal/telephony/PhoneSubInfoController;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneSubInfoController"


# instance fields
.field private mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@5
    .line 35
    const-string/jumbo v0, "iphonesubinfo"

    #@8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 36
    const-string/jumbo v0, "iphonesubinfo"

    #@11
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@14
    .line 33
    :cond_0
    return-void
.end method

.method private getDefaultSubscription()I
    .locals 1

    #@0
    .prologue
    .line 237
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/PhoneProxy;
    .locals 1
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 230
    if-ltz p1, :cond_0

    #@2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@9
    move-result v0

    #@a
    if-lt p1, v0, :cond_1

    #@c
    .line 231
    :cond_0
    const/4 p1, 0x0

    #@d
    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    #@f
    aget-object v0, v0, p1

    #@11
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    #@13
    return-object v0
.end method

.method private getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 218
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@3
    move-result v1

    #@4
    .line 221
    .local v1, "phoneId":I
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/PhoneProxy;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneSubInfoProxy()Lcom/android/internal/telephony/PhoneSubInfoProxy;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 222
    :catch_0
    move-exception v0

    #@e
    .line 223
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "PhoneSubInfoController"

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Exception is :"

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, " For subId :"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 224
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    #@3a
    .line 225
    const/4 v2, 0x0

    #@3b
    return-object v2
.end method


# virtual methods
.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 188
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@4
    move-result-object v0

    #@5
    .line 189
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    #@7
    .line 190
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getCompleteVoiceMailNumber()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 192
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getCompleteVoiceMailNumber phoneSubInfoProxy is null for Subscription:"

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
    .line 194
    return-object v4
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceIdForPhone(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getDeviceIdForPhone(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/PhoneProxy;

    #@4
    move-result-object v0

    #@5
    .line 46
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    #@7
    .line 47
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 49
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getDeviceIdForPhone phone "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, " is null"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 50
    return-object v4
.end method

.method public getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@4
    move-result-object v0

    #@5
    .line 82
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    #@7
    .line 83
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 85
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    const-string/jumbo v2, "getDeviceSvn phoneSubInfoProxy is null"

    #@12
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 86
    return-object v3
.end method

.method public getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 282
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@4
    move-result-object v0

    #@5
    .line 283
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    #@7
    .line 284
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 286
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getGroupIdLevel1 phoneSubInfoProxy is null for Subscription:"

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
    .line 288
    return-object v4
.end method

.method public getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@4
    move-result-object v0

    #@5
    .line 114
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    #@7
    .line 115
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 117
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getIccSerialNumber phoneSubInfoProxy is null for Subscription:"

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
    .line 119
    return-object v4
.end method

.method public getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@3
    move-result-object v0

    #@4
    .line 274
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@4
    move-result-object v0

    #@5
    .line 67
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    #@7
    .line 68
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getImei(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 70
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getDeviceId phoneSubInfoProxy is null for Subscription:"

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
    .line 72
    return-object v4
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v1

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@7
    move-result-object v0

    #@8
    .line 268
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v1

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@7
    move-result-object v0

    #@8
    .line 248
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimDomain()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v1

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@7
    move-result-object v0

    #@8
    .line 243
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimImpi()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v1

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@7
    move-result-object v0

    #@8
    .line 253
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimImpu()[Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v1

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@7
    move-result-object v0

    #@8
    .line 258
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimIst()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v1

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@7
    move-result-object v0

    #@8
    .line 263
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimPcscf()[Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@4
    move-result-object v0

    #@5
    .line 144
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    #@7
    .line 145
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 147
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getLine1AlphaTag phoneSubInfoProxy is null for Subscription:"

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
    .line 149
    return-object v4
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 128
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@4
    move-result-object v0

    #@5
    .line 129
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    #@7
    .line 130
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 132
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getLine1Number phoneSubInfoProxy is null for Subscription:"

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
    .line 134
    return-object v4
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 158
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@4
    move-result-object v0

    #@5
    .line 159
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    #@7
    .line 160
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 162
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getMsisdn phoneSubInfoProxy is null for Subscription:"

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
    .line 164
    return-object v4
.end method

.method public getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@4
    move-result-object v0

    #@5
    .line 56
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    #@7
    .line 57
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getNai(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 59
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getNai phoneSubInfoProxy is null for Subscription:"

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
    .line 61
    return-object v4
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@4
    move-result-object v0

    #@5
    .line 96
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    #@7
    .line 97
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 99
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getSubscriberId phoneSubInfoProxy is null for Subscription:"

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
    .line 101
    return-object v4
.end method

.method public getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 203
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@4
    move-result-object v0

    #@5
    .line 204
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    #@7
    .line 205
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 207
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getVoiceMailAlphaTag phoneSubInfoProxy is null for Subscription:"

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
    .line 209
    return-object v4
.end method

.method public getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 173
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    #@4
    move-result-object v0

    #@5
    .line 174
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    #@7
    .line 175
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 177
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "getVoiceMailNumber phoneSubInfoProxy is null for Subscription:"

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
    .line 179
    return-object v4
.end method
