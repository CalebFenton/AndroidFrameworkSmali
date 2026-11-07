.class public interface abstract Landroid/service/credentials/IBeginCreateCredentialCallback;
.super Ljava/lang/Object;
.source "IBeginCreateCredentialCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/credentials/IBeginCreateCredentialCallback$Stub;,
        Landroid/service/credentials/IBeginCreateCredentialCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.credentials.IBeginCreateCredentialCallback"


# virtual methods
.method public abstract blacklist onCancellable(Landroid/os/ICancellationSignal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/service/credentials/BeginCreateCredentialResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
