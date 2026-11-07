.class public Landroid/app/appfunctions/IAppFunctionService$Default;
.super Ljava/lang/Object;
.source "IAppFunctionService.java"

# interfaces
.implements Landroid/app/appfunctions/IAppFunctionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/IAppFunctionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .registers 6
    .param p1, "request"    # Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPackageSigningInfo"    # Landroid/content/pm/SigningInfo;
    .param p4, "cancellationCallback"    # Landroid/app/appfunctions/ICancellationCallback;
    .param p5, "callback"    # Landroid/app/appfunctions/IExecuteAppFunctionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method
