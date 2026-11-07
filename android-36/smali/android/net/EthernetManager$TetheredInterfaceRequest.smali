.class public Landroid/net/EthernetManager$TetheredInterfaceRequest;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TetheredInterfaceRequest"
.end annotation


# instance fields
.field private final blacklist mCb:Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;

.field private final blacklist mService:Landroid/net/IEthernetManager;


# direct methods
.method private constructor blacklist <init>(Landroid/net/IEthernetManager;Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V
    .registers 3
    .param p1, "service"    # Landroid/net/IEthernetManager;
    .param p2, "cb"    # Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Landroid/net/EthernetManager$TetheredInterfaceRequest;->mService:Landroid/net/IEthernetManager;

    .line 392
    iput-object p2, p0, Landroid/net/EthernetManager$TetheredInterfaceRequest;->mCb:Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;

    .line 393
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/IEthernetManager;Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;Landroid/net/EthernetManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/EthernetManager$TetheredInterfaceRequest;-><init>(Landroid/net/IEthernetManager;Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V

    return-void
.end method


# virtual methods
.method public whitelist release()V
    .registers 3

    .line 401
    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager$TetheredInterfaceRequest;->mService:Landroid/net/IEthernetManager;

    iget-object v1, p0, Landroid/net/EthernetManager$TetheredInterfaceRequest;->mCb:Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;

    invoke-interface {v0, v1}, Landroid/net/IEthernetManager;->releaseTetheredInterface(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 404
    goto :goto_c

    .line 402
    :catch_8
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 405
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method
