.class public Landroid/widget/TextClock$ClockEventDelegate;
.super Ljava/lang/Object;
.source "TextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClockEventDelegate"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput-object p1, p0, Landroid/widget/TextClock$ClockEventDelegate;->mContext:Landroid/content/Context;

    .line 690
    return-void
.end method


# virtual methods
.method public blacklist registerFormatChangeObserver(Landroid/database/ContentObserver;I)V
    .registers 6
    .param p1, "observer"    # Landroid/database/ContentObserver;
    .param p2, "userHandle"    # I

    .line 722
    const-string/jumbo v0, "time_12_24"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 723
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Landroid/widget/TextClock$ClockEventDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 724
    return-void
.end method

.method public blacklist registerTimeChangeReceiver(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .registers 10
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 703
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 705
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Landroid/widget/TextClock$ClockEventDelegate;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v5, 0x0

    move-object v2, p1

    move-object v6, p2

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "handler":Landroid/os/Handler;
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    .local v6, "handler":Landroid/os/Handler;
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 709
    return-void
.end method

.method public blacklist unregisterFormatChangeObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 730
    iget-object v0, p0, Landroid/widget/TextClock$ClockEventDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 731
    return-void
.end method

.method public blacklist unregisterTimeChangeReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 715
    iget-object v0, p0, Landroid/widget/TextClock$ClockEventDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 716
    return-void
.end method
