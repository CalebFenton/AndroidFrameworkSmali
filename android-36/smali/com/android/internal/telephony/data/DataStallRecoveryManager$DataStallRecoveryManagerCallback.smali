.class public abstract Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;
.super Lcom/android/internal/telephony/data/DataCallback;
.source "DataStallRecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataStallRecoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DataStallRecoveryManagerCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 252
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public abstract blacklist onDataStallReestablishInternet()V
.end method
