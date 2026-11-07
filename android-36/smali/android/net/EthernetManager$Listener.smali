.class public interface abstract Landroid/net/EthernetManager$Listener;
.super Ljava/lang/Object;
.source "EthernetManager.java"

# interfaces
.implements Landroid/net/EthernetManager$InterfaceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract greylist-max-r onAvailabilityChanged(Ljava/lang/String;Z)V
.end method

.method public blacklist onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "role"    # I
    .param p4, "configuration"    # Landroid/net/IpConfiguration;

    .line 171
    const/4 v0, 0x2

    if-lt p2, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-interface {p0, p1, v0}, Landroid/net/EthernetManager$Listener;->onAvailabilityChanged(Ljava/lang/String;Z)V

    .line 172
    return-void
.end method
