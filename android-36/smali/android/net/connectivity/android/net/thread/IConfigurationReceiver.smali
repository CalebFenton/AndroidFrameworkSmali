.class public interface abstract Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;
.super Ljava/lang/Object;
.source "IConfigurationReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/thread/IConfigurationReceiver$Stub;,
        Landroid/net/connectivity/android/net/thread/IConfigurationReceiver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.thread.IConfigurationReceiver"


# virtual methods
.method public abstract blacklist onConfigurationChanged(Landroid/net/thread/ThreadConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
