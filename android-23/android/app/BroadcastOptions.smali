.class public Landroid/app/BroadcastOptions;
.super Ljava/lang/Object;
.source "BroadcastOptions.java"


# static fields
.field public static final KEY_TEMPORARY_APP_WHITELIST_DURATION:Ljava/lang/String; = "android:broadcast.temporaryAppWhitelistDuration"


# instance fields
.field private mTemporaryAppWhitelistDuration:J


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "opts"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const-string/jumbo v0, "android:broadcast.temporaryAppWhitelistDuration"

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    #@c
    .line 49
    return-void
.end method

.method public static makeBasic()Landroid/app/BroadcastOptions;
    .locals 1

    #@0
    .prologue
    .line 41
    new-instance v0, Landroid/app/BroadcastOptions;

    #@2
    invoke-direct {v0}, Landroid/app/BroadcastOptions;-><init>()V

    #@5
    .line 42
    .local v0, "opts":Landroid/app/BroadcastOptions;
    return-object v0
.end method


# virtual methods
.method public getTemporaryAppWhitelistDuration()J
    .locals 2

    #@0
    .prologue
    .line 67
    iget-wide v0, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    #@2
    return-wide v0
.end method

.method public setTemporaryAppWhitelistDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 59
    iput-wide p1, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    #@2
    .line 58
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    #@0
    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 80
    .local v0, "b":Landroid/os/Bundle;
    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v1, v2, v4

    #@b
    if-lez v1, :cond_0

    #@d
    .line 81
    const-string/jumbo v1, "android:broadcast.temporaryAppWhitelistDuration"

    #@10
    iget-wide v2, p0, Landroid/app/BroadcastOptions;->mTemporaryAppWhitelistDuration:J

    #@12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@15
    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    const/4 v0, 0x0

    #@1c
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    return-object v0
.end method
