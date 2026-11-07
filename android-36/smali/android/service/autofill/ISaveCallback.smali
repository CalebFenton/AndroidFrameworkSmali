.class public interface abstract Landroid/service/autofill/ISaveCallback;
.super Ljava/lang/Object;
.source "ISaveCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/ISaveCallback$Stub;,
        Landroid/service/autofill/ISaveCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onFailure(Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onSuccess(Landroid/content/IntentSender;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
