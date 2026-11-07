.class public interface abstract Landroid/service/notification/IStatusBarNotificationHolder;
.super Ljava/lang/Object;
.source "IStatusBarNotificationHolder.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/IStatusBarNotificationHolder$Stub;,
        Landroid/service/notification/IStatusBarNotificationHolder$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o get()Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
