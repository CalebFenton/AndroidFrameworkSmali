.class public interface abstract Landroid/app/sdksandbox/IUnloadSdkCallback;
.super Ljava/lang/Object;
.source "IUnloadSdkCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/IUnloadSdkCallback$Stub;,
        Landroid/app/sdksandbox/IUnloadSdkCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.sdksandbox.IUnloadSdkCallback"


# virtual methods
.method public abstract blacklist onUnloadSdk(Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
