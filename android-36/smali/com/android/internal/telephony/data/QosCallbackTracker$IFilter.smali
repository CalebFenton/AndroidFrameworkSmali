.class public interface abstract Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;
.super Ljava/lang/Object;
.source "QosCallbackTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/QosCallbackTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFilter"
.end annotation


# virtual methods
.method public abstract blacklist matchesLocalAddress(Ljava/net/InetAddress;II)Z
.end method

.method public abstract blacklist matchesProtocol(I)Z
.end method

.method public abstract blacklist matchesRemoteAddress(Ljava/net/InetAddress;II)Z
.end method
