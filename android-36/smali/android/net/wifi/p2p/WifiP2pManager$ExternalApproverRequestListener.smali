.class public interface abstract Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalApproverRequestListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener$ApproverDetachReason;,
        Landroid/net/wifi/p2p/WifiP2pManager$ExternalApproverRequestListener$RequestType;
    }
.end annotation


# static fields
.field public static final whitelist APPROVER_DETACH_REASON_CLOSE:I = 0x3

.field public static final whitelist APPROVER_DETACH_REASON_FAILURE:I = 0x1

.field public static final whitelist APPROVER_DETACH_REASON_REMOVE:I = 0x0

.field public static final whitelist APPROVER_DETACH_REASON_REPLACE:I = 0x2

.field public static final whitelist REQUEST_TYPE_INVITATION:I = 0x1

.field public static final whitelist REQUEST_TYPE_JOIN:I = 0x2

.field public static final whitelist REQUEST_TYPE_NEGOTIATION:I


# virtual methods
.method public abstract whitelist onAttached(Landroid/net/MacAddress;)V
.end method

.method public abstract whitelist onConnectionRequested(ILandroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pDevice;)V
.end method

.method public abstract whitelist onDetached(Landroid/net/MacAddress;I)V
.end method

.method public abstract whitelist onPinGenerated(Landroid/net/MacAddress;Ljava/lang/String;)V
.end method
