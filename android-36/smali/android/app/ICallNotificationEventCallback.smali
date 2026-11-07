.class public interface abstract Landroid/app/ICallNotificationEventCallback;
.super Ljava/lang/Object;
.source "ICallNotificationEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ICallNotificationEventCallback$Stub;,
        Landroid/app/ICallNotificationEventCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.ICallNotificationEventCallback"


# virtual methods
.method public abstract blacklist onCallNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCallNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
