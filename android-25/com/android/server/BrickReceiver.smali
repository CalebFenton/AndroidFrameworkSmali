.class public Lcom/android/server/BrickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrickReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 28
    const-string/jumbo v0, "BrickReceiver"

    #@3
    const-string/jumbo v1, "!!! BRICKING DEVICE !!!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 29
    const-string/jumbo v0, "brick"

    #@c
    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    #@f
    .line 27
    return-void
.end method
