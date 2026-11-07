.class public interface abstract Landroid/app/appfunctions/IAppFunctionService;
.super Ljava/lang/Object;
.source "IAppFunctionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/IAppFunctionService$Stub;,
        Landroid/app/appfunctions/IAppFunctionService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.appfunctions.IAppFunctionService"


# virtual methods
.method public abstract blacklist executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/content/pm/SigningInfo;Landroid/app/appfunctions/ICancellationCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
