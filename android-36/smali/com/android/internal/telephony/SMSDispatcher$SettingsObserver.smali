.class Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor blacklist <init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V
    .registers 4

    .line 299
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 300
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 301
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 4

    .line 307
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sms_short_code_rule"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
