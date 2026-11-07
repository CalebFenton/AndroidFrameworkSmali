.class public abstract Landroid/app/appfunctions/AppFunctionService;
.super Landroid/app/Service;
.source "AppFunctionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.app.appfunctions.AppFunctionService"


# instance fields
.field private final blacklist mBinder:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbuildCancellationSignal(Landroid/app/appfunctions/ICancellationCallback;)Landroid/os/CancellationSignal;
    .registers 1

    invoke-static {p0}, Landroid/app/appfunctions/AppFunctionService;->buildCancellationSignal(Landroid/app/appfunctions/ICancellationCallback;)Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoErrorCode(Ljava/lang/Throwable;)I
    .registers 1

    invoke-static {p0}, Landroid/app/appfunctions/AppFunctionService;->toErrorCode(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 148
    new-instance v0, Landroid/app/appfunctions/AppFunctionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/appfunctions/AppFunctionService$$ExternalSyntheticLambda0;-><init>(Landroid/app/appfunctions/AppFunctionService;)V

    .line 149
    invoke-static {p0, v0}, Landroid/app/appfunctions/AppFunctionService;->createBinder(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)Landroid/os/Binder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionService;->mBinder:Landroid/os/Binder;

    .line 148
    return-void
.end method

.method private static blacklist buildCancellationSignal(Landroid/app/appfunctions/ICancellationCallback;)Landroid/os/CancellationSignal;
    .registers 5
    .param p0, "cancellationCallback"    # Landroid/app/appfunctions/ICancellationCallback;

    .line 136
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 137
    .local v0, "cancellationSignalTransport":Landroid/os/ICancellationSignal;
    nop

    .line 138
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    .line 140
    .local v1, "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_9
    invoke-interface {p0, v0}, Landroid/app/appfunctions/ICancellationCallback;->sendCancellationTransport(Landroid/os/ICancellationSignal;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    .line 143
    nop

    .line 145
    return-object v1

    .line 141
    :catch_e
    move-exception v2

    .line 142
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static blacklist createBinder(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)Landroid/os/Binder;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onExecuteFunction"    # Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;

    .line 92
    new-instance v0, Landroid/app/appfunctions/AppFunctionService$1;

    invoke-direct {v0, p0, p1}, Landroid/app/appfunctions/AppFunctionService$1;-><init>(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)V

    return-object v0
.end method

.method private static blacklist toErrorCode(Ljava/lang/Throwable;)I
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 200
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_7

    .line 201
    const/16 v0, 0x3e9

    return v0

    .line 203
    :cond_7
    const/16 v0, 0xbb8

    return v0
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 154
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionService;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method public abstract whitelist onExecuteFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appfunctions/ExecuteAppFunctionRequest;",
            "Ljava/lang/String;",
            "Landroid/content/pm/SigningInfo;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/appfunctions/ExecuteAppFunctionResponse;",
            "Landroid/app/appfunctions/AppFunctionException;",
            ">;)V"
        }
    .end annotation
.end method
