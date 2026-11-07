.class public interface abstract Landroid/net/connectivity/android/net/thread/IThreadNetworkManager;
.super Ljava/lang/Object;
.source "IThreadNetworkManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/thread/IThreadNetworkManager$Stub;,
        Landroid/net/connectivity/android/net/thread/IThreadNetworkManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.thread.IThreadNetworkManager"


# virtual methods
.method public abstract blacklist getAllThreadNetworkControllers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/connectivity/android/net/thread/IThreadNetworkController;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
