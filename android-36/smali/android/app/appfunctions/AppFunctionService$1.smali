.class Landroid/app/appfunctions/AppFunctionService$1;
.super Landroid/app/appfunctions/IAppFunctionService$Stub;
.source "AppFunctionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appfunctions/AppFunctionService;->createBinder(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)Landroid/os/Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$onExecuteFunction:Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;)V
    .registers 3

    .line 92
    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$onExecuteFunction:Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;

    invoke-direct {p0}, Landroid/app/appfunctions/IAppFunctionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .registers 14
    .param p1, "request"    # Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPackageSigningInfo"    # Landroid/content/pm/SigningInfo;
    .param p4, "cancellationCallback"    # Landroid/app/appfunctions/ICancellationCallback;
    .param p5, "callback"    # Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    .line 100
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$context:Landroid/content/Context;

    const-string v1, "android.permission.BIND_APP_FUNCTION_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3c

    .line 104
    new-instance v0, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    invoke-direct {v0, p5}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;-><init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V

    move-object v1, v0

    .line 107
    .local v1, "safeCallback":Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    :try_start_11
    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionService$1;->val$onExecuteFunction:Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;

    .line 111
    invoke-static {p4}, Landroid/app/appfunctions/AppFunctionService;->-$$Nest$smbuildCancellationSignal(Landroid/app/appfunctions/ICancellationCallback;)Landroid/os/CancellationSignal;

    move-result-object v6

    new-instance v7, Landroid/app/appfunctions/AppFunctionService$1$1;

    invoke-direct {v7, p0, v1}, Landroid/app/appfunctions/AppFunctionService$1$1;-><init>(Landroid/app/appfunctions/AppFunctionService$1;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_26

    .line 107
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "request":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "callingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    .local v3, "request":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .local v4, "callingPackage":Ljava/lang/String;
    .local v5, "callingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    :try_start_1f
    invoke-interface/range {v2 .. v7}, Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;->perform(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23

    .line 128
    goto :goto_3b

    .line 123
    :catch_23
    move-exception v0

    move-object p1, v0

    goto :goto_2b

    .end local v3    # "request":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .end local v4    # "callingPackage":Ljava/lang/String;
    .end local v5    # "callingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    .restart local p1    # "request":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "callingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    :catch_26
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 126
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "callingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    .restart local v3    # "request":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .restart local v4    # "callingPackage":Ljava/lang/String;
    .restart local v5    # "callingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    .local p1, "ex":Ljava/lang/Exception;
    :goto_2b
    new-instance p2, Landroid/app/appfunctions/AppFunctionException;

    .line 127
    invoke-static {p1}, Landroid/app/appfunctions/AppFunctionService;->-$$Nest$smtoErrorCode(Ljava/lang/Throwable;)I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 126
    invoke-virtual {v1, p2}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 129
    .end local p1    # "ex":Ljava/lang/Exception;
    :goto_3b
    return-void

    .line 102
    .end local v1    # "safeCallback":Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .end local v3    # "request":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .end local v4    # "callingPackage":Ljava/lang/String;
    .end local v5    # "callingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    .local p1, "request":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "callingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    :cond_3c
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "request":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .restart local v3    # "request":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .restart local v4    # "callingPackage":Ljava/lang/String;
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Can only be called by the system server."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
