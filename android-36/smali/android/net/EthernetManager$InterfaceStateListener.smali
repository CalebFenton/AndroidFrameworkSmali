.class public interface abstract Landroid/net/EthernetManager$InterfaceStateListener;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InterfaceStateListener"
.end annotation


# virtual methods
.method public abstract blacklist onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method
