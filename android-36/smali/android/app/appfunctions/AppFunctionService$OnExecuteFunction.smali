.class public interface abstract Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;
.super Ljava/lang/Object;
.source "AppFunctionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/AppFunctionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnExecuteFunction"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist perform(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
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
