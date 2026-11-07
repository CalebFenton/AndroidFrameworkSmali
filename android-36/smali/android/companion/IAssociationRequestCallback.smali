.class public interface abstract Landroid/companion/IAssociationRequestCallback;
.super Ljava/lang/Object;
.source "IAssociationRequestCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/IAssociationRequestCallback$Stub;,
        Landroid/companion/IAssociationRequestCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.IAssociationRequestCallback"


# virtual methods
.method public abstract blacklist onAssociationCreated(Landroid/companion/AssociationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAssociationPending(Landroid/app/PendingIntent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onFailure(ILjava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
