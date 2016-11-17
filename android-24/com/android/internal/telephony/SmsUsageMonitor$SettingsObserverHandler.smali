.class Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;
.super Landroid/os/Handler;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserverHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    #@0
    .prologue
    .line 245
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 247
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;

    #@9
    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    #@c
    .line 249
    .local v0, "globalObserver":Landroid/database/ContentObserver;
    const-string/jumbo v2, "sms_short_code_confirmation"

    #@f
    .line 248
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@12
    move-result-object v2

    #@13
    .line 249
    const/4 v3, 0x0

    #@14
    .line 248
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@17
    .line 245
    return-void
.end method
