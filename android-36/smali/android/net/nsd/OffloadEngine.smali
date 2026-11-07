.class public interface abstract Landroid/net/nsd/OffloadEngine;
.super Ljava/lang/Object;
.source "OffloadEngine.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/OffloadEngine$OffloadCapability;,
        Landroid/net/nsd/OffloadEngine$OffloadType;
    }
.end annotation


# static fields
.field public static final whitelist OFFLOAD_CAPABILITY_BYPASS_MULTICAST_LOCK:I = 0x1

.field public static final whitelist OFFLOAD_TYPE_FILTER_QUERIES:I = 0x2

.field public static final whitelist OFFLOAD_TYPE_FILTER_REPLIES:I = 0x4

.field public static final whitelist OFFLOAD_TYPE_REPLY:I = 0x1


# virtual methods
.method public abstract whitelist onOffloadServiceRemoved(Landroid/net/nsd/OffloadServiceInfo;)V
.end method

.method public abstract whitelist onOffloadServiceUpdated(Landroid/net/nsd/OffloadServiceInfo;)V
.end method
