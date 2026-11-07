.class public final Landroid/security/authenticationpolicy/AuthenticationPolicyManager;
.super Ljava/lang/Object;
.source "AuthenticationPolicyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/authenticationpolicy/AuthenticationPolicyManager$DisableSecureLockDeviceRequestStatus;,
        Landroid/security/authenticationpolicy/AuthenticationPolicyManager$EnableSecureLockDeviceRequestStatus;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_ALREADY_ENABLED:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ERROR_INSUFFICIENT_BIOMETRICS:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ERROR_INVALID_PARAMS:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ERROR_NO_BIOMETRICS_ENROLLED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ERROR_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ERROR_UNSUPPORTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SUCCESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AuthenticationPolicyManager"


# instance fields
.field private final blacklist mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/security/authenticationpolicy/IAuthenticationPolicyService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authenticationPolicyService"    # Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    .line 180
    return-void
.end method


# virtual methods
.method public blacklist disableSecureLockDevice(Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I
    .registers 4
    .param p1, "params"    # Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    invoke-interface {v0, p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->disableSecureLockDevice(Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 233
    :catch_7
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist enableSecureLockDevice(Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I
    .registers 4
    .param p1, "params"    # Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 207
    :try_start_0
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    invoke-interface {v0, p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->enableSecureLockDevice(Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 208
    :catch_7
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
