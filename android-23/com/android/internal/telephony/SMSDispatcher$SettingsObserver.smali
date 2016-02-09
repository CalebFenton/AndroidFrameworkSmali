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
.field private final mContext:Landroid/content/Context;

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "premiumSmsRule"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 211
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@3
    .line 212
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    .line 213
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mContext:Landroid/content/Context;

    #@7
    .line 214
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->onChange(Z)V

    #@b
    .line 210
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 220
    const-string/jumbo v2, "sms_short_code_rule"

    #@b
    const/4 v3, 0x1

    #@c
    .line 219
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@13
    .line 218
    return-void
.end method
