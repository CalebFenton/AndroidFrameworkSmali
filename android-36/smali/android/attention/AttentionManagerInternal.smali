.class public abstract Landroid/attention/AttentionManagerInternal;
.super Ljava/lang/Object;
.source "AttentionManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;,
        Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
.end method

.method public abstract blacklist checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z
.end method

.method public abstract blacklist isAttentionServiceSupported()Z
.end method

.method public abstract blacklist isProximitySupported()Z
.end method

.method public abstract blacklist onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z
.end method

.method public abstract blacklist onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
.end method
