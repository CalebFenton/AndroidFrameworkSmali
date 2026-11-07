.class public abstract Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;
.super Landroid/app/Service;
.source "RemoteLockscreenValidationService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.remotelockscreenvalidation.RemoteLockscreenValidationService"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;

    invoke-direct {v0, p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService$1;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;)V

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;->mInterface:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 88
    const-string v0, "android.service.remotelockscreenvalidation.RemoteLockscreenValidationService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 89
    sget-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;->TAG:Ljava/lang/String;

    const-string v1, "Wrong action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_15
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationService;->mInterface:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    invoke-interface {v0}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onValidateLockscreenGuess([BLandroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/RemoteLockscreenValidationResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method
