.class public Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;
.super Ljava/lang/Object;
.source "NitzStateMachine.java"

# interfaces
.implements Lcom/android/internal/telephony/NitzStateMachine$DeviceState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NitzStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceStateImpl"
.end annotation


# instance fields
.field private final blacklist mCr:Landroid/content/ContentResolver;

.field private final blacklist mNitzNetworkDisconnectRetentionMillis:I

.field private final blacklist mNitzUpdateDiffMillis:I

.field private final blacklist mNitzUpdateSpacingMillis:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mCr:Landroid/content/ContentResolver;

    .line 157
    const-string p1, "ro.nitz_update_spacing"

    const v0, 0x927c0

    .line 158
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mNitzUpdateSpacingMillis:I

    .line 160
    const-string p1, "ro.nitz_update_diff"

    const/16 v0, 0x7d0

    .line 161
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mNitzUpdateDiffMillis:I

    .line 162
    const-string p1, "ro.nitz_network_disconnect_retention"

    const v0, 0x493e0

    .line 163
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mNitzNetworkDisconnectRetentionMillis:I

    return-void
.end method


# virtual methods
.method public blacklist currentTimeMillis()J
    .registers 3

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist elapsedRealtimeMillis()J
    .registers 3

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getIgnoreNitz()Z
    .registers 2

    .line 187
    const-string p0, "gsm.ignore-nitz"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 188
    const-string v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getNitzNetworkDisconnectRetentionMillis()I
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mCr:Landroid/content/ContentResolver;

    const-string v1, "nitz_network_disconnect_retention"

    iget p0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mNitzNetworkDisconnectRetentionMillis:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getNitzUpdateDiffMillis()I
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mCr:Landroid/content/ContentResolver;

    const-string v1, "nitz_update_diff"

    iget p0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mNitzUpdateDiffMillis:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getNitzUpdateSpacingMillis()I
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mCr:Landroid/content/ContentResolver;

    const-string v1, "nitz_update_spacing"

    iget p0, p0, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;->mNitzUpdateSpacingMillis:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
