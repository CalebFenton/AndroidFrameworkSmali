.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;,
        Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final EVENT_CONFIRM_SEND_TO_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x8

.field private static final EVENT_CONFIRM_SEND_TO_PREMIUM_SHORT_CODE:I = 0x9

.field protected static final EVENT_HANDLE_STATUS_REPORT:I = 0xa

.field protected static final EVENT_ICC_CHANGED:I = 0xf

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0xc

.field protected static final EVENT_IMS_STATE_DONE:I = 0xd

.field protected static final EVENT_NEW_ICC_SMS:I = 0xe

.field protected static final EVENT_RADIO_ON:I = 0xb

.field static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field private static final EVENT_SEND_LIMIT_REACHED_CONFIRMATION:I = 0x4

.field private static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_STOP_SENDING:I = 0x7

.field private static final MAX_SEND_RETRIES:I = 0x3

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final PREMIUM_RULE_USE_BOTH:I = 0x3

.field private static final PREMIUM_RULE_USE_NETWORK:I = 0x2

.field private static final PREMIUM_RULE_USE_SIM:I = 0x1

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RESPOND_VIA_MESSAGE_PERMISSION:Ljava/lang/String; = "android.permission.SEND_RESPOND_VIA_MESSAGE"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SINGLE_PART_SMS:I = 0x1

.field static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field private static sConcatenatedRef:I


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field private mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field private mPendingTrackerCount:I

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final mResolver:Landroid/content/ContentResolver;

.field private final mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

.field protected mSmsCapable:Z

.field protected mSmsSendDisabled:Z

