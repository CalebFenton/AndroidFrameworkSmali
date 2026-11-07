.class public final Lcom/android/adservices/AdServicesCommon;
.super Ljava/lang/Object;
.source "AdServicesCommon.java"


# static fields
.field public static final blacklist ACTION_ADID_PROVIDER_SERVICE:Ljava/lang/String; = "android.adservices.adid.AdIdProviderService"

.field public static final blacklist ACTION_ADID_SERVICE:Ljava/lang/String; = "android.adservices.ADID_SERVICE"

.field public static final blacklist ACTION_AD_SELECTION_SERVICE:Ljava/lang/String; = "android.adservices.adselection.AD_SELECTION_SERVICE"

.field public static final blacklist ACTION_AD_SERVICES_COBALT_UPLOAD_SERVICE:Ljava/lang/String; = "android.adservices.cobalt.AdServicesCobaltUploadService"

.field public static final blacklist ACTION_AD_SERVICES_COMMON_SERVICE:Ljava/lang/String; = "android.adservices.AD_SERVICES_COMMON_SERVICE"

.field public static final blacklist ACTION_APPSETID_PROVIDER_SERVICE:Ljava/lang/String; = "android.adservices.appsetid.AppSetIdProviderService"

.field public static final blacklist ACTION_APPSETID_SERVICE:Ljava/lang/String; = "android.adservices.APPSETID_SERVICE"

.field public static final blacklist ACTION_CUSTOM_AUDIENCE_SERVICE:Ljava/lang/String; = "android.adservices.customaudience.CUSTOM_AUDIENCE_SERVICE"

.field public static final blacklist ACTION_MEASUREMENT_SERVICE:Ljava/lang/String; = "android.adservices.MEASUREMENT_SERVICE"

.field public static final blacklist ACTION_ON_DEVICE_PERSONALIZATION_SERVICE:Ljava/lang/String; = "android.OnDevicePersonalizationService"

.field public static final blacklist ACTION_PROTECTED_SIGNALS_SERVICE:Ljava/lang/String; = "android.adservices.signals.PROTECTED_SIGNALS_SERVICE"

.field public static final blacklist ACTION_SHELL_COMMAND_SERVICE:Ljava/lang/String; = "android.adservices.SHELL_COMMAND_SERVICE"

.field public static final blacklist ACTION_TOPICS_SERVICE:Ljava/lang/String; = "android.adservices.TOPICS_SERVICE"

.field public static final blacklist ADEXTSERVICES_PACKAGE_NAME_SUFFIX:Ljava/lang/String; = "android.ext.services"

.field public static final blacklist ADSERVICES_APEX_NAME_SUFFIX:Ljava/lang/String; = "android.adservices"

.field public static final blacklist ADSERVICES_APK_PACKAGE_NAME_SUFFIX:Ljava/lang/String; = "android.adservices.api"

.field public static final blacklist ADSERVICES_CLASS_PATH_PREFIX:Ljava/lang/String; = "com.android.adservices."

.field public static final blacklist BINDER_TIMEOUT_SYSTEM_PROPERTY_NAME:Ljava/lang/String; = "binder_timeout"

.field public static final blacklist EXTSERVICES_APEX_NAME_SUFFIX:Ljava/lang/String; = "android.extservices"

.field public static final blacklist SYSTEM_PROPERTY_FOR_DEBUGGING_BINDER_TIMEOUT:Ljava/lang/String; = "debug.adservices.binder_timeout"

.field public static final blacklist SYSTEM_PROPERTY_FOR_DEBUGGING_FEATURE_RAM_LOW:Ljava/lang/String; = "debug.adservices.low_ram_device"

.field public static final blacklist SYSTEM_PROPERTY_FOR_DEBUGGING_PREFIX:Ljava/lang/String; = "debug.adservices."


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist enforceSingleServiceForAdIdAndAppSetId(Ljava/lang/String;I)V
    .registers 5
    .param p0, "intentAction"    # Ljava/lang/String;
    .param p1, "numberOfResolvedServices"    # I

    .line 182
    const-string v0, "android.adservices.adid.AdIdProviderService"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 183
    const-string v0, "android.adservices.appsetid.AppSetIdProviderService"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_10
    const/4 v0, 0x1

    if-gt p1, v0, :cond_14

    .line 187
    :cond_13
    return-void

    .line 185
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found multiple services for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getServiceInfoIfAdServices(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ServiceInfo;
    .registers 5
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 161
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 162
    return-object v0

    .line 165
    :cond_4
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 166
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_1b

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-nez v2, :cond_d

    goto :goto_1b

    .line 170
    :cond_d
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v3, "android.adservices.api"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 171
    move-object v0, v1

    goto :goto_1a

    .line 172
    :cond_19
    nop

    .line 170
    :goto_1a
    return-object v0

    .line 167
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method static synthetic blacklist lambda$resolveAdServicesService$0(Landroid/content/pm/ResolveInfo;)Z
    .registers 2
    .param p0, "s"    # Landroid/content/pm/ResolveInfo;

    .line 152
    if-eqz p0, :cond_8

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$resolveAdServicesService$1(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Landroid/content/pm/ResolveInfo;

    .line 153
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist resolveAdServicesService(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;
    .registers 7
    .param p1, "intentAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ServiceInfo;"
        }
    .end annotation

    .line 125
    .local p0, "intentResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_9

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 127
    .local v1, "size":I
    :goto_9
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesCommon;->enforceSingleServiceForAdIdAndAppSetId(Ljava/lang/String;I)V

    .line 129
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_68

    .line 150
    nop

    .line 151
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/adservices/AdServicesCommon$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/adservices/AdServicesCommon$$ExternalSyntheticLambda0;-><init>()V

    .line 152
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/adservices/AdServicesCommon$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/adservices/AdServicesCommon$$ExternalSyntheticLambda1;-><init>()V

    .line 153
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 154
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "Found multiple services %s for %s"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    return-object v2

    .line 144
    .end local v0    # "intents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3b
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-static {v0}, Lcom/android/adservices/AdServicesCommon;->getServiceInfoIfAdServices(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 145
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v0, :cond_53

    .line 146
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-static {v2}, Lcom/android/adservices/AdServicesCommon;->getServiceInfoIfAdServices(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    goto :goto_54

    .line 147
    :cond_53
    move-object v2, v0

    .line 145
    :goto_54
    return-object v2

    .line 137
    .end local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :pswitch_55
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 131
    :pswitch_5e
    const-string v0, "Failed to find resolveInfo for adServices service. Intent action: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    return-object v2

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_55
        :pswitch_3b
    .end packed-switch
.end method
