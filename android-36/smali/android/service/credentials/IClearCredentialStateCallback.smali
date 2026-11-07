.class public interface abstract Landroid/service/credentials/IClearCredentialStateCallback;
.super Ljava/lang/Object;
.source "IClearCredentialStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/credentials/IClearCredentialStateCallback$Stub;,
        Landroid/service/credentials/IClearCredentialStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.credentials.IClearCredentialStateCallback"


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

.method public abstract blacklist onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