.field protected final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method static synthetic -wrap0(Landroid/app/PendingIntent;)I
    .locals 1
    .param p0, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSendSmsFlag(Landroid/app/PendingIntent;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->checkCallerIsPhoneOrCarrierApp()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "result"    # I
    .param p3, "messageRef"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 159
    new-instance v0, Ljava/util/Random;

    #@2
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@5
    const/16 v1, 0x100

    #@7
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    #@a
    move-result v0

    #@b
    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    #@d
    .line 86
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 183
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    .line 170
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    #@e
    .line 266
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    #@15
    .line 185
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@17
    .line 186
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@19
    .line 187
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@1f
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    #@27
    .line 189
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@29
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2b
    .line 190
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@2d
    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@2f
    const-string/jumbo v3, "phone"

    #@32
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@38
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@3a
    .line 192
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    #@3c
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3e
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@40
    invoke-direct {v0, p0, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    #@43
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    #@45
    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@47
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4a
    move-result-object v0

    #@4b
    .line 194
    const-string/jumbo v3, "sms_short_code_rule"

    #@4e
    .line 193
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@51
    move-result-object v3

    #@52
    .line 194
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    #@54
    .line 193
    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@57
    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5c
    move-result-object v0

    #@5d
    .line 197
    const v3, 0x1120055

    #@60
    .line 196
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@63
    move-result v0

    #@64
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    #@66
    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@68
    .line 199
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6a
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@6d
    move-result v3

    #@6e
    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    #@70
    .line 198
    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    #@73
    move-result v0

    #@74
    if-eqz v0, :cond_0

    #@76
    move v0, v1

    #@77
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    #@79
    .line 200
    const-string/jumbo v0, "SMSDispatcher"

    #@7c
    new-instance v1, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v2, "SMSDispatcher: ctor mSmsCapable="

    #@84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    #@8a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    const-string/jumbo v2, " format="

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v1

    #@9d
    .line 201
    const-string/jumbo v2, " mSmsSendDisabled="

    #@a0
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    .line 201
    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    #@a6
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v1

    #@ae
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b1
    .line 184
    return-void

    #@b2
    :cond_0
    move v0, v2

    #@b3
    .line 198
    goto :goto_0
.end method

.method private checkCallerIsPhoneOrCarrierApp()V
    .locals 7

    #@0
    .prologue
    .line 1736
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v4

    #@4
    .line 1737
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    #@7
    move-result v1

    #@8
    .line 1738
    .local v1, "appId":I
    const/16 v5, 0x3e9

    #@a
    if-eq v1, v5, :cond_0

    #@c
    if-nez v4, :cond_1

    #@e
    .line 1739
    :cond_0
    return-void

    #@f
    .line 1742
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@14
    move-result-object v2

    #@15
    .line 1743
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    const/4 v6, 0x0

    #@1a
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@1d
    move-result-object v0

    #@1e
    .line 1744
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@23
    move-result v6

    #@24
    invoke-static {v5, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@27
    move-result v5

    #@28
    if-nez v5, :cond_2

    #@2a
    .line 1745
    new-instance v5, Ljava/lang/SecurityException;

    #@2c
    const-string/jumbo v6, "Caller is not phone or carrier app!"

    #@2f
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@32
    throw v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 1747
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    #@34
    .line 1748
    .local v3, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/SecurityException;

    #@36
    const-string/jumbo v6, "Caller is not phone or carrier app!"

    #@39
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v5

    #@3d
    .line 1735
    .end local v3    # "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    return-void
.end method

.method private denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    const/4 v3, 0x5

    #@1
    const/4 v2, 0x0

    #@2
    .line 1086
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    #@4
    if-lt v0, v3, :cond_0

    #@6
    .line 1088
    const-string/jumbo v0, "SMSDispatcher"

    #@9
    const-string/jumbo v1, "Denied because queue limit reached"

    #@c
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1089
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {p1, v0, v3, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@14
    .line 1090
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 1092
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    #@1c
    .line 1093
    return v2
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "appPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1102
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v2

    #@6
    .line 1104
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    #@7
    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v0

    #@b
    .line 1105
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v3

    #@f
    return-object v3

    #@10
    .line 1106
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@11
    .line 1107
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "SMSDispatcher"

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "PackageManager Name Not Found for package "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 1108
    return-object p1
.end method

.method private getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1710
    .local p1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1711
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "part$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    .line 1712
    .local v0, "part":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@17
    .line 1713
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    goto :goto_0

    #@1b
    .line 1716
    .end local v0    # "part":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    return-object v3
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    #@0
    .prologue
    .line 174
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    #@6
    .line 175
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    #@8
    return v0
.end method

.method protected static getNotInServiceError(I)I
    .locals 1
    .param p0, "ss"    # I

    #@0
    .prologue
    .line 720
    const/4 v0, 0x3

    #@1
    if-ne p0, v0, :cond_0

    #@3
    .line 721
    const/4 v0, 0x2

    #@4
    return v0

    #@5
    .line 723
    :cond_0
    const/4 v0, 0x4

    #@6
    return v0
.end method

.method private static getSendSmsFlag(Landroid/app/PendingIntent;)I
    .locals 1
    .param p0, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 359
    if-nez p0, :cond_0

    #@2
    .line 360
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 362
    :cond_0
    const/4 v0, 0x1

    #@5
    return v0
.end method

.method protected static handleNotInService(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p0, "ss"    # I
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 704
    if-eqz p1, :cond_0

    #@2
    .line 706
    const/4 v1, 0x3

    #@3
    if-ne p0, v1, :cond_1

    #@5
    .line 707
    const/4 v1, 0x2

    #@6
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V

    #@9
    .line 703
    :cond_0
    :goto_0
    return-void

    #@a
    .line 709
    :cond_1
    const/4 v1, 0x4

    #@b
    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    goto :goto_0

    #@f
    .line 711
    :catch_0
    move-exception v0

    #@10
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method private processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "result"    # I
    .param p3, "messageRef"    # I

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 478
    if-nez p1, :cond_0

    #@4
    .line 479
    const-string/jumbo v1, "SMSDispatcher"

    #@7
    const-string/jumbo v2, "processSendSmsResponse: null tracker"

    #@a
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 480
    return-void

    #@e
    .line 483
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    #@10
    .line 484
    const/4 v1, -0x1

    #@11
    .line 483
    invoke-direct {v0, p3, v3, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    #@14
    .line 486
    .local v0, "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    packed-switch p2, :pswitch_data_0

    #@17
    .line 505
    const-string/jumbo v1, "SMSDispatcher"

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Unknown result "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, " Retry on carrier network."

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 506
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@3b
    .line 477
    :goto_0
    return-void

    #@3c
    .line 488
    :pswitch_0
    const-string/jumbo v1, "SMSDispatcher"

    #@3f
    const-string/jumbo v2, "Sending SMS by IP succeeded."

    #@42
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 490
    new-instance v1, Landroid/os/AsyncResult;

    #@47
    invoke-direct {v1, p1, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@4a
    .line 489
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    #@51
    goto :goto_0

    #@52
    .line 495
    :pswitch_1
    const-string/jumbo v1, "SMSDispatcher"

    #@55
    const-string/jumbo v2, "Sending SMS by IP failed."

    #@58
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 497
    new-instance v1, Landroid/os/AsyncResult;

    #@5d
    .line 498
    new-instance v2, Lcom/android/internal/telephony/CommandException;

    #@5f
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@61
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@64
    .line 497
    invoke-direct {v1, p1, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@67
    .line 496
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    #@6e
    goto :goto_0

    #@6f
    .line 501
    :pswitch_2
    const-string/jumbo v1, "SMSDispatcher"

    #@72
    const-string/jumbo v2, "Sending SMS by IP failed. Retry on carrier network."

    #@75
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 502
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@7b
    goto :goto_0

    #@7c
    .line 486
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 14
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1261
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    #@3
    .line 1263
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "destination"

    #@6
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/String;

    #@c
    .line 1264
    .local v1, "destinationAddress":Ljava/lang/String;
    const-string/jumbo v0, "scaddress"

    #@f
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/String;

    #@15
    .line 1266
    .local v2, "scAddress":Ljava/lang/String;
    const-string/jumbo v0, "parts"

    #@18
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Ljava/util/ArrayList;

    #@1e
    .line 1267
    .local v3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "sentIntents"

    #@21
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Ljava/util/ArrayList;

    #@27
    .line 1268
    .local v4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v0, "deliveryIntents"

    #@2a
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Ljava/util/ArrayList;

    #@30
    .line 1271
    .local v5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@32
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    #@39
    move-result v13

    #@3a
    .line 1273
    .local v13, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    #@3d
    move-result v0

    #@3e
    if-nez v0, :cond_2

    #@40
    if-eqz v13, :cond_2

    #@42
    .line 1274
    const/4 v10, 0x0

    #@43
    .local v10, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@46
    move-result v9

    #@47
    .local v9, "count":I
    :goto_0
    if-ge v10, v9, :cond_1

    #@49
    .line 1275
    const/4 v12, 0x0

    #@4a
    .line 1276
    .local v12, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    #@4c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@4f
    move-result v0

    #@50
    if-le v0, v10, :cond_0

    #@52
    .line 1277
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v12

    #@56
    .end local v12    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    #@58
    .line 1279
    :cond_0
    invoke-static {v13, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    #@5b
    .line 1274
    add-int/lit8 v10, v10, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 1281
    :cond_1
    return-void

    #@5f
    .line 1285
    .end local v9    # "count":I
    .end local v10    # "i":I
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-get0(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    #@62
    move-result v8

    #@63
    move-object v0, p0

    #@64
    move-object v7, v6

    #@65
    .line 1284
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V

    #@68
    .line 1256
    return-void
.end method


# virtual methods
.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 12
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 1015
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v7, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    #@9
    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v6

    #@d
    if-nez v6, :cond_0

    #@f
    .line 1017
    return v9

    #@10
    .line 1019
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@15
    move-result v3

    #@16
    .line 1020
    .local v3, "rule":I
    const/4 v5, 0x0

    #@17
    .line 1021
    .local v5, "smsCategory":I
    if-eq v3, v9, :cond_1

    #@19
    if-ne v3, v11, :cond_4

    #@1b
    .line 1022
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@1d
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 1023
    .local v4, "simCountryIso":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@26
    move-result v6

    #@27
    if-eq v6, v10, :cond_3

    #@29
    .line 1024
    :cond_2
    const-string/jumbo v6, "SMSDispatcher"

    #@2c
    const-string/jumbo v7, "Can\'t get SIM country Iso: trying network country Iso"

    #@2f
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 1025
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@34
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 1028
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@3a
    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    #@3c
    invoke-virtual {v6, v7, v4}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    move-result v5

    #@40
    .line 1030
    .end local v4    # "simCountryIso":Ljava/lang/String;
    :cond_4
    if-eq v3, v10, :cond_5

    #@42
    if-ne v3, v11, :cond_8

    #@44
    .line 1031
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@46
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    .line 1032
    .local v1, "networkCountryIso":Ljava/lang/String;
    if-eqz v1, :cond_6

    #@4c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@4f
    move-result v6

    #@50
    if-eq v6, v10, :cond_7

    #@52
    .line 1033
    :cond_6
    const-string/jumbo v6, "SMSDispatcher"

    #@55
    const-string/jumbo v7, "Can\'t get Network country Iso: trying SIM country Iso"

    #@58
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 1034
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@5d
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    .line 1038
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@63
    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    #@65
    invoke-virtual {v6, v7, v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    move-result v6

    #@69
    .line 1037
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    #@6c
    move-result v5

    #@6d
    .line 1041
    .end local v1    # "networkCountryIso":Ljava/lang/String;
    :cond_8
    if-eqz v5, :cond_9

    #@6f
    .line 1042
    if-ne v5, v9, :cond_a

    #@71
    .line 1044
    :cond_9
    return v9

    #@72
    .line 1043
    :cond_a
    if-eq v5, v10, :cond_9

    #@74
    .line 1048
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@76
    .line 1049
    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    #@78
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@7a
    .line 1048
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    #@7d
    move-result v2

    #@7e
    .line 1050
    .local v2, "premiumSmsPermission":I
    if-nez v2, :cond_b

    #@80
    .line 1052
    const/4 v2, 0x1

    #@81
    .line 1055
    :cond_b
    packed-switch v2, :pswitch_data_0

    #@84
    .line 1068
    if-ne v5, v11, :cond_c

    #@86
    .line 1069
    const/16 v0, 0x8

    #@88
    .line 1073
    .local v0, "event":I
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    #@8f
    .line 1074
    return v8

    #@90
    .line 1057
    .end local v0    # "event":I
    :pswitch_0
    const-string/jumbo v6, "SMSDispatcher"

    #@93
    const-string/jumbo v7, "User approved this app to send to premium SMS"

    #@96
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    .line 1058
    return v9

    #@9a
    .line 1061
    :pswitch_1
    const-string/jumbo v6, "SMSDispatcher"

    #@9d
    const-string/jumbo v7, "User denied this app from sending to premium SMS"

    #@a0
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 1062
    const/4 v6, 0x7

    #@a4
    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a7
    move-result-object v6

    #@a8
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    #@ab
    .line 1063
    return v8

    #@ac
    .line 1071
    :cond_c
    const/16 v0, 0x9

    #@ae
    .restart local v0    # "event":I
    goto :goto_0

    #@af
    .line 1055
    nop

    #@b0
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    #@8
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@b
    .line 231
    return-void
.end method

.method protected getCarrierAppPackageName()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1720
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@4
    move-result-object v3

    #@5
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@7
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@a
    move-result v4

    #@b
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@e
    move-result-object v0

    #@f
    .line 1721
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_0

    #@11
    .line 1722
    return-object v2

    #@12
    .line 1726
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@17
    move-result-object v3

    #@18
    new-instance v4, Landroid/content/Intent;

    #@1a
    const-string/jumbo v5, "android.service.carrier.CarrierMessagingService"

    #@1d
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@20
    .line 1725
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    #@23
    move-result-object v1

    #@24
    .line 1727
    .local v1, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    #@26
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@29
    move-result v3

    #@2a
    const/4 v4, 0x1

    #@2b
    if-ne v3, v4, :cond_1

    #@2d
    .line 1728
    const/4 v2, 0x0

    #@2e
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Ljava/lang/String;

    #@34
    .line 1727
    :cond_1
    return-object v2
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1701
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1702
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 1704
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " is null"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 1705
    return-object v3
.end method

.method protected abstract getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 13
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "messageUri"    # Landroid/net/Uri;
    .param p6, "isExpectMore"    # Z
    .param p7, "fullMessageText"    # Ljava/lang/String;
    .param p8, "isText"    # Z
    .param p9, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    #@0
    .prologue
    .line 1578
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    #@1
    .line 1579
    const/4 v6, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object/from16 v3, p3

    #@8
    move-object/from16 v4, p4

    #@a
    move-object/from16 v7, p5

    #@c
    move/from16 v9, p6

    #@e
    move-object/from16 v10, p7

    #@10
    move/from16 v11, p8

    #@12
    move/from16 v12, p9

    #@14
    .line 1578
    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 21
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p6, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p9, "isExpectMore"    # Z
    .param p10, "fullMessageText"    # Ljava/lang/String;
    .param p11, "isText"    # Z
    .param p12, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    #@0
    .prologue
    .line 1554
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v20

    #@8
    .line 1555
    .local v20, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v1

    #@c
    move-object/from16 v0, v20

    #@e
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@11
    move-result-object v19

    #@12
    .line 1558
    .local v19, "packageNames":[Ljava/lang/String;
    const/4 v5, 0x0

    #@13
    .line 1559
    .local v5, "appInfo":Landroid/content/pm/PackageInfo;
    if-eqz v19, :cond_0

    #@15
    move-object/from16 v0, v19

    #@17
    array-length v1, v0

    #@18
    if-lez v1, :cond_0

    #@1a
    .line 1562
    const/4 v1, 0x0

    #@1b
    :try_start_0
    aget-object v1, v19, v1

    #@1d
    const/16 v2, 0x40

    #@1f
    move-object/from16 v0, v20

    #@21
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v5

    #@25
    .line 1569
    .end local v5    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    const-string/jumbo v1, "destAddr"

    #@28
    move-object/from16 v0, p1

    #@2a
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Ljava/lang/String;

    #@30
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    .line 1570
    .local v6, "destAddr":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@36
    .line 1572
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    #@39
    move-result v14

    #@3a
    .line 1570
    const/16 v17, 0x0

    #@3c
    move-object/from16 v2, p1

    #@3e
    move-object/from16 v3, p2

    #@40
    move-object/from16 v4, p3

    #@42
    move-object/from16 v7, p4

    #@44
    move-object/from16 v8, p5

    #@46
    move-object/from16 v9, p6

    #@48
    move-object/from16 v10, p7

    #@4a
    move-object/from16 v11, p8

    #@4c
    move/from16 v12, p9

    #@4e
    move-object/from16 v13, p10

    #@50
    move/from16 v15, p11

    #@52
    move/from16 v16, p12

    #@54
    invoke-direct/range {v1 .. v17}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@57
    return-object v1

    #@58
    .line 1563
    .end local v6    # "destAddr":Ljava/lang/String;
    .restart local v5    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v18

    #@59
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[B",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1596
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1597
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "destAddr"

    #@8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 1598
    const-string/jumbo v1, "scAddr"

    #@e
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 1599
    const-string/jumbo v1, "destPort"

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 1600
    const-string/jumbo v1, "data"

    #@1e
    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 1601
    const-string/jumbo v1, "smsc"

    #@24
    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    #@26
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 1602
    const-string/jumbo v1, "pdu"

    #@2c
    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    #@2e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 1603
    return-object v0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1585
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1586
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "destAddr"

    #@8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 1587
    const-string/jumbo v1, "scAddr"

    #@e
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 1588
    const-string/jumbo v1, "text"

    #@14
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1589
    const-string/jumbo v1, "smsc"

    #@1a
    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    #@1c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 1590
    const-string/jumbo v1, "pdu"

    #@22
    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    #@24
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 1591
    return-object v0
.end method

.method protected getSubId()I
    .locals 2

    #@0
    .prologue
    .line 1732
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6
    iget v1, v1, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 17
    .param p1, "isPremium"    # Z
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 1146
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    #@7
    move-result v14

    #@8
    if-eqz v14, :cond_0

    #@a
    .line 1147
    return-void

    #@b
    .line 1151
    :cond_0
    if-eqz p1, :cond_1

    #@d
    .line 1152
    const v4, 0x10403b2

    #@10
    .line 1157
    .local v4, "detailsId":I
    :goto_0
    move-object/from16 v0, p2

    #@12
    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    #@14
    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@16
    move-object/from16 v0, p0

    #@18
    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@1b
    move-result-object v2

    #@1c
    .line 1158
    .local v2, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@1f
    move-result-object v12

    #@20
    .line 1159
    .local v12, "r":Landroid/content/res/Resources;
    const/4 v14, 0x2

    #@21
    new-array v14, v14, [Ljava/lang/Object;

    #@23
    .line 1160
    const/4 v15, 0x0

    #@24
    aput-object v2, v14, v15

    #@26
    move-object/from16 v0, p2

    #@28
    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    #@2a
    const/16 v16, 0x1

    #@2c
    aput-object v15, v14, v16

    #@2e
    .line 1159
    const v15, 0x10403b0

    #@31
    invoke-virtual {v12, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v14

    #@35
    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    #@38
    move-result-object v10

    #@39
    .line 1162
    .local v10, "messageText":Landroid/text/Spanned;
    move-object/from16 v0, p0

    #@3b
    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@3d
    .line 1163
    const-string/jumbo v15, "layout_inflater"

    #@40
    .line 1162
    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@43
    move-result-object v7

    #@44
    check-cast v7, Landroid/view/LayoutInflater;

    #@46
    .line 1164
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x10900df

    #@49
    const/4 v15, 0x0

    #@4a
    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@4d
    move-result-object v8

    #@4e
    .line 1166
    .local v8, "layout":Landroid/view/View;
    new-instance v9, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    #@50
    .line 1167
    const v14, 0x10203c8

    #@53
    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@56
    move-result-object v14

    #@57
    check-cast v14, Landroid/widget/TextView;

    #@59
    .line 1166
    move-object/from16 v0, p0

    #@5b
    move-object/from16 v1, p2

    #@5d
    invoke-direct {v9, v0, v1, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    #@60
    .line 1170
    .local v9, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    const v14, 0x10203c2

    #@63
    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@66
    move-result-object v11

    #@67
    check-cast v11, Landroid/widget/TextView;

    #@69
    .line 1171
    .local v11, "messageView":Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@6c
    .line 1174
    const v14, 0x10203c3

    #@6f
    .line 1173
    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@72
    move-result-object v5

    #@73
    check-cast v5, Landroid/view/ViewGroup;

    #@75
    .line 1176
    .local v5, "detailsLayout":Landroid/view/ViewGroup;
    const v14, 0x10203c5

    #@78
    .line 1175
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@7b
    move-result-object v6

    #@7c
    check-cast v6, Landroid/widget/TextView;

    #@7e
    .line 1177
    .local v6, "detailsView":Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    #@81
    .line 1180
    const v14, 0x10203c6

    #@84
    .line 1179
    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@87
    move-result-object v13

    #@88
    check-cast v13, Landroid/widget/CheckBox;

    #@8a
    .line 1181
    .local v13, "rememberChoice":Landroid/widget/CheckBox;
    invoke-virtual {v13, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    #@8d
    .line 1183
    new-instance v14, Landroid/app/AlertDialog$Builder;

    #@8f
    move-object/from16 v0, p0

    #@91
    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@93
    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@96
    invoke-virtual {v14, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    #@99
    move-result-object v14

    #@9a
    .line 1185
    const v15, 0x10403b3

    #@9d
    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@a0
    move-result-object v15

    #@a1
    .line 1183
    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@a4
    move-result-object v14

    #@a5
    .line 1186
    const v15, 0x10403b4

    #@a8
    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@ab
    move-result-object v15

    #@ac
    .line 1183
    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@af
    move-result-object v14

    #@b0
    invoke-virtual {v14, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    #@b3
    move-result-object v14

    #@b4
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@b7
    move-result-object v3

    #@b8
    .line 1190
    .local v3, "d":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@bb
    move-result-object v14

    #@bc
    const/16 v15, 0x7d3

    #@be
    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    #@c1
    .line 1191
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    #@c4
    .line 1193
    const/4 v14, -0x1

    #@c5
    invoke-virtual {v3, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    #@c8
    move-result-object v14

    #@c9
    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setPositiveButton(Landroid/widget/Button;)V

    #@cc
    .line 1194
    const/4 v14, -0x2

    #@cd
    invoke-virtual {v3, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    #@d0
    move-result-object v14

    #@d1
    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setNegativeButton(Landroid/widget/Button;)V

    #@d4
    .line 1145
    return-void

    #@d5
    .line 1154
    .end local v2    # "appLabel":Ljava/lang/CharSequence;
    .end local v3    # "d":Landroid/app/AlertDialog;
    .end local v4    # "detailsId":I
    .end local v5    # "detailsLayout":Landroid/view/ViewGroup;
    .end local v6    # "detailsView":Landroid/widget/TextView;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "layout":Landroid/view/View;
    .end local v9    # "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    .end local v10    # "messageText":Landroid/text/Spanned;
    .end local v11    # "messageView":Landroid/widget/TextView;
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v13    # "rememberChoice":Landroid/widget/CheckBox;
    :cond_1
    const v4, 0x10403b1

    #@d8
    .restart local v4    # "detailsId":I
    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 275
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 328
    :pswitch_0
    const-string/jumbo v1, "SMSDispatcher"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "handleMessage() ignoring message of unexpected type "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget v3, p1, Landroid/os/Message;->what:I

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 274
    :goto_0
    return-void

    #@24
    .line 278
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26
    check-cast v1, Landroid/os/AsyncResult;

    #@28
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    #@2b
    goto :goto_0

    #@2c
    .line 282
    :pswitch_2
    const-string/jumbo v1, "SMSDispatcher"

    #@2f
    const-string/jumbo v2, "SMS retry.."

    #@32
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 283
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37
    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@39
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@3c
    goto :goto_0

    #@3d
    .line 287
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3f
    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@41
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@44
    goto :goto_0

    #@45
    .line 291
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47
    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@49
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@4c
    goto :goto_0

    #@4d
    .line 295
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4f
    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@51
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@54
    goto :goto_0

    #@55
    .line 300
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@57
    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@59
    .line 301
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_0

    #@5f
    .line 302
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@62
    .line 311
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    #@64
    add-int/lit8 v1, v1, -0x1

    #@66
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    #@68
    goto :goto_0

    #@69
    .line 304
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    #@6b
    if-le v1, v2, :cond_1

    #@6d
    .line 305
    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    #@6f
    .line 309
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@72
    goto :goto_1

    #@73
    .line 307
    :cond_1
    iput-boolean v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    #@75
    goto :goto_2

    #@76
    .line 317
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78
    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@7a
    .line 318
    .restart local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@7c
    const/4 v2, 0x5

    #@7d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@80
    .line 319
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    #@82
    add-int/lit8 v1, v1, -0x1

    #@84
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    #@86
    goto :goto_0

    #@87
    .line 324
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@89
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Ljava/lang/Object;)V

    #@8c
    goto :goto_0

    #@8d
    .line 275
    nop

    #@8e
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 1117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 1118
    return-void

    #@7
    .line 1121
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    #@9
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@b
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@e
    move-result-object v0

    #@f
    .line 1122
    .local v0, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@12
    move-result-object v4

    #@13
    .line 1123
    .local v4, "r":Landroid/content/res/Resources;
    const/4 v5, 0x1

    #@14
    new-array v5, v5, [Ljava/lang/Object;

    #@16
    const/4 v6, 0x0

    #@17
    aput-object v0, v5, v6

    #@19
    const v6, 0x10403ad

    #@1c
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    #@23
    move-result-object v3

    #@24
    .line 1125
    .local v3, "messageText":Landroid/text/Spanned;
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    #@26
    const/4 v5, 0x0

    #@27
    invoke-direct {v2, p0, p1, v5}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    #@2a
    .line 1127
    .local v2, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    #@2c
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@2e
    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@31
    .line 1128
    const v6, 0x10403ac

    #@34
    .line 1127
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    #@37
    move-result-object v5

    #@38
    .line 1129
    const v6, 0x108008a

    #@3b
    .line 1127
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@42
    move-result-object v5

    #@43
    .line 1131
    const v6, 0x10403ae

    #@46
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    .line 1127
    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@4d
    move-result-object v5

    #@4e
    .line 1132
    const v6, 0x10403af

    #@51
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    .line 1127
    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@60
    move-result-object v1

    #@61
    .line 1136
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@64
    move-result-object v5

    #@65
    const/16 v6, 0x7d3

    #@67
    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    #@6a
    .line 1137
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    #@6d
    .line 1116
    return-void
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x0

    #@2
    .line 626
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@4
    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@6
    .line 627
    .local v5, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v3, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    #@8
    .line 629
    .local v3, "sentIntent":Landroid/app/PendingIntent;
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@a
    if-eqz v6, :cond_1

    #@c
    .line 630
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e
    check-cast v6, Lcom/android/internal/telephony/SmsResponse;

    #@10
    iget v6, v6, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    #@12
    iput v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    #@14
    .line 635
    :goto_0
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@16
    if-nez v6, :cond_2

    #@18
    .line 638
    iget-object v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@1a
    if-eqz v6, :cond_0

    #@1c
    .line 640
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 642
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@23
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    #@26
    .line 625
    :goto_1
    return-void

    #@27
    .line 632
    :cond_1
    const-string/jumbo v6, "SMSDispatcher"

    #@2a
    const-string/jumbo v7, "SmsResponse was null"

    #@2d
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    goto :goto_0

    #@31
    .line 646
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@33
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    #@3a
    move-result v4

    #@3b
    .line 648
    .local v4, "ss":I
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@3d
    if-lez v6, :cond_3

    #@3f
    if-eqz v4, :cond_3

    #@41
    .line 652
    iput v10, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    #@43
    .line 654
    const-string/jumbo v6, "SMSDispatcher"

    #@46
    new-instance v7, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v8, "handleSendComplete: Skipping retry:  isIms()="

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    .line 655
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    #@55
    move-result v8

    #@56
    .line 654
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    .line 656
    const-string/jumbo v8, " mRetryCount="

    #@5d
    .line 654
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    .line 656
    iget v8, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    #@63
    .line 654
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v7

    #@67
    .line 657
    const-string/jumbo v8, " mImsRetry="

    #@6a
    .line 654
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    .line 657
    iget v8, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@70
    .line 654
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    .line 658
    const-string/jumbo v8, " mMessageRef="

    #@77
    .line 654
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    .line 658
    iget v8, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    #@7d
    .line 654
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v7

    #@81
    .line 659
    const-string/jumbo v8, " SS= "

    #@84
    .line 654
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    .line 659
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@8a
    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    #@91
    move-result v8

    #@92
    .line 654
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    .line 663
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    #@a0
    move-result v6

    #@a1
    if-nez v6, :cond_4

    #@a3
    if-eqz v4, :cond_4

    #@a5
    .line 664
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@a7
    invoke-static {v4}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    #@aa
    move-result v7

    #@ab
    invoke-virtual {v5, v6, v7, v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@ae
    goto/16 :goto_1

    #@b0
    .line 665
    :cond_4
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@b2
    check-cast v6, Lcom/android/internal/telephony/CommandException;

    #@b4
    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@b7
    move-result-object v6

    #@b8
    .line 666
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    #@ba
    .line 665
    if-ne v6, v7, :cond_5

    #@bc
    .line 667
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    #@be
    if-ge v6, v10, :cond_5

    #@c0
    .line 676
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    #@c2
    add-int/lit8 v6, v6, 0x1

    #@c4
    iput v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    #@c6
    .line 677
    invoke-virtual {p0, v10, v5}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@c9
    move-result-object v2

    #@ca
    .line 678
    .local v2, "retryMsg":Landroid/os/Message;
    const-wide/16 v6, 0x7d0

    #@cc
    invoke-virtual {p0, v2, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@cf
    goto/16 :goto_1

    #@d1
    .line 680
    .end local v2    # "retryMsg":Landroid/os/Message;
    :cond_5
    const/4 v1, 0x0

    #@d2
    .line 681
    .local v1, "errorCode":I
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d4
    if-eqz v6, :cond_6

    #@d6
    .line 682
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d8
    check-cast v6, Lcom/android/internal/telephony/SmsResponse;

    #@da
    iget v1, v6, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    #@dc
    .line 684
    :cond_6
    const/4 v0, 0x1

    #@dd
    .line 685
    .local v0, "error":I
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@df
    check-cast v6, Lcom/android/internal/telephony/CommandException;

    #@e1
    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@e4
    move-result-object v6

    #@e5
    .line 686
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@e7
    .line 685
    if-ne v6, v7, :cond_7

    #@e9
    .line 687
    const/4 v0, 0x6

    #@ea
    .line 689
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@ec
    invoke-virtual {v5, v6, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@ef
    goto/16 :goto_1
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 257
    const-string/jumbo v0, "SMSDispatcher"

    #@3
    const-string/jumbo v1, "handleStatusReport() called with no subclass."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 256
    return-void
.end method

.method protected abstract injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public isIms()Z
    .locals 3

    #@0
    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1693
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 1695
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " is null"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1696
    const/4 v0, 0x0

    #@28
    return v0
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 27
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 841
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p3

    #@4
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    #@7
    move-result-object v16

    #@8
    .line 842
    .local v16, "fullMessageText":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    #@b
    move-result v4

    #@c
    and-int/lit16 v0, v4, 0xff

    #@e
    move/from16 v23, v0

    #@10
    .line 843
    .local v23, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v22

    #@14
    .line 844
    .local v22, "msgCount":I
    const/4 v9, 0x0

    #@15
    .line 846
    .local v9, "encoding":I
    move/from16 v0, v22

    #@17
    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@19
    move-object/from16 v20, v0

    #@1b
    .line 847
    .local v20, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v21, 0x0

    #@1d
    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    #@1f
    move/from16 v1, v22

    #@21
    if-ge v0, v1, :cond_2

    #@23
    .line 848
    move-object/from16 v0, p3

    #@25
    move/from16 v1, v21

    #@27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Ljava/lang/CharSequence;

    #@2d
    const/4 v5, 0x0

    #@2e
    move-object/from16 v0, p0

    #@30
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@33
    move-result-object v19

    #@34
    .line 849
    .local v19, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v19

    #@36
    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@38
    if-eq v9, v4, :cond_1

    #@3a
    .line 850
    if-eqz v9, :cond_0

    #@3c
    .line 851
    const/4 v4, 0x1

    #@3d
    if-ne v9, v4, :cond_1

    #@3f
    .line 852
    :cond_0
    move-object/from16 v0, v19

    #@41
    iget v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@43
    .line 854
    :cond_1
    aput-object v19, v20, v21

    #@45
    .line 847
    add-int/lit8 v21, v21, 0x1

    #@47
    goto :goto_0

    #@48
    .line 857
    .end local v19    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    move/from16 v0, v22

    #@4a
    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@4c
    move-object/from16 v26, v0

    #@4e
    .line 860
    .local v26, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    #@50
    move/from16 v0, v22

    #@52
    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@55
    .line 861
    .local v13, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@57
    const/4 v4, 0x0

    #@58
    invoke-direct {v14, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@5b
    .line 863
    .local v14, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v21, 0x0

    #@5d
    :goto_1
    move/from16 v0, v21

    #@5f
    move/from16 v1, v22

    #@61
    if-ge v0, v1, :cond_7

    #@63
    .line 864
    new-instance v18, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@65
    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    #@68
    .line 865
    .local v18, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v23

    #@6a
    move-object/from16 v1, v18

    #@6c
    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    #@6e
    .line 866
    add-int/lit8 v4, v21, 0x1

    #@70
    move-object/from16 v0, v18

    #@72
    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    #@74
    .line 867
    move/from16 v0, v22

    #@76
    move-object/from16 v1, v18

    #@78
    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    #@7a
    .line 874
    const/4 v4, 0x1

    #@7b
    move-object/from16 v0, v18

    #@7d
    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    #@7f
    .line 875
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    #@81
    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    #@84
    .line 876
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v18

    #@86
    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@88
    .line 879
    const/4 v4, 0x1

    #@89
    if-ne v9, v4, :cond_3

    #@8b
    .line 880
    aget-object v4, v20, v21

    #@8d
    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    #@8f
    iput v4, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@91
    .line 881
    aget-object v4, v20, v21

    #@93
    iget v4, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    #@95
    iput v4, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@97
    .line 884
    :cond_3
    const/4 v10, 0x0

    #@98
    .line 885
    .local v10, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    #@9a
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    #@9d
    move-result v4

    #@9e
    move/from16 v0, v21

    #@a0
    if-le v4, v0, :cond_4

    #@a2
    .line 886
    move-object/from16 v0, p4

    #@a4
    move/from16 v1, v21

    #@a6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a9
    move-result-object v10

    #@aa
    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    #@ac
    .line 889
    :cond_4
    const/4 v11, 0x0

    #@ad
    .line 890
    .local v11, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    #@af
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    #@b2
    move-result v4

    #@b3
    move/from16 v0, v21

    #@b5
    if-le v4, v0, :cond_5

    #@b7
    .line 891
    move-object/from16 v0, p5

    #@b9
    move/from16 v1, v21

    #@bb
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@be
    move-result-object v11

    #@bf
    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    #@c1
    .line 895
    :cond_5
    move-object/from16 v0, p3

    #@c3
    move/from16 v1, v21

    #@c5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c8
    move-result-object v7

    #@c9
    check-cast v7, Ljava/lang/String;

    #@cb
    .line 896
    add-int/lit8 v4, v22, -0x1

    #@cd
    move/from16 v0, v21

    #@cf
    if-ne v0, v4, :cond_6

    #@d1
    const/4 v12, 0x1

    #@d2
    :goto_2
    move-object/from16 v4, p0

    #@d4
    move-object/from16 v5, p1

    #@d6
    move-object/from16 v6, p2

    #@d8
    move-object/from16 v15, p6

    #@da
    .line 895
    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/telephony/SMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@dd
    move-result-object v4

    #@de
    .line 894
    aput-object v4, v26, v21

    #@e0
    .line 898
    aget-object v4, v26, v21

    #@e2
    move/from16 v0, p8

    #@e4
    invoke-static {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->-set0(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)Z

    #@e7
    .line 863
    add-int/lit8 v21, v21, 0x1

    #@e9
    goto/16 :goto_1

    #@eb
    .line 896
    :cond_6
    const/4 v12, 0x0

    #@ec
    goto :goto_2

    #@ed
    .line 901
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v18    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_7
    if-eqz p3, :cond_8

    #@ef
    if-nez v26, :cond_9

    #@f1
    .line 903
    :cond_8
    const-string/jumbo v4, "SMSDispatcher"

    #@f4
    new-instance v5, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string/jumbo v6, "Cannot send multipart text. parts="

    #@fc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v5

    #@100
    move-object/from16 v0, p3

    #@102
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v5

    #@106
    const-string/jumbo v6, " trackers="

    #@109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v5

    #@10d
    move-object/from16 v0, v26

    #@10f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v5

    #@113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v5

    #@117
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11a
    .line 904
    return-void

    #@11b
    .line 901
    :cond_9
    move-object/from16 v0, v26

    #@11d
    array-length v4, v0

    #@11e
    if-eqz v4, :cond_8

    #@120
    .line 902
    const/4 v4, 0x0

    #@121
    aget-object v4, v26, v4

    #@123
    if-eqz v4, :cond_8

    #@125
    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    #@128
    move-result-object v17

    #@129
    .line 908
    .local v17, "carrierPackage":Ljava/lang/String;
    if-eqz v17, :cond_b

    #@12b
    .line 909
    const-string/jumbo v4, "SMSDispatcher"

    #@12e
    const-string/jumbo v5, "Found carrier package."

    #@131
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@134
    .line 910
    new-instance v24, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    #@136
    move-object/from16 v0, v24

    #@138
    move-object/from16 v1, p0

    #@13a
    move-object/from16 v2, p3

    #@13c
    move-object/from16 v3, v26

    #@13e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@141
    .line 911
    .local v24, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    #@143
    move-object/from16 v0, p0

    #@145
    move-object/from16 v1, v24

    #@147
    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    #@14a
    move-object/from16 v0, v24

    #@14c
    move-object/from16 v1, v17

    #@14e
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    #@151
    .line 840
    .end local v24    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    :cond_a
    return-void

    #@152
    .line 913
    :cond_b
    const-string/jumbo v4, "SMSDispatcher"

    #@155
    const-string/jumbo v5, "No carrier package."

    #@158
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@15b
    .line 914
    const/4 v4, 0x0

    #@15c
    move-object/from16 v0, v26

    #@15e
    array-length v5, v0

    #@15f
    :goto_3
    if-ge v4, v5, :cond_a

    #@161
    aget-object v25, v26, v4

    #@163
    .line 915
    .local v25, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v25, :cond_c

    #@165
    .line 916
    move-object/from16 v0, p0

    #@167
    move-object/from16 v1, v25

    #@169
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@16c
    .line 914
    :goto_4
    add-int/lit8 v4, v4, 0x1

    #@16e
    goto :goto_3

    #@16f
    .line 918
    :cond_c
    const-string/jumbo v6, "SMSDispatcher"

    #@172
    const-string/jumbo v7, "Null tracker."

    #@175
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@178
    goto :goto_4
.end method

.method protected sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    const/4 v10, 0x4

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 956
    iget-object v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    #@5
    .line 957
    .local v2, "map":Ljava/util/HashMap;
    const-string/jumbo v6, "pdu"

    #@8
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v4

    #@c
    check-cast v4, [B

    #@e
    .line 959
    .local v4, "pdu":[B
    iget-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    #@10
    if-eqz v6, :cond_0

    #@12
    .line 960
    const-string/jumbo v6, "SMSDispatcher"

    #@15
    const-string/jumbo v7, "Device does not support sending sms."

    #@18
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 961
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@1d
    invoke-virtual {p1, v6, v10, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@20
    .line 962
    return-void

    #@21
    .line 965
    :cond_0
    if-nez v4, :cond_1

    #@23
    .line 966
    const-string/jumbo v6, "SMSDispatcher"

    #@26
    const-string/jumbo v7, "Empty PDU"

    #@29
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 967
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@2e
    const/4 v7, 0x3

    #@2f
    invoke-virtual {p1, v6, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@32
    .line 968
    return-void

    #@33
    .line 972
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@35
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@38
    move-result-object v5

    #@39
    .line 973
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3c
    move-result v6

    #@3d
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 975
    .local v3, "packageNames":[Ljava/lang/String;
    if-eqz v3, :cond_2

    #@43
    array-length v6, v3

    #@44
    if-nez v6, :cond_3

    #@46
    .line 977
    :cond_2
    const-string/jumbo v6, "SMSDispatcher"

    #@49
    const-string/jumbo v7, "Can\'t get calling app package name: refusing to send SMS"

    #@4c
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 978
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@51
    invoke-virtual {p1, v6, v9, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@54
    .line 979
    return-void

    #@55
    .line 986
    :cond_3
    const/4 v6, 0x0

    #@56
    :try_start_0
    aget-object v6, v3, v6

    #@58
    const/16 v7, 0x40

    #@5a
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    move-result-object v0

    #@5e
    .line 996
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    #@61
    move-result v6

    #@62
    if-eqz v6, :cond_5

    #@64
    .line 998
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@66
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@68
    invoke-virtual {v6, v7, v9}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    #@6b
    move-result v6

    #@6c
    if-nez v6, :cond_4

    #@6e
    .line 999
    invoke-virtual {p0, v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    #@75
    .line 1000
    return-void

    #@76
    .line 987
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    #@77
    .line 988
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "SMSDispatcher"

    #@7a
    const-string/jumbo v7, "Can\'t get calling app package info: refusing to send SMS"

    #@7d
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 989
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    #@82
    invoke-virtual {p1, v6, v9, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    #@85
    .line 990
    return-void

    #@86
    .line 1003
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@89
    .line 955
    :cond_5
    return-void
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    #@0
    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1245
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    #@9
    .line 1242
    :goto_0
    return-void

    #@a
    .line 1247
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " is null. Retry failed"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    #@0
    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    #@5
    .line 1219
    return-void
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    .line 226
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@4
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@6
    .line 227
    const-string/jumbo v0, "SMSDispatcher"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Active phone changed to "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@17
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 224
    return-void
.end method
