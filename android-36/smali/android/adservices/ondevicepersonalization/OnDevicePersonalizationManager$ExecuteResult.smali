.class public Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$ExecuteResult;
.super Ljava/lang/Object;
.source "OnDevicePersonalizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExecuteResult"
.end annotation


# instance fields
.field private final blacklist mOutputData:[B

.field private final blacklist mSurfacePackageToken:Landroid/adservices/ondevicepersonalization/SurfacePackageToken;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/SurfacePackageToken;[B)V
    .registers 3
    .param p1, "surfacePackageToken"    # Landroid/adservices/ondevicepersonalization/SurfacePackageToken;
    .param p2, "outputData"    # [B

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$ExecuteResult;->mSurfacePackageToken:Landroid/adservices/ondevicepersonalization/SurfacePackageToken;

    .line 132
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$ExecuteResult;->mOutputData:[B

    .line 133
    return-void
.end method


# virtual methods
.method public whitelist getOutputData()[B
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$ExecuteResult;->mOutputData:[B

    return-object v0
.end method

.method public whitelist getSurfacePackageToken()Landroid/adservices/ondevicepersonalization/SurfacePackageToken;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$ExecuteResult;->mSurfacePackageToken:Landroid/adservices/ondevicepersonalization/SurfacePackageToken;

    return-object v0
.end method
