.class public interface abstract Landroid/app/appfunctions/IExecuteAppFunctionCallback;
.super Ljava/lang/Object;
.source "IExecuteAppFunctionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;,
        Landroid/app/appfunctions/IExecuteAppFunctionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.appfunctions.IExecuteAppFunctionCallback"


# virtual methods
.method public abstract blacklist onError(Landroid/app/appfunctions/AppFunctionException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
