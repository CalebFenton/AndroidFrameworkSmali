.class public interface abstract Lcom/android/internal/telecom/ICallStreamingService;
.super Ljava/lang/Object;
.source "ICallStreamingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallStreamingService$Stub;,
        Lcom/android/internal/telecom/ICallStreamingService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ICallStreamingService"


# virtual methods
.method public abstract blacklist onCallStreamingStarted(Landroid/telecom/StreamingCall;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCallStreamingStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCallStreamingStopped()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setStreamingCallAdapter(Lcom/android/internal/telecom/IStreamingCallAdapter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
