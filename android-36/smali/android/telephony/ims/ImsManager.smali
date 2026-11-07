.class public Landroid/telephony/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"


# static fields
.field public static final blacklist ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION:Ljava/lang/String; = "com.android.internal.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

.field public static final whitelist ACTION_WFC_IMS_REGISTRATION_ERROR:Ljava/lang/String; = "android.telephony.ims.action.WFC_IMS_REGISTRATION_ERROR"

.field public static final whitelist EXTRA_WFC_REGISTRATION_FAILURE_MESSAGE:Ljava/lang/String; = "android.telephony.ims.extra.WFC_REGISTRATION_FAILURE_MESSAGE"

.field public static final whitelist EXTRA_WFC_REGISTRATION_FAILURE_TITLE:Ljava/lang/String; = "android.telephony.ims.extra.WFC_REGISTRATION_FAILURE_TITLE"

.field private static final blacklist sRcsCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sTelephonyCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public static synthetic blacklist $r8$lambda$svhjAwfCiwAynbY1fimZxKS10Oo()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    invoke-static {}, Landroid/telephony/ims/ImsManager;->getITelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$yfgHCYiuDfg_DPmhmIhVPYRfRPU()Landroid/telephony/ims/aidl/IImsRcsController;
    .registers 1

    invoke-static {}, Landroid/telephony/ims/ImsManager;->getIImsRcsControllerInterface()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 97
    new-instance v0, Landroid/telephony/BinderCacheManager;

    new-instance v1, Landroid/telephony/ims/ImsManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/ims/ImsManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Landroid/telephony/BinderCacheManager;-><init>(Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;)V

    sput-object v0, Landroid/telephony/ims/ImsManager;->sTelephonyCache:Landroid/telephony/BinderCacheManager;

    .line 99
    new-instance v0, Landroid/telephony/BinderCacheManager;

    new-instance v1, Landroid/telephony/ims/ImsManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/telephony/ims/ImsManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Landroid/telephony/BinderCacheManager;-><init>(Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;)V

    sput-object v0, Landroid/telephony/ims/ImsManager;->sRcsCache:Landroid/telephony/BinderCacheManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroid/telephony/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method private static blacklist getIImsRcsControllerInterface()Landroid/telephony/ims/aidl/IImsRcsController;
    .registers 1

    .line 189
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getITelephonyInterface()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .line 197
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;
    .registers 5
    .param p1, "subscriptionId"    # I

    .line 137
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 141
    new-instance v0, Landroid/telephony/ims/ImsMmTelManager;

    iget-object v1, p0, Landroid/telephony/ims/ImsManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/telephony/ims/ImsManager;->sTelephonyCache:Landroid/telephony/BinderCacheManager;

    invoke-direct {v0, v1, p1, v2}, Landroid/telephony/ims/ImsMmTelManager;-><init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;)V

    return-object v0

    .line 138
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subscription ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;
    .registers 6
    .param p1, "subscriptionId"    # I

    .line 121
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 125
    new-instance v0, Landroid/telephony/ims/ImsRcsManager;

    iget-object v1, p0, Landroid/telephony/ims/ImsManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/telephony/ims/ImsManager;->sRcsCache:Landroid/telephony/BinderCacheManager;

    sget-object v3, Landroid/telephony/ims/ImsManager;->sTelephonyCache:Landroid/telephony/BinderCacheManager;

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/telephony/ims/ImsRcsManager;-><init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager;)V

    return-object v0

    .line 122
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subscription ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getProvisioningManager(I)Landroid/telephony/ims/ProvisioningManager;
    .registers 5
    .param p1, "subscriptionId"    # I

    .line 179
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 183
    new-instance v0, Landroid/telephony/ims/ProvisioningManager;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ProvisioningManager;-><init>(I)V

    return-object v0

    .line 180
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subscription ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSipDelegateManager(I)Landroid/telephony/ims/SipDelegateManager;
    .registers 6
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 159
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 163
    new-instance v0, Landroid/telephony/ims/SipDelegateManager;

    iget-object v1, p0, Landroid/telephony/ims/ImsManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/telephony/ims/ImsManager;->sRcsCache:Landroid/telephony/BinderCacheManager;

    sget-object v3, Landroid/telephony/ims/ImsManager;->sTelephonyCache:Landroid/telephony/BinderCacheManager;

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/telephony/ims/SipDelegateManager;-><init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager;)V

    return-object v0

    .line 160
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subscription ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
