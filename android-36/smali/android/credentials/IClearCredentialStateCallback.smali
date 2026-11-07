.class public interface abstract Landroid/credentials/IClearCredentialStateCallback;
.super Ljava/lang/Object;
.source "IClearCredentialStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/IClearCredentialStateCallback$Stub;,
        Landroid/credentials/IClearCredentialStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.credentials.IClearCredentialStateCallback"


# virtual methods
.method public abstract blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
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
