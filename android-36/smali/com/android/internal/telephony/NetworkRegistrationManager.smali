.class public Lcom/android/internal/telephony/NetworkRegistrationManager;
.super Landroid/os/Handler;
.source "NetworkRegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;,
        Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;,
        Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
    }
.end annotation


# instance fields
.field private final blacklist mCallbackTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeathRecipient:Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

.field private blacklist mINetworkService:Landroid/telephony/INetworkService;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mRegStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

.field private final blacklist mTag:Ljava/lang/String;

.field private blacklist mTargetBindingPackageName:Ljava/lang/String;

.field private final blacklist mTransportType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$Jv5V-n_daUib-MQNh4HQ_0aERXA(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/Phone;IIII)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/NetworkRegistrationManager;->lambda$new$0(Lcom/android/internal/telephony/Phone;IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackTable(Lcom/android/internal/telephony/NetworkRegistrationManager;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mDeathRecipient:Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmINetworkService(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegStateChangeRegistrants(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransportType(Lcom/android/internal/telephony/NetworkRegistrationManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeathRecipient(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mDeathRecipient:Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmINetworkService(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/telephony/INetworkService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/telephony/Phone;)V
    .registers 6

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 58
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 127
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    .line 69
    iput p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    .line 70
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_25

    .line 73
    const-string p1, "C"

    goto :goto_27

    :cond_25
    const-string p1, "I"

    :goto_27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NRM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTag:Ljava/lang/String;

    .line 76
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_66

    .line 79
    new-instance v0, Lcom/android/internal/telephony/NetworkRegistrationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NetworkRegistrationManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V

    new-instance v1, Lcom/android/internal/telephony/NetworkRegistrationManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/telephony/NetworkRegistrationManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {p1, v0, v1}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    :cond_66
    const/4 p1, 0x0

    .line 92
    invoke-static {p0, v2, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 95
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private blacklist bindService(Ljava/lang/String;)V
    .registers 6

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9c

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_9c

    .line 247
    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 248
    const-string p1, "Can\'t find the binding package"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void

    .line 253
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.telephony.NetworkService"

    if-eqz v1, :cond_31

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3f

    .line 258
    :cond_31
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 265
    :goto_3f
    :try_start_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    .line 266
    invoke-static {v2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    .line 267
    new-instance v1, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager-IA;)V

    iput-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_84

    .line 270
    const-string p1, "Cannot bind to the data service."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void

    :catch_82
    move-exception p1

    goto :goto_87

    .line 273
    :cond_84
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTargetBindingPackageName:Ljava/lang/String;
    :try_end_86
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_86} :catch_82

    return-void

    .line 275
    :goto_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void

    .line 243
    :cond_9c
    :goto_9c
    const-string p1, "can\'t bindService with invalid phone or phoneId."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getClassName()Ljava/lang/String;
    .registers 5

    .line 332
    iget v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const v0, 0x10402fd

    .line 342
    const-string v1, "carrier_network_service_wlan_class_override_string"

    goto :goto_2c

    .line 344
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport type not WWAN or WLAN. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    const v0, 0x1040302

    .line 337
    const-string v1, "carrier_network_service_wwan_class_override_string"

    .line 349
    :goto_2c
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 353
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-static {v2, p0, v3}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 354
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_63

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 356
    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_63
    return-object v0
.end method

.method private blacklist getPackageName()Ljava/lang/String;
    .registers 5

    .line 297
    iget v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const v0, 0x10402fe

    .line 307
    const-string v1, "carrier_network_service_wlan_package_override_string"

    goto :goto_2c

    .line 309
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport type not WWAN or WLAN. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    const v0, 0x1040303

    .line 302
    const-string v1, "carrier_network_service_wwan_package_override_string"

    .line 314
    :goto_2c
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 318
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 317
    invoke-static {v2, p0, v3}, Landroid/telephony/CarrierConfigManager;->getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_63

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 321
    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_63
    return-object v0
.end method

.method private synthetic blacklist lambda$new$0(Lcom/android/internal/telephony/Phone;IIII)V
    .registers 6

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-ne p2, p1, :cond_e

    .line 86
    const-string p1, "Carrier config changed. Try to bind network service."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->rebindService()V

    :cond_e
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 363
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 367
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist rebindService()V
    .registers 4

    .line 280
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTargetBindingPackageName:Ljava/lang/String;

    .line 283
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already bound or being bound."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    return-void

    .line 288
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->unbindService()V

    .line 289
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->bindService(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist unbindService()V
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Landroid/telephony/INetworkService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 224
    const-string v0, "unbinding service"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    .line 227
    :try_start_13
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/telephony/INetworkService;->removeNetworkServiceProvider(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_1f

    goto :goto_34

    :catch_1f
    move-exception v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove data service provider. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    .line 233
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    if-eqz v0, :cond_43

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_43
    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    .line 237
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    .line 238
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->rebindService()V

    return-void
.end method

.method public blacklist isServiceConnected()Z
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Landroid/telephony/INetworkService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist registerForNetworkRegistrationInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 123
    const-string v0, "registerForNetworkRegistrationInfoChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist requestNetworkRegistrationInfo(ILandroid/os/Message;)V
    .registers 7

    if-nez p2, :cond_3

    goto :goto_76

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3a

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service not connected. Domain = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1a

    .line 135
    const-string p1, "CS"

    goto :goto_1c

    :cond_1a
    const-string p1, "PS"

    :goto_1c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    .line 136
    new-instance p0, Landroid/os/AsyncResult;

    iget-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Service not connected."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 138
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 142
    :cond_3a
    new-instance v0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager-IA;)V

    .line 144
    :try_start_3f
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, p1, v0}, Landroid/telephony/INetworkService;->requestNetworkRegistrationInfo(IILandroid/telephony/INetworkServiceCallback;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4f} :catch_50

    return-void

    :catch_50
    move-exception p1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNetworkRegistrationInfo RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance p0, Landroid/os/AsyncResult;

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :goto_76
    return-void
.end method

.method public blacklist unregisterForNetworkRegistrationInfoChanged(Landroid/os/Handler;)V
    .registers 2

    .line 119
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
