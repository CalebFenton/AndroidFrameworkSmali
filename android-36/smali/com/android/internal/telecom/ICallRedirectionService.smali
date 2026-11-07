.class public interface abstract Lcom/android/internal/telecom/ICallRedirectionService;
.super Ljava/lang/Object;
.source "ICallRedirectionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallRedirectionService$Stub;,
        Lcom/android/internal/telecom/ICallRedirectionService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ICallRedirectionService"


# virtual methods
.method public abstract blacklist notifyTimeout()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist placeCall(Lcom/android/internal/telecom/ICallRedirectionAdapter;Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
