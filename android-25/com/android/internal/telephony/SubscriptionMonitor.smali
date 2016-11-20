.class public Lcom/android/internal/telephony/SubscriptionMonitor;
.super Ljava/lang/Object;
.source "SubscriptionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionMonitor$1;,
        Lcom/android/internal/telephony/SubscriptionMonitor$2;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionMonitor"

.field private static final MAX_LOGLINES:I = 0x64

.field private static final VDBG:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultDataPhoneId:I

.field private final mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

.field private mDefaultDataSubId:I

.field private final mDefaultDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mLock:Ljava/lang/Object;

.field private final mPhoneSubId:[I

.field private final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private final mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field private final mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/SubscriptionMonitor;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataPhoneId:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubId:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/SubscriptionMonitor;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/SubscriptionMonitor;)[I
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/SubscriptionMonitor;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataPhoneId:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/SubscriptionMonitor;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubId:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z
    .locals 1
    .param p1, "phoneId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 62
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLock:Ljava/lang/Object;

    #@b
    .line 68
    new-instance v0, Landroid/util/LocalLog;

    #@d
    const/16 v1, 0x64

    #@f
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLocalLog:Landroid/util/LocalLog;

    #@14
    .line 108
    new-instance v0, Lcom/android/internal/telephony/SubscriptionMonitor$1;

    #@16
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionMonitor$1;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V

    #@19
    .line 107
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@1b
    .line 144
    new-instance v0, Lcom/android/internal/telephony/SubscriptionMonitor$2;

    #@1d
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionMonitor$2;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V

    #@20
    .line 143
    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    #@22
    .line 100
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    #@24
    .line 101
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    #@26
    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@28
    .line 103
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mContext:Landroid/content/Context;

    #@2a
    .line 104
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    #@2c
    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ITelephonyRegistry;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;I)V
    .locals 6
    .param p1, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p4, "numPhones"    # I

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    new-instance v2, Ljava/lang/Object;

    #@5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLock:Ljava/lang/Object;

    #@a
    .line 68
    new-instance v2, Landroid/util/LocalLog;

    #@c
    const/16 v3, 0x64

    #@e
    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    #@11
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLocalLog:Landroid/util/LocalLog;

    #@13
    .line 108
    new-instance v2, Lcom/android/internal/telephony/SubscriptionMonitor$1;

    #@15
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionMonitor$1;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V

    #@18
    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@1a
    .line 144
    new-instance v2, Lcom/android/internal/telephony/SubscriptionMonitor$2;

    #@1c
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionMonitor$2;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V

    #@1f
    .line 143
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    #@21
    .line 73
    :try_start_0
    const-string/jumbo v2, "SubscriptionMonitor"

    #@24
    .line 74
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@26
    .line 73
    invoke-interface {p1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 78
    :goto_0
    iput-object p3, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@2b
    .line 79
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mContext:Landroid/content/Context;

    #@2d
    .line 81
    new-array v2, p4, [Landroid/os/RegistrantList;

    #@2f
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    #@31
    .line 82
    new-array v2, p4, [Landroid/os/RegistrantList;

    #@33
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    #@35
    .line 83
    new-array v2, p4, [I

    #@37
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    #@39
    .line 85
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@3b
    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    #@3e
    move-result v2

    #@3f
    iput v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubId:I

    #@41
    .line 86
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@43
    iget v3, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubId:I

    #@45
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@48
    move-result v2

    #@49
    iput v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataPhoneId:I

    #@4b
    .line 88
    const/4 v1, 0x0

    #@4c
    .local v1, "phoneId":I
    :goto_1
    if-ge v1, p4, :cond_0

    #@4e
    .line 89
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    #@50
    new-instance v3, Landroid/os/RegistrantList;

    #@52
    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    #@55
    aput-object v3, v2, v1

    #@57
    .line 90
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    #@59
    new-instance v3, Landroid/os/RegistrantList;

    #@5b
    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    #@5e
    aput-object v3, v2, v1

    #@60
    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    #@62
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@64
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    #@67
    move-result v3

    #@68
    aput v3, v2, v1

    #@6a
    .line 88
    add-int/lit8 v1, v1, 0x1

    #@6c
    goto :goto_1

    #@6d
    .line 94
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mContext:Landroid/content/Context;

    #@6f
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    #@71
    .line 95
    new-instance v4, Landroid/content/IntentFilter;

    #@73
    const-string/jumbo v5, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    #@76
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@79
    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@7c
    .line 71
    return-void

    #@7d
    .line 75
    .end local v1    # "phoneId":I
    :catch_0
    move-exception v0

    #@7e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private invalidPhoneId(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 225
    if-ltz p1, :cond_0

    #@3
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mPhoneSubId:[I

    #@5
    array-length v0, v0

    #@6
    if-ge p1, v0, :cond_0

    #@8
    return v1

    #@9
    .line 226
    :cond_0
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 230
    const-string/jumbo v0, "SubscriptionMonitor"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLocalLog:Landroid/util/LocalLog;

    #@8
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@b
    .line 229
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mLocalLog:Landroid/util/LocalLog;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 234
    return-void

    #@a
    .line 235
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public registerForDefaultDataSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Invalid PhoneId"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 212
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    #@11
    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@14
    .line 213
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    #@16
    aget-object v1, v1, p1

    #@18
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@1b
    .line 214
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@1e
    .line 208
    return-void
.end method

.method public registerForSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Invalid PhoneId"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 195
    :cond_0
    new-instance v0, Landroid/os/Registrant;

    #@11
    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@14
    .line 196
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    #@16
    aget-object v1, v1, p1

    #@18
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@1b
    .line 197
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@1e
    .line 191
    return-void
.end method

.method public unregisterForDefaultDataSubscriptionChanged(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Invalid PhoneId"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mDefaultDataSubChangedRegistrants:[Landroid/os/RegistrantList;

    #@11
    aget-object v0, v0, p1

    #@13
    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@16
    .line 217
    return-void
.end method

.method public unregisterForSubscriptionChanged(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionMonitor;->invalidPhoneId(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Invalid PhoneId"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionMonitor;->mSubscriptionsChangedRegistrants:[Landroid/os/RegistrantList;

    #@11
    aget-object v0, v0, p1

    #@13
    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@16
    .line 200
    return-void
.end method
