.class public Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceResponse;
.super Ljava/lang/Object;
.source "ExecuteInIsolatedServiceResponse.java"


# static fields
.field public static final whitelist DEFAULT_BEST_VALUE:I = -0x1


# instance fields
.field private blacklist mBestValue:I

.field private final blacklist mSurfacePackageToken:Landroid/adservices/ondevicepersonalization/SurfacePackageToken;


# direct methods
.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/SurfacePackageToken;)V
    .registers 3
    .param p1, "surfacePackageToken"    # Landroid/adservices/ondevicepersonalization/SurfacePackageToken;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceResponse;->mBestValue:I

    .line 75
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceResponse;->mSurfacePackageToken:Landroid/adservices/ondevicepersonalization/SurfacePackageToken;

    .line 76
    return-void
.end method

.method public constructor whitelist <init>(Landroid/adservices/ondevicepersonalization/SurfacePackageToken;I)V
    .registers 10
    .param p1, "surfacePackageToken"    # Landroid/adservices/ondevicepersonalization/SurfacePackageToken;
    .param p2, "bestValue"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceResponse;->mBestValue:I

    .line 68
    const-class v1, Landroid/annotation/IntRange;

    const-string v4, "from"

    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    move v3, p2

    .end local p2    # "bestValue":I
    .local v3, "bestValue":I
    invoke-static/range {v1 .. v6}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 69
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceResponse;->mSurfacePackageToken:Landroid/adservices/ondevicepersonalization/SurfacePackageToken;

    .line 70
    iput v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceResponse;->mBestValue:I

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist getBestValue()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceResponse;->mBestValue:I

    return v0
.end method

.method public whitelist getSurfacePackageToken()Landroid/adservices/ondevicepersonalization/SurfacePackageToken;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceResponse;->mSurfacePackageToken:Landroid/adservices/ondevicepersonalization/SurfacePackageToken;

    return-object v0
.end method
