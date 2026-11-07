.class public abstract Landroid/media/tv/TvInputManager$HardwareCallback;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HardwareCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onReleased()V
.end method

.method public abstract whitelist onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
.end method
