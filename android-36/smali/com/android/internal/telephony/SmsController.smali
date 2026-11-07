.class public Lcom/android/internal/telephony/SmsController;
.super Lcom/android/internal/telephony/ISmsImplBase;
.source "SmsController.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mVendorApiLevel:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/ISmsImplBase;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/SmsController;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SmsController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 84
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/os/TelephonyServiceManager;->getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1e

    .line 87
    invoke-virtual {p1, p0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->register(Landroid/os/IBinder;)V

    .line 90
    :cond_1e
    const-string p1, "ro.vendor.api_level"

    sget p2, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/SmsController;->mVendorApiLevel:I

    return-void
.end method

.method private blacklist enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_40

    .line 1253
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_7

    goto :goto_40

    :cond_7
    const-wide/32 v0, 0x11c2f5c6

    .line 1258
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1257
    invoke-static {v0, v1, p1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_40

    iget p1, p0, Lcom/android/internal/telephony/SmsController;->mVendorApiLevel:I

    const/16 v0, 0x23

    if-ge p1, v0, :cond_1b

    goto :goto_40

    .line 1266
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/SmsController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "android.hardware.telephony.messaging"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_40

    .line 1267
    :cond_26
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is unsupported without "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    return-void
.end method

.method public static blacklist formatCrossStackMessageId(J)Ljava/lang/String;
    .registers 4

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{x-message-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCallingPackage()Ljava/lang/String;
    .registers 3

    .line 230
    iget-object p0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 232
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 233
    array-length v0, p0

    if-nez v0, :cond_1d

    goto :goto_20

    .line 234
    :cond_1d
    aget-object p0, p0, v1

    return-object p0

    .line 233
    :cond_20
    :goto_20
    const-string p0, ""

    return-object p0
.end method

.method private greylist-max-r getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .registers 2

    .line 1129
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getMmsConfig(Landroid/os/BaseBundle;)Landroid/os/Bundle;
    .registers 4

    .line 807
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 810
    const-string v1, "enabledTransID"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 808
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 813
    const-string v1, "enabledMMS"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 811
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 816
    const-string v1, "enableGroupMms"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 814
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 819
    const-string v1, "enabledNotifyWapMMSC"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 817
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 822
    const-string v1, "aliasEnabled"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 820
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 825
    const-string v1, "allowAttachAudio"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 823
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 828
    const-string v1, "enableMultipartSMS"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 826
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 831
    const-string v1, "enableSMSDeliveryReports"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 829
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 834
    const-string v1, "supportMmsContentDisposition"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 832
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 837
    const-string v1, "sendMultipartSmsAsSeparateMessages"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 835
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 840
    const-string v1, "enableMMSReadReports"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 838
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 843
    const-string v1, "enableMMSDeliveryReports"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 841
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 846
    const-string v1, "mmsCloseConnection"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 844
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 849
    const-string v1, "maxMessageSize"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 847
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 852
    const-string v1, "maxImageWidth"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 850
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 855
    const-string v1, "maxImageHeight"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 853
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 858
    const-string v1, "recipientLimit"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 856
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 861
    const-string v1, "aliasMinChars"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 859
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 864
    const-string v1, "aliasMaxChars"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 862
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 867
    const-string v1, "smsToMmsTextThreshold"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 865
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 870
    const-string v1, "smsToMmsTextLengthThreshold"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 868
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 873
    const-string v1, "maxMessageTextSize"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 871
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 874
    const-string v1, "maxSubjectLength"

    .line 876
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 874
    const-string v2, "maxSubjectLength"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 877
    const-string v1, "httpSocketTimeout"

    .line 879
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 877
    const-string v2, "httpSocketTimeout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 880
    const-string v1, "uaProfTagName"

    .line 882
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 880
    const-string v2, "uaProfTagName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v1, "userAgent"

    .line 885
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 883
    const-string v2, "userAgent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v1, "uaProfUrl"

    .line 888
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 886
    const-string v2, "uaProfUrl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v1, "httpParams"

    .line 891
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 889
    const-string v2, "httpParams"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v1, "emailGatewayNumber"

    .line 894
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 892
    const-string v2, "emailGatewayNumber"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v1, "naiSuffix"

    .line 897
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 895
    const-string v2, "naiSuffix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v1, "config_cellBroadcastAppLinks"

    .line 900
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 898
    const-string v2, "config_cellBroadcastAppLinks"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 901
    const-string v1, "supportHttpCharsetHeader"

    .line 903
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 901
    const-string v1, "supportHttpCharsetHeader"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private blacklist getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 2

    .line 95
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_e

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method private blacklist getSmsPermissions(I)Lcom/android/internal/telephony/SmsPermissions;
    .registers 4

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 105
    new-instance v0, Lcom/android/internal/telephony/SmsPermissions;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    .line 106
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/internal/telephony/SmsPermissions;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;)V

    return-object v0
.end method

.method private blacklist getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .registers 3

    .line 1133
    iget-object p0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v0, "telephony_subscription_service"

    .line 1134
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 1135
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isBluetoothSubscription(Landroid/telephony/SubscriptionInfo;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 336
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_a

    return p1

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist sendBluetoothText(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 13

    .line 341
    new-instance v0, Lcom/android/internal/telephony/BtSmsInterfaceManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/BtSmsInterfaceManager;-><init>()V

    .line 342
    iget-object v1, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    move-object v6, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/BtSmsInterfaceManager;->sendText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method private blacklist sendDataForSubscriberWithSelfPermissionsInternal(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 23

    .line 215
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    .line 217
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataWithSelfPermissions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    return-void

    .line 221
    :cond_1b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsController"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    move-object/from16 v8, p9

    .line 223
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method private greylist-max-r sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 1105
    :try_start_2
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method private greylist-max-r sendErrorInPendingIntents(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_17

    .line 1117
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1118
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    goto :goto_7

    :cond_17
    :goto_17
    return-void
.end method

.method private blacklist sendIccText(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZ)V
    .registers 29

    move/from16 v0, p1

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextForSubscriber iccSmsIntMgr Subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static/range {p10 .. p11}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    const-string v3, "SmsController"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v4

    if-eqz v4, :cond_42

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move/from16 v15, p12

    .line 352
    invoke-virtual/range {v4 .. v15}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZ)V

    return-void

    .line 356
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTextForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static/range {p10 .. p11}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v10, p7

    .line 358
    invoke-direct {v1, v10, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method private blacklist sendTextForSubscriberWithSelfPermissionsInternal(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .registers 23

    .line 366
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    .line 368
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextWithSelfPermissions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    return-void

    .line 372
    :cond_1b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsController"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    move-object/from16 v7, p8

    .line 374
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method


# virtual methods
.method public blacklist checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    if-nez p2, :cond_6

    .line 988
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 990
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "checkSmsShortCodeDestination"

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_18

    const/4 p0, 0x0

    return p0

    .line 994
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 996
    :try_start_1c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {p0, p4, p5}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2a

    .line 998
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2a
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 999
    throw p0
.end method

.method public blacklist clearStorageMonitorMemoryStatusOverride(I)V
    .registers 5

    .line 960
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 963
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 971
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 972
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 970
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_2c

    .line 976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 978
    :try_start_1e
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->clearMemoryStatusOverride()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_27

    .line 980
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    throw p0

    .line 973
    :cond_2c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "clearStorageMonitorMemoryStatusOverride needs MODIFY_PHONE_STATE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 965
    :cond_34
    const-string p0, "SmsController"

    const-string p1, "Phone Object is Null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public greylist-max-r copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    .registers 6

    if-nez p2, :cond_6

    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 133
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 135
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result p0

    return p0

    .line 137
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copyMessageToIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 5

    if-nez p2, :cond_6

    .line 924
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 927
    :cond_6
    const-string v0, "createAppSpecificSmsToken"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/AppSmsManager;->createAppSpecificSmsToken(Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 6

    if-nez p2, :cond_6

    .line 911
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 914
    :cond_6
    const-string v0, "createAppSpecificSmsTokenWithPackageInfo"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/AppSmsManager;->createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r disableCellBroadcastForSubscriber(III)Z
    .registers 4

    .line 525
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/android/internal/telephony/SmsController;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result p0

    return p0
.end method

.method public greylist-max-r disableCellBroadcastRangeForSubscriber(IIII)Z
    .registers 7

    .line 533
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableCellBroadcastRangeForSubscriber"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 538
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(III)Z

    move-result p0

    return p0

    .line 540
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disableCellBroadcastRangeForSubscriber iccSmsIntMgr is null for Subscription:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v1, "SmsController"

    invoke-static {v0, v1, p2}, Lcom/android/internal/telephony/util/TelephonyUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1087
    :cond_b
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1089
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_47

    aget-object v3, p2, v2

    .line 1090
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 1091
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "SmsManager for subId = %d:"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1093
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 1094
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1096
    :cond_41
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1098
    :cond_47
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public greylist-max-r enableCellBroadcastForSubscriber(III)Z
    .registers 4

    .line 500
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/android/internal/telephony/SmsController;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result p0

    return p0
.end method

.method public greylist-max-r enableCellBroadcastRangeForSubscriber(IIII)Z
    .registers 7

    .line 508
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableCellBroadcastRangeForSubscriber"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 513
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(III)Z

    move-result p0

    return p0

    .line 515
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableCellBroadcastRangeForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-r getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_6

    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 149
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 151
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 153
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAllMessagesFromIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCarrierConfigValuesForSubscriber(I)Landroid/os/Bundle;
    .registers 5

    .line 782
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCarrierConfigValuesForSubscriber"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 787
    :try_start_d
    iget-object p0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 789
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 790
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SmsController;->getMmsConfig(Landroid/os/BaseBundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_23

    .line 792
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_23
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    throw p0
.end method

.method public greylist-max-r getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    .registers 2

    .line 668
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 670
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 672
    :cond_b
    const-string p0, "SmsController"

    const-string p1, "getImsSmsFormatForSubscriber iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-r getPreferredSmsSubscription()I
    .registers 5

    .line 703
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubId()I

    move-result v0

    .line 705
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_f

    return v0

    .line 709
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPreferredSmsSubscription"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 714
    :try_start_1c
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    const/4 v2, 0x1

    .line 715
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object p0

    .line 716
    array-length v3, p0

    if-ne v3, v2, :cond_31

    const/4 v2, 0x0

    .line 717
    aget p0, p0, v2
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2f

    .line 720
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_36

    :cond_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0

    :goto_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 721
    throw p0
.end method

.method public blacklist getPremiumSmsPermission(Ljava/lang/String;)I
    .registers 3

    .line 548
    const-string v0, "getPremiumSmsPermission"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsController;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SmsController;->getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I
    .registers 3

    .line 555
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 557
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 559
    :cond_b
    const-string p0, "SmsController"

    const-string p1, "getPremiumSmsPermissionForSubscriber iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSmsCapacityOnIccForSubscriber(I)I
    .registers 4

    .line 1143
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSmsCapacityOnIccForSubscriber"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1149
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsCapacityOnIcc(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1151
    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iccSmsIntMgr is null for  subId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p2, :cond_6

    .line 1042
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 1045
    :cond_6
    const-string v0, "getSmscAddressFromIccEfForSubscriber"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 1050
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmscAddressFromIccEf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1052
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getSmscAddressFromIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getWapMessageSize(Ljava/lang/String;)J
    .registers 2

    .line 1242
    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 1243
    invoke-static {p0}, Lcom/android/internal/telephony/WapPushCache;->getWapMessageSize([B)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 7

    .line 680
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "injectSmsPduForSubscriber"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 684
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    .line 686
    :cond_13
    const-string p1, "SmsController"

    const-string p2, "injectSmsPduForSubscriber iccSmsIntMgr is null"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 688
    invoke-direct {p0, p4, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public greylist-max-r isImsSmsSupportedForSubscriber(I)Z
    .registers 2

    .line 587
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isImsSmsSupported()Z

    move-result p0

    return p0

    .line 591
    :cond_b
    const-string p0, "SmsController"

    const-string p1, "isImsSmsSupportedForSubscriber iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 1192
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1193
    invoke-static {v0}, Lcom/android/internal/telephony/FdnUtils;->isFdnEnabled(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 1198
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/SmsController;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsTelephonyCalling(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 1199
    :cond_17
    iget-object v1, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2a

    .line 1200
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    return v2

    .line 1205
    :cond_2a
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1206
    invoke-static {v0, p2, v1}, Lcom/android/internal/telephony/FdnUtils;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_3c

    return v2

    .line 1211
    :cond_3c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_57

    .line 1214
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 1216
    :try_start_46
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmscAddressFromIccEf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_52

    .line 1218
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1227
    invoke-static {v0, p0, v1}, Lcom/android/internal/telephony/FdnUtils;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :catchall_52
    move-exception p0

    .line 1218
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1219
    throw p0

    .line 1221
    :cond_57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getSmscAddressFromIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public blacklist isSMSPromptEnabled()Z
    .registers 1

    .line 733
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSMSPromptEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist isSmsSimPickActivityNeeded(I)Z
    .registers 7

    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 599
    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_68

    .line 602
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v1

    const/16 v3, 0x64

    if-ne v1, v3, :cond_68

    .line 610
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "isSmsSimPickActivityNeeded"

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string p0, "phone"

    .line 613
    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 640
    :try_start_32
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_63

    .line 642
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_62

    .line 646
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_44
    if-ge v3, v1, :cond_58

    .line 649
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    if-eqz v4, :cond_55

    .line 650
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, p1, :cond_55

    return v2

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_58
    const/4 p1, 0x1

    if-le v1, p1, :cond_62

    .line 657
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p0

    if-le p0, p1, :cond_62

    return p1

    :cond_62
    return v2

    :catchall_63
    move-exception p0

    .line 642
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 643
    throw p0

    .line 605
    :cond_68
    const-string p0, "SmsController"

    const-string p1, "isSmsSimPickActivityNeeded: calling process not foreground. Suppressing activity."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public blacklist resetAllCellBroadcastRanges(I)Z
    .registers 4

    .line 1164
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resetAllCellBroadcastRanges"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1169
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->resetAllCellBroadcastRanges()V

    const/4 p0, 0x1

    return p0

    .line 1172
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iccSmsIntMgr is null for  subId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-r sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 168
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/SmsController;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public blacklist sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 20

    move-object/from16 v8, p8

    if-nez p2, :cond_8

    .line 177
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    :cond_8
    move-object v1, p2

    .line 179
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDataForSubscriber caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsController"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 186
    iget-object p2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 186
    invoke-static {p2, p1, p3, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    const/16 p1, 0x21

    .line 188
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 193
    :cond_3a
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 p1, 0x6

    .line 194
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 198
    :cond_45
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 200
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 204
    :cond_5c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendDataForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 207
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public blacklist sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZJ)V"
        }
    .end annotation

    move p2, p1

    .line 424
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    .line 425
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMultipartTextForSubscriber caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsController"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 431
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 430
    invoke-static {v1, p2, v3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 432
    iget-object p3, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 433
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    .line 432
    invoke-static {p3, p2, p4, p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    const/16 p1, 0x21

    .line 434
    invoke-direct {p0, p7, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    .line 438
    :cond_3a
    const-string v1, "sendMultipartTextForSubscriber"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0, p2, p4, p1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 p1, 0x6

    .line 442
    invoke-direct {p0, p7, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    :cond_4a
    move-object v1, p0

    .line 446
    invoke-direct {v1, p2}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_59

    .line 448
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual/range {p0 .. p11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V

    return-void

    .line 452
    :cond_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sendMultipartTextForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-static {p10, p11}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 454
    invoke-direct {v1, p7, p0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void
.end method

.method public blacklist sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZI)V"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v4, p4

    move-object/from16 v7, p7

    if-nez p2, :cond_d

    .line 464
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_d
    move-object/from16 v1, p2

    .line 466
    :goto_f
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMultipartTextForSubscriberWithOptions caller="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SmsController"

    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v3, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 472
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 471
    invoke-static {v3, v0, v6, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 473
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 474
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 473
    invoke-static {v2, v0, v3, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    const/16 v0, 0x21

    .line 475
    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    .line 480
    :cond_44
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v0, 0x6

    .line 481
    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    :cond_4f
    move v3, v0

    .line 485
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 487
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-wide/16 v13, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextWithOptions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZIJ)V

    return-void

    .line 491
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMultipartTextWithOptions iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 493
    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void
.end method

.method public blacklist sendStoredMultipartText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 761
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    .line 762
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 764
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStoredMultipartText caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_36

    .line 771
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    move-object v4, p2

    move p2, p1

    move-object p1, v4

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredMultipartText(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 774
    :cond_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendStoredMultipartText iccSmsIntMgr is null for subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 776
    invoke-direct {v0, p6, p0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    :cond_4f
    move-object p1, p2

    .line 765
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendStoredMultipartText: Package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist sendStoredText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 13

    move-object v0, p0

    .line 740
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    .line 741
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 742
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStoredText caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_36

    .line 749
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    move-object v4, p2

    move p2, p1

    move-object p1, v4

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredText(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 752
    :cond_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendStoredText iccSmsIntMgr is null for subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 753
    invoke-direct {v0, p6, p0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    :cond_4f
    move-object p1, p2

    .line 743
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendStoredText: Package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "does not belong to "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    .registers 26

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    .line 244
    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/telephony/SmsController;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZZ)V

    return-void
.end method

.method public blacklist sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZZ)V
    .registers 29

    move/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p7

    if-nez p2, :cond_d

    .line 275
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_d
    move-object/from16 v0, p2

    .line 277
    :goto_f
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextForSubscriber caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p12, :cond_2d

    if-eqz p13, :cond_37

    .line 283
    :cond_2d
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d4

    .line 289
    :cond_37
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getSmsPermissions(I)Lcom/android/internal/telephony/SmsPermissions;

    move-result-object v2

    const-string v5, "Sending SMS message"

    move-object/from16 v7, p3

    move/from16 v9, p9

    invoke-virtual {v2, v9, v0, v7, v5}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendText(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_4c

    .line 291
    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 296
    :cond_4c
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_57

    goto :goto_58

    :cond_57
    const/4 v5, 0x0

    .line 298
    :goto_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendTextForSubscriber: caller has INTERACT_ACROSS_USERS_FULL? "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_89

    .line 300
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 302
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 301
    invoke-static {v2, v1, v3, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_89

    .line 303
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 303
    invoke-static {v2, v1, v3, v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    const/16 v0, 0x21

    .line 305
    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    :cond_89
    if-nez p12, :cond_96

    .line 310
    invoke-virtual {p0, v1, v4, v0}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    const/4 v0, 0x6

    .line 311
    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 315
    :cond_96
    const-string v2, "sendTextForSubscriber"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 320
    :try_start_9f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 322
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SmsController;->isBluetoothSubscription(Landroid/telephony/SubscriptionInfo;)Z

    move-result v2

    if-eqz v2, :cond_b5

    move-object v2, p0

    move-object/from16 v5, p6

    move-object/from16 v7, p8

    .line 323
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/SmsController;->sendBluetoothText(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_cc

    :catchall_b2
    move-exception v0

    move-object p0, v0

    goto :goto_d0

    .line 325
    :cond_b5
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p13

    move-object v2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/telephony/SmsController;->sendIccText(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZ)V
    :try_end_cc
    .catchall {:try_start_9f .. :try_end_cc} :catchall_b2

    .line 330
    :goto_cc
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_d0
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    throw p0

    .line 286
    :cond_d4
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires MODIFY_PHONE_STATE permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .registers 26

    move-object/from16 v4, p4

    move-object/from16 v7, p7

    if-nez p2, :cond_a

    .line 384
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    :cond_a
    move-object v1, p2

    .line 386
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextForSubscriberWithOptions caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsController"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 392
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 391
    invoke-static {v0, p1, v3, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 393
    iget-object p2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 394
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 393
    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    const/16 p1, 0x21

    .line 395
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 400
    :cond_40
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 p1, 0x6

    .line 401
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 405
    :cond_4b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 407
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextWithOptions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    return-void

    .line 411
    :cond_69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendTextWithOptions iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 413
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public blacklist sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 21

    move/from16 v1, p4

    move/from16 v0, p6

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVisualVoicemailSmsForSubscriber caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1013
    const-string p0, "sendVisualVoicemailSmsForSubscriber: Do not send non-emergency SMS in ECBM as it forces device to exit ECBM."

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1019
    :cond_2a
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 1020
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v5, p5

    .line 1019
    invoke-static {v2, v1, v3, v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 1021
    iget-object p2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 1022
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 1021
    invoke-static {p2, v1, p3, p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    const/16 p1, 0x21

    move-object/from16 v8, p8

    .line 1023
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    :cond_49
    move-object/from16 v8, p8

    if-nez v0, :cond_5b

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v7, p7

    .line 1028
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/SmsController;->sendTextForSubscriberWithSelfPermissionsInternal(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    return-void

    .line 1032
    :cond_5b
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v7, p7

    invoke-virtual {v7, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    int-to-short v7, v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v1, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p8

    .line 1033
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/SmsController;->sendDataForSubscriberWithSelfPermissionsInternal(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public blacklist setPremiumSmsPermission(Ljava/lang/String;I)V
    .registers 4

    .line 567
    const-string v0, "setPremiumSmsPermission"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsController;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SmsController;->setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V

    return-void
.end method

.method public blacklist setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V
    .registers 4

    .line 576
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 578
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setPremiumSmsPermission(Ljava/lang/String;I)V

    return-void

    .line 580
    :cond_a
    const-string p0, "SmsController"

    const-string p1, "setPremiumSmsPermissionForSubscriber iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 5

    if-nez p3, :cond_6

    .line 1062
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p3

    .line 1065
    :cond_6
    const-string v0, "setSmscAddressOnIccEfForSubscriber"

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 1070
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setSmscAddressOnIccEf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1072
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setSmscAddressOnIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setStorageMonitorMemoryStatusOverride(IZ)V
    .registers 6

    .line 934
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 937
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 945
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 946
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 944
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_2c

    .line 950
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 952
    :try_start_1e
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SmsStorageMonitor;->sendMemoryStatusOverride(Z)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_27

    .line 954
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 955
    throw p0

    .line 947
    :cond_2c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "setStorageMonitorMemoryStatusOverride needs MODIFY_PHONE_STATE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 939
    :cond_34
    const-string p0, "SmsController"

    const-string p1, "Phone Object is Null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public greylist-max-r updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    .registers 6

    if-nez p2, :cond_6

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 116
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 118
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result p0

    return p0

    .line 120
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateMessageOnIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
