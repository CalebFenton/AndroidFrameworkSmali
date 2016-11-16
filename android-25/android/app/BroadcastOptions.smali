.class public Landroid/app/BroadcastOptions;
.super Ljava/lang/Object;
.source "BroadcastOptions.java"


# static fields
.field static final KEY_MAX_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.maxManifestReceiverApiLevel"

.field static final KEY_MIN_MANIFEST_RECEIVER_API_LEVEL:Ljava/lang/String; = "android:broadcast.minManifestReceiverApiLevel"

.field static final KEY_TEMPORARY_APP_WHITELIST_DURATION:Ljava/lang/String; = "android:broadcast.temporaryAppWhitelistDuration"


# instance fields
.field private mMaxManifestReceiverApiLevel:I

.field private mMinManifestReceiverApiLevel:I

.field private mTemporaryAppWhitelistDuration:J


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    #@6
    .line 33
    const/16 v0, 0x2710

    #@8
    iput v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    #@a
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "opts"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/16 v3, 0x2710

    #@2
    const/4 v2, 0x0

    #@3
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 32
    iput v2, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    #@8
    .line 33
    iput v3, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    #@a
    .line 64
    const-string/jumbo v0, "android:broadcast.temporaryAppWhitelistDuration"

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    #@13
    .line 65
    const-string/jumbo v0, "android:broadcast.minManifestReceiverApiLevel"

    #@16
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    #@1c
    .line 66
    const-string/jumbo v0, "android:broadcast.maxManifestReceiverApiLevel"

    #@1f
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    #@25
    .line 63
    return-void
.end method

.method public static makeBasic()Landroid/app/BroadcastOptions;
    .locals 1

    #@0
    .prologue
    .line 55
    new-instance v0, Landroid/app/BroadcastOptions;

    #@2
    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    #@5
    .line 56
    .local v0, "opts":Landroid/app/BroadcastOptions;
    return-object v0
.end method


# virtual methods
.method public getMaxManifestReceiverApiLevel()I
    .locals 1

    #@0
    .prologue
    .line 120
    iget v0, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    #@2
    return v0
.end method

.method public getMinManifestReceiverApiLevel()I
    .locals 1

    #@0
    .prologue
    .line 102
    iget v0, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    #@2
    return v0
.end method

.method public getTemporaryAppWhitelistDuration()J
    .locals 2

    #@0
    .prologue
    .line 84
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    #@2
    return-wide v0
.end method

.method public setMaxManifestReceiverApiLevel(I)V
    .locals 0
    .param p1, "apiLevel"    # I

    #@0
    .prologue
    .line 112
    iput p1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    #@2
    .line 111
    return-void
.end method

.method public setMinManifestReceiverApiLevel(I)V
    .locals 0
    .param p1, "apiLevel"    # I

    #@0
    .prologue
    .line 94
    iput p1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    #@2
    .line 93
    return-void
.end method

.method public setTemporaryAppWhitelistDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 76
    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    #@2
    .line 75
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    #@0
    .prologue
    .line 132
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 133
    .local v0, "b":Landroid/os/Bundle;
    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v1, v2, v4

    #@b
    if-lez v1, :cond_0

    #@d
    .line 134
    const-string/jumbo v1, "android:broadcast.temporaryAppWhitelistDuration"

    #@10
    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    #@12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@15
    .line 136
    :cond_0
    iget v1, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 137
    const-string/jumbo v1, "android:broadcast.minManifestReceiverApiLevel"

    #@1c
    iget v2, p0, Landroid/app/BroadcastOptions;->mMinManifestReceiverApiLevel:I

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@21
    .line 139
    :cond_1
    iget v1, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    #@23
    const/16 v2, 0x2710

    #@25
    if-eq v1, v2, :cond_2

    #@27
    .line 140
    const-string/jumbo v1, "android:broadcast.maxManifestReceiverApiLevel"

    #@2a
    iget v2, p0, Landroid/app/BroadcastOptions;->mMaxManifestReceiverApiLevel:I

    #@2c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2f
    .line 142
    :cond_2
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_3

    #@35
    const/4 v0, 0x0

    #@36
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_3
    return-object v0
.end method
