.class public Landroid/adservices/AdServicesFrameworkInitializer;
.super Ljava/lang/Object;
.source "AdServicesFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/adservices/topics/TopicsManager;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/adservices/topics/TopicsManager;

    invoke-direct {v0, p0}, Landroid/adservices/topics/TopicsManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$1(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p0, "service"    # Ljava/lang/Object;
    .param p1, "ctx"    # Landroid/content/Context;

    .line 76
    move-object v0, p0

    check-cast v0, Landroid/adservices/topics/TopicsManager;

    invoke-virtual {v0, p1}, Landroid/adservices/topics/TopicsManager;->initialize(Landroid/content/Context;)Landroid/adservices/topics/TopicsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$10(Landroid/content/Context;)Landroid/adservices/common/AdServicesCommonManager;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .line 136
    new-instance v0, Landroid/adservices/common/AdServicesCommonManager;

    invoke-direct {v0, p0}, Landroid/adservices/common/AdServicesCommonManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$11(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/adservices/AdServicesManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/os/IBinder;

    .line 144
    new-instance v0, Landroid/app/adservices/AdServicesManager;

    invoke-static {p1}, Landroid/app/adservices/IAdServicesManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/adservices/IAdServicesManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/adservices/AdServicesManager;-><init>(Landroid/app/adservices/IAdServicesManager;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$2(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p0, "service"    # Ljava/lang/Object;
    .param p1, "ctx"    # Landroid/content/Context;

    .line 85
    move-object v0, p0

    check-cast v0, Landroid/adservices/customaudience/CustomAudienceManager;

    invoke-virtual {v0, p1}, Landroid/adservices/customaudience/CustomAudienceManager;->initialize(Landroid/content/Context;)Landroid/adservices/customaudience/CustomAudienceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$3(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p0, "service"    # Ljava/lang/Object;
    .param p1, "ctx"    # Landroid/content/Context;

    .line 94
    move-object v0, p0

    check-cast v0, Landroid/adservices/adselection/AdSelectionManager;

    invoke-virtual {v0, p1}, Landroid/adservices/adselection/AdSelectionManager;->initialize(Landroid/content/Context;)Landroid/adservices/adselection/AdSelectionManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$4(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p0, "service"    # Ljava/lang/Object;
    .param p1, "ctx"    # Landroid/content/Context;

    .line 105
    move-object v0, p0

    check-cast v0, Landroid/adservices/signals/ProtectedSignalsManager;

    invoke-virtual {v0, p1}, Landroid/adservices/signals/ProtectedSignalsManager;->initialize(Landroid/content/Context;)Landroid/adservices/signals/ProtectedSignalsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$5(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p0, "service"    # Ljava/lang/Object;
    .param p1, "ctx"    # Landroid/content/Context;

    .line 114
    move-object v0, p0

    check-cast v0, Landroid/adservices/measurement/MeasurementManager;

    invoke-virtual {v0, p1}, Landroid/adservices/measurement/MeasurementManager;->initialize(Landroid/content/Context;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$6(Landroid/content/Context;)Landroid/adservices/adid/AdIdManager;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .line 118
    new-instance v0, Landroid/adservices/adid/AdIdManager;

    invoke-direct {v0, p0}, Landroid/adservices/adid/AdIdManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$7(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p0, "service"    # Ljava/lang/Object;
    .param p1, "ctx"    # Landroid/content/Context;

    .line 122
    move-object v0, p0

    check-cast v0, Landroid/adservices/adid/AdIdManager;

    invoke-virtual {v0, p1}, Landroid/adservices/adid/AdIdManager;->initialize(Landroid/content/Context;)Landroid/adservices/adid/AdIdManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$8(Landroid/content/Context;)Landroid/adservices/appsetid/AppSetIdManager;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .line 126
    new-instance v0, Landroid/adservices/appsetid/AppSetIdManager;

    invoke-direct {v0, p0}, Landroid/adservices/appsetid/AppSetIdManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$9(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p0, "service"    # Ljava/lang/Object;
    .param p1, "ctx"    # Landroid/content/Context;

    .line 131
    move-object v0, p0

    check-cast v0, Landroid/adservices/appsetid/AppSetIdManager;

    invoke-virtual {v0, p1}, Landroid/adservices/appsetid/AppSetIdManager;->initialize(Landroid/content/Context;)Landroid/adservices/appsetid/AppSetIdManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 68
    const-string v0, "Registering AdServices\'s TopicsManager."

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 69
    const-class v0, Landroid/adservices/topics/TopicsManager;

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "topics_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 73
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->getInstance()Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    move-result-object v0

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda7;-><init>()V

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->registerServiceMutator(Ljava/lang/String;Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;)V

    .line 78
    const-string v0, "Registering AdServices\'s CustomAudienceManager."

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 79
    const-class v0, Landroid/adservices/customaudience/CustomAudienceManager;

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda8;-><init>()V

    const-string v2, "custom_audience_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 82
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->getInstance()Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    move-result-object v0

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda9;-><init>()V

    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->registerServiceMutator(Ljava/lang/String;Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;)V

    .line 87
    const-string v0, "Registering AdServices\'s AdSelectionManager."

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 88
    const-class v0, Landroid/adservices/adselection/AdSelectionManager;

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda10;-><init>()V

    const-string v2, "ad_selection_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 91
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->getInstance()Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    move-result-object v0

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda11;-><init>()V

    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->registerServiceMutator(Ljava/lang/String;Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;)V

    .line 96
    const-string v0, "Registering AdServices\'s ProtectedSignalsManager."

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 97
    const-class v0, Landroid/adservices/signals/ProtectedSignalsManager;

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda12;-><init>()V

    const-string v2, "protected_signals_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 102
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->getInstance()Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    move-result-object v0

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda13;-><init>()V

    .line 103
    invoke-virtual {v0, v2, v1}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->registerServiceMutator(Ljava/lang/String;Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;)V

    .line 107
    const-string v0, "Registering AdServices\'s MeasurementManager."

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 108
    const-class v0, Landroid/adservices/measurement/MeasurementManager;

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda14;-><init>()V

    const-string v2, "measurement_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 111
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->getInstance()Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    move-result-object v0

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda15;-><init>()V

    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->registerServiceMutator(Ljava/lang/String;Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;)V

    .line 116
    const-string v0, "Registering AdServices\'s AdIdManager."

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 117
    const-class v0, Landroid/adservices/adid/AdIdManager;

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "adid_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 120
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->getInstance()Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    move-result-object v0

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda2;-><init>()V

    .line 121
    invoke-virtual {v0, v2, v1}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->registerServiceMutator(Ljava/lang/String;Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;)V

    .line 124
    const-string v0, "Registering AdServices\'s AppSetIdManager."

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 125
    const-class v0, Landroid/adservices/appsetid/AppSetIdManager;

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "appsetid_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 128
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->getInstance()Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    move-result-object v0

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda4;-><init>()V

    .line 129
    invoke-virtual {v0, v2, v1}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->registerServiceMutator(Ljava/lang/String;Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;)V

    .line 133
    const-string v0, "Registering AdServices\'s AdServicesCommonManager."

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 134
    const-class v0, Landroid/adservices/common/AdServicesCommonManager;

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "ad_services_common_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_f3

    .line 139
    const-string v0, "Registering Adservices\'s AdServicesManager."

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 140
    const-class v0, Landroid/app/adservices/AdServicesManager;

    new-instance v1, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/adservices/AdServicesFrameworkInitializer$$ExternalSyntheticLambda6;-><init>()V

    const-string v2, "adservices_manager"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 146
    :cond_f3
    return-void
.end method
