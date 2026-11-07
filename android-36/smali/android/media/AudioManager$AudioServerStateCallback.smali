.class public abstract Landroid/media/AudioManager$AudioServerStateCallback;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioServerStateCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 8460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAudioServerDown()V
    .registers 1

    .line 8461
    return-void
.end method

.method public whitelist onAudioServerUp()V
    .registers 1

    .line 8462
    return-void
.end method
