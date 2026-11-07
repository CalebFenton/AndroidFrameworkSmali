.class public interface abstract Landroid/content/IIntentSender;
.super Ljava/lang/Object;
.source "IIntentSender.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IIntentSender$Stub;,
        Landroid/content/IIntentSender$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
