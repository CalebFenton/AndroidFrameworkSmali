.class public abstract Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;
.super Lcom/android/internal/telephony/data/DataCallback;
.source "AccessNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AccessNetworksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AccessNetworksManagerCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 375
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public abstract blacklist onPreferredTransportChanged(IZ)V
.end method
