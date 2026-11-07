.class public Lcom/android/server/net/BaseNetdEventCallback;
.super Landroid/net/INetdEventCallback$Stub;
.source "BaseNetdEventCallback.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/net/INetdEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnectEvent(Ljava/lang/String;IJI)V
    .registers 6
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timestamp"    # J
    .param p5, "uid"    # I

    .line 49
    return-void
.end method

.method public blacklist onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "ipAddresses"    # [Ljava/lang/String;
    .param p6, "ipAddressesCount"    # I
    .param p7, "timestamp"    # J
    .param p9, "uid"    # I

    .line 32
    return-void
.end method

.method public blacklist onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 5
    .param p1, "netId"    # I
    .param p2, "added"    # Z
    .param p3, "prefixString"    # Ljava/lang/String;
    .param p4, "prefixLength"    # I

    .line 38
    return-void
.end method

.method public blacklist onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "netId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "validated"    # Z

    .line 44
    return-void
.end method
