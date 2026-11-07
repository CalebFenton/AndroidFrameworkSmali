.class public Landroid/adservices/ondevicepersonalization/RequestToken;
.super Ljava/lang/Object;
.source "RequestToken.java"


# instance fields
.field private final blacklist mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

.field private final blacklist mFcService:Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

.field private final blacklist mModelService:Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;

.field private final blacklist mStartTimeMillis:J

.field private final blacklist mUserData:Landroid/adservices/ondevicepersonalization/UserData;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;Landroid/adservices/ondevicepersonalization/UserData;)V
    .registers 7
    .param p1, "binder"    # Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    .param p2, "fcServiceBinder"    # Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;
    .param p3, "modelServiceBinder"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;
    .param p4, "userData"    # Landroid/adservices/ondevicepersonalization/UserData;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestToken;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 53
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/RequestToken;->mFcService:Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    .line 54
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/RequestToken;->mModelService:Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;

    .line 55
    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/RequestToken;->mUserData:Landroid/adservices/ondevicepersonalization/UserData;

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestToken;->mStartTimeMillis:J

    .line 57
    return-void
.end method


# virtual methods
.method blacklist getDataAccessService()Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestToken;->mDataAccessService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    return-object v0
.end method

.method blacklist getFederatedComputeService()Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestToken;->mFcService:Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;

    return-object v0
.end method

.method blacklist getModelService()Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestToken;->mModelService:Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;

    return-object v0
.end method

.method blacklist getStartTimeMillis()J
    .registers 3

    .line 85
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestToken;->mStartTimeMillis:J

    return-wide v0
.end method

.method blacklist getUserData()Landroid/adservices/ondevicepersonalization/UserData;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestToken;->mUserData:Landroid/adservices/ondevicepersonalization/UserData;

    return-object v0
.end method
