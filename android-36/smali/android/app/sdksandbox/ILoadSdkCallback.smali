.class public interface abstract Landroid/app/sdksandbox/ILoadSdkCallback;
.super Ljava/lang/Object;
.source "ILoadSdkCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/ILoadSdkCallback$Stub;,
        Landroid/app/sdksandbox/ILoadSdkCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.sdksandbox.ILoadSdkCallback"


# virtual methods
.method public abstract blacklist onLoadSdkFailure(Landroid/app/sdksandbox/LoadSdkException;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onLoadSdkSuccess(Landroid/app/sdksandbox/SandboxedSdk;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
