.class public Landroid/net/wifi/aware/IdentityChangedListener;
.super Ljava/lang/Object;
.source "IdentityChangedListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IdentityChangedListener$ClusterChangeEvent;
    }
.end annotation


# static fields
.field public static final whitelist CLUSTER_CHANGE_EVENT_JOINED:I = 0x1

.field public static final whitelist CLUSTER_CHANGE_EVENT_STARTED:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClusterIdChanged(ILandroid/net/MacAddress;)V
    .registers 3
    .param p1, "clusterEventType"    # I
    .param p2, "clusterId"    # Landroid/net/MacAddress;

    .line 71
    return-void
.end method

.method public whitelist onIdentityChanged([B)V
    .registers 2
    .param p1, "mac"    # [B

    .line 61
    return-void
.end method
