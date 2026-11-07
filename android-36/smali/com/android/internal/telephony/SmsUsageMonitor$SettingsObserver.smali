.class Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor blacklist <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 4

    .line 234
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 235
    iput-object p2, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->mContext:Landroid/content/Context;

    .line 236
    iput-object p3, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->mEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 4

    .line 242
    iget-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->mEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sms_short_code_confirmation"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
