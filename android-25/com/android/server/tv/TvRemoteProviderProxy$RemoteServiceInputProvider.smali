.class final Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;
.super Landroid/media/tv/ITvRemoteServiceInput$Stub;
.source "TvRemoteProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteServiceInputProvider"
.end annotation


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/tv/TvRemoteProviderProxy$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@0
    .prologue
    .line 564
    invoke-direct {p0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;-><init>()V

    #@3
    .line 565
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    #@a
    .line 564
    return-void
.end method


# virtual methods
.method public clearInputBridge(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@8
    .line 593
    .local v0, "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    if-eqz v0, :cond_0

    #@a
    .line 594
    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->clearInputBridge(Landroid/os/IBinder;)V

    #@d
    .line 591
    :cond_0
    return-void
.end method

.method public closeInputBridge(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@8
    .line 585
    .local v0, "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    if-eqz v0, :cond_0

    #@a
    .line 586
    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->closeInputBridge(Landroid/os/IBinder;)V

    #@d
    .line 583
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    #@5
    .line 568
    return-void
.end method

.method public openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "maxPointers"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@8
    .line 577
    .local v0, "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    if-eqz v0, :cond_0

    #@a
    move-object v1, p1

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    .line 578
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V

    #@12
    .line 575
    :cond_0
    return-void
.end method

.method public sendKeyDown(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 608
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@8
    .line 609
    .local v0, "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    if-eqz v0, :cond_0

    #@a
    .line 610
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendKeyDown(Landroid/os/IBinder;I)V

    #@d
    .line 607
    :cond_0
    return-void
.end method

.method public sendKeyUp(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 616
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@8
    .line 617
    .local v0, "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    if-eqz v0, :cond_0

    #@a
    .line 618
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendKeyUp(Landroid/os/IBinder;I)V

    #@d
    .line 615
    :cond_0
    return-void
.end method

.method public sendPointerDown(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@8
    .line 626
    .local v0, "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    if-eqz v0, :cond_0

    #@a
    .line 627
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendPointerDown(Landroid/os/IBinder;III)V

    #@d
    .line 624
    :cond_0
    return-void
.end method

.method public sendPointerSync(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 641
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@8
    .line 642
    .local v0, "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    if-eqz v0, :cond_0

    #@a
    .line 643
    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendPointerSync(Landroid/os/IBinder;)V

    #@d
    .line 640
    :cond_0
    return-void
.end method

.method public sendPointerUp(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@8
    .line 634
    .local v0, "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    if-eqz v0, :cond_0

    #@a
    .line 635
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendPointerUp(Landroid/os/IBinder;I)V

    #@d
    .line 632
    :cond_0
    return-void
.end method

.method public sendTimestamp(Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 600
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    #@8
    .line 601
    .local v0, "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    if-eqz v0, :cond_0

    #@a
    .line 602
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendTimestamp(Landroid/os/IBinder;J)V

    #@d
    .line 599
    :cond_0
    return-void
.end method
