.class public interface abstract Lcom/android/internal/telephony/NitzStateMachine$DeviceState;
.super Ljava/lang/Object;
.source "NitzStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NitzStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceState"
.end annotation


# virtual methods
.method public abstract blacklist currentTimeMillis()J
.end method

.method public abstract blacklist elapsedRealtimeMillis()J
.end method

.method public abstract blacklist getIgnoreNitz()Z
.end method

.method public abstract blacklist getNitzNetworkDisconnectRetentionMillis()I
.end method

.method public abstract blacklist getNitzUpdateDiffMillis()I
.end method

.method public abstract blacklist getNitzUpdateSpacingMillis()I
.end method
