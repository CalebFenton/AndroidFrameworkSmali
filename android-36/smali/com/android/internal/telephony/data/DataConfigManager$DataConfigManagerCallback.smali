.class public Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;
.super Lcom/android/internal/telephony/data/DataCallback;
.source "DataConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataConfigManagerCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 394
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onCarrierConfigChanged()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist onDeviceConfigChanged()V
    .registers 1

    .line 0
    return-void
.end method
