.class public interface abstract Landroid/app/appfunctions/IAppFunctionManager;
.super Ljava/lang/Object;
.source "IAppFunctionManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/IAppFunctionManager$Stub;,
        Landroid/app/appfunctions/IAppFunctionManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.appfunctions.IAppFunctionManager"


# virtual methods
.method public abstract blacklist executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
