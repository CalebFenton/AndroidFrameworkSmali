.class public interface abstract Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;
.super Ljava/lang/Object;
.source "ISendMgmtFrameEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;,
        Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nl80211.ISendMgmtFrameEvent"

.field public static final blacklist SEND_MGMT_FRAME_ERROR_ALREADY_STARTED:I = 0x5

.field public static final blacklist SEND_MGMT_FRAME_ERROR_MCS_UNSUPPORTED:I = 0x2

.field public static final blacklist SEND_MGMT_FRAME_ERROR_NO_ACK:I = 0x3

.field public static final blacklist SEND_MGMT_FRAME_ERROR_TIMEOUT:I = 0x4

.field public static final blacklist SEND_MGMT_FRAME_ERROR_UNKNOWN:I = 0x1


# virtual methods
.method public abstract blacklist OnAck(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist OnFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
