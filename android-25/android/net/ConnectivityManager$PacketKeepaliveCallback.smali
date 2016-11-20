.class public Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacketKeepaliveCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0
    .param p1, "error"    # I

    #@0
    .prologue
    .line 1459
    return-void
.end method

.method public onStarted()V
    .locals 0

    #@0
    .prologue
    .line 1455
    return-void
.end method

.method public onStopped()V
    .locals 0

    #@0
    .prologue
    .line 1457
    return-void
.end method
