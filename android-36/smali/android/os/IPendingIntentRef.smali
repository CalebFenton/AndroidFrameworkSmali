.class public interface abstract Landroid/os/IPendingIntentRef;
.super Ljava/lang/Object;
.source "IPendingIntentRef.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPendingIntentRef$Stub;,
        Landroid/os/IPendingIntentRef$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IPendingIntentRef"


# virtual methods
.method public abstract blacklist sendActiveConfigsChangedBroadcast([J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendDataBroadcast(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendRestrictedMetricsChangedBroadcast([J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendSubscriberBroadcast(JJJJ[Ljava/lang/String;Landroid/os/StatsDimensionsValueParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
