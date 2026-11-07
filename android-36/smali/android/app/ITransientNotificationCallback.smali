.class public interface abstract Landroid/app/ITransientNotificationCallback;
.super Ljava/lang/Object;
.source "ITransientNotificationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITransientNotificationCallback$Stub;,
        Landroid/app/ITransientNotificationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.ITransientNotificationCallback"


# virtual methods
.method public abstract blacklist onToastHidden()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onToastShown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
