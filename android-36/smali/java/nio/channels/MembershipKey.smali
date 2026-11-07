.class public abstract Ljava/nio/channels/MembershipKey;
.super Ljava/lang/Object;
.source "MembershipKey.java"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api block(Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api channel()Ljava/nio/channels/MulticastChannel;
.end method

.method public abstract whitelist test-api drop()V
.end method

.method public abstract whitelist test-api group()Ljava/net/InetAddress;
.end method

.method public abstract whitelist test-api isValid()Z
.end method

.method public abstract whitelist test-api networkInterface()Ljava/net/NetworkInterface;
.end method

.method public abstract whitelist test-api sourceAddress()Ljava/net/InetAddress;
.end method

.method public abstract whitelist test-api unblock(Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
.end method
