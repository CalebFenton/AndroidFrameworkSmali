.class public Lcom/android/server/connectivity/LingerMonitor;
.super Ljava/lang/Object;
.source "LingerMonitor.java"


# static fields
.field public static final CELLULAR_SETTINGS:Landroid/content/Intent;

.field private static final DBG:Z = true

.field public static final DEFAULT_NOTIFICATION_DAILY_LIMIT:I = 0x3

.field public static final DEFAULT_NOTIFICATION_RATE_LIMIT_MILLIS:J = 0xea60L

.field public static final NOTIFY_TYPE_NONE:I = 0x0

.field public static final NOTIFY_TYPE_NOTIFICATION:I = 0x1

.field public static final NOTIFY_TYPE_TOAST:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSPORT_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VDBG:Z

.field private static sNotifyTypeNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDailyLimit:I

.field private final mEverNotified:Landroid/util/SparseBooleanArray;

.field private mFirstNotificationMillis:J

.field private mLastNotificationMillis:J

.field private mNotificationCounter:I

.field private final mNotifications:Landroid/util/SparseIntArray;

.field private final mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

.field private final mRateLimitMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 54
    const-class v0, Lcom/android/server/connectivity/LingerMonitor;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/android/server/connectivity/LingerMonitor;->TAG:Ljava/lang/String;

    #@a
    .line 59
    invoke-static {}, Lcom/android/server/connectivity/LingerMonitor;->makeTransportToNameMap()Ljava/util/HashMap;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/android/server/connectivity/LingerMonitor;->TRANSPORT_NAMES:Ljava/util/HashMap;

    #@10
    .line 61
    new-instance v0, Landroid/content/Intent;

    #@12
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@15
    new-instance v1, Landroid/content/ComponentName;

    #@17
    .line 62
    const-string/jumbo v2, "com.android.settings"

    #@1a
    const-string/jumbo v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    #@1d
    .line 61
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@23
    move-result-object v0

    #@24
    sput-object v0, Lcom/android/server/connectivity/LingerMonitor;->CELLULAR_SETTINGS:Landroid/content/Intent;

    #@26
    .line 70
    new-array v0, v5, [Ljava/lang/Class;

    #@28
    const-class v1, Lcom/android/server/connectivity/LingerMonitor;

    #@2a
    aput-object v1, v0, v4

    #@2c
    new-array v1, v5, [Ljava/lang/String;

    #@2e
    const-string/jumbo v2, "NOTIFY_TYPE_"

    #@31
    aput-object v2, v1, v4

    #@33
    .line 69
    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    #@36
    move-result-object v0

    #@37
    sput-object v0, Lcom/android/server/connectivity/LingerMonitor;->sNotifyTypeNames:Landroid/util/SparseArray;

    #@39
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/connectivity/NetworkNotificationManager;IJ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/server/connectivity/NetworkNotificationManager;
    .param p3, "dailyLimit"    # I
    .param p4, "rateLimitMillis"    # J

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    new-instance v0, Landroid/util/SparseIntArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    #@a
    .line 85
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mEverNotified:Landroid/util/SparseBooleanArray;

    #@11
    .line 89
    iput-object p1, p0, Lcom/android/server/connectivity/LingerMonitor;->mContext:Landroid/content/Context;

    #@13
    .line 90
    iput-object p2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    #@15
    .line 91
    iput p3, p0, Lcom/android/server/connectivity/LingerMonitor;->mDailyLimit:I

    #@17
    .line 92
    iput-wide p4, p0, Lcom/android/server/connectivity/LingerMonitor;->mRateLimitMillis:J

    #@19
    .line 88
    return-void
.end method

.method private everNotified(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mEverNotified:Landroid/util/SparseBooleanArray;

    #@2
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@4
    iget v1, v1, Landroid/net/Network;->netId:I

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private getNotificationSource(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 3
    .param p1, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    #@3
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 113
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    #@b
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@e
    move-result v1

    #@f
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@11
    iget v2, v2, Landroid/net/Network;->netId:I

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 114
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    #@17
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@1a
    move-result v1

    #@1b
    return v1

    #@1c
    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 117
    :cond_1
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method private static hasTransport(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .locals 1
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p1, "transport"    # I

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private isAboveDailyLimit(J)Z
    .locals 9
    .param p1, "now"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 290
    iget-wide v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mFirstNotificationMillis:J

    #@5
    cmp-long v2, v2, v6

    #@7
    if-nez v2, :cond_0

    #@9
    .line 291
    iput-wide p1, p0, Lcom/android/server/connectivity/LingerMonitor;->mFirstNotificationMillis:J

    #@b
    .line 293
    :cond_0
    iget-wide v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mFirstNotificationMillis:J

    #@d
    sub-long v0, p1, v2

    #@f
    .line 294
    .local v0, "millisSinceFirst":J
    const-wide/32 v2, 0x5265c00

    #@12
    cmp-long v2, v0, v2

    #@14
    if-lez v2, :cond_1

    #@16
    .line 295
    iput v4, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotificationCounter:I

    #@18
    .line 296
    iput-wide v6, p0, Lcom/android/server/connectivity/LingerMonitor;->mFirstNotificationMillis:J

    #@1a
    .line 298
    :cond_1
    iget v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotificationCounter:I

    #@1c
    iget v3, p0, Lcom/android/server/connectivity/LingerMonitor;->mDailyLimit:I

    #@1e
    if-lt v2, v3, :cond_2

    #@20
    .line 299
    const/4 v2, 0x1

    #@21
    return v2

    #@22
    .line 301
    :cond_2
    iget v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotificationCounter:I

    #@24
    add-int/lit8 v2, v2, 0x1

    #@26
    iput v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotificationCounter:I

    #@28
    .line 302
    return v4
.end method

.method private isRateLimited(J)Z
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    .line 281
    iget-wide v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mLastNotificationMillis:J

    #@2
    sub-long v0, p1, v2

    #@4
    .line 282
    .local v0, "millisSinceLast":J
    iget-wide v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mRateLimitMillis:J

    #@6
    cmp-long v2, v0, v2

    #@8
    if-gez v2, :cond_0

    #@a
    .line 283
    const/4 v2, 0x1

    #@b
    return v2

    #@c
    .line 285
    :cond_0
    iput-wide p1, p0, Lcom/android/server/connectivity/LingerMonitor;->mLastNotificationMillis:J

    #@e
    .line 286
    const/4 v2, 0x0

    #@f
    return v2
.end method

.method private static makeTransportToNameMap()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 97
    new-array v3, v5, [Ljava/lang/Class;

    #@4
    const-class v4, Landroid/net/NetworkCapabilities;

    #@6
    aput-object v4, v3, v6

    #@8
    new-array v4, v5, [Ljava/lang/String;

    #@a
    const-string/jumbo v5, "TRANSPORT_"

    #@d
    aput-object v5, v4, v6

    #@f
    .line 96
    invoke-static {v3, v4}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    #@12
    move-result-object v2

    #@13
    .line 98
    .local v2, "numberToName":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    #@15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@18
    .line 99
    .local v1, "nameToNumber":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@1c
    move-result v3

    #@1d
    if-ge v0, v3, :cond_0

    #@1f
    .line 102
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/lang/String;

    #@25
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@28
    move-result v4

    #@29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 99
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 104
    :cond_0
    return-object v1
.end method

.method private maybeStopNotifying(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/LingerMonitor;->getNotificationSource(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    #@3
    move-result v0

    #@4
    .line 165
    .local v0, "fromNetId":I
    if-eqz v0, :cond_0

    #@6
    .line 166
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    #@8
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    #@b
    .line 167
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    #@d
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    #@10
    .line 163
    :cond_0
    return-void
.end method

.method private notify(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .locals 7
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "forceToast"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 175
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    const v2, 0x10e0010

    #@a
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@d
    move-result v0

    #@e
    .line 176
    .local v0, "notifyType":I
    if-ne v0, v6, :cond_0

    #@10
    if-eqz p3, :cond_0

    #@12
    .line 177
    const/4 v0, 0x2

    #@13
    .line 184
    :cond_0
    packed-switch v0, :pswitch_data_0

    #@16
    .line 194
    sget-object v1, Lcom/android/server/connectivity/LingerMonitor;->TAG:Ljava/lang/String;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Unknown notify type "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 195
    return-void

    #@30
    .line 186
    :pswitch_0
    return-void

    #@31
    .line 188
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/LingerMonitor;->showNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@34
    .line 199
    :goto_0
    sget-object v2, Lcom/android/server/connectivity/LingerMonitor;->TAG:Ljava/lang/String;

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "Notifying switch from="

    #@3e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    const-string/jumbo v3, " to="

    #@4d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 200
    const-string/jumbo v3, " type="

    #@5c
    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    .line 200
    sget-object v1, Lcom/android/server/connectivity/LingerMonitor;->sNotifyTypeNames:Landroid/util/SparseArray;

    #@62
    new-instance v4, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v5, "unknown("

    #@6a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    const-string/jumbo v5, ")"

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@80
    move-result-object v1

    #@81
    check-cast v1, Ljava/lang/String;

    #@83
    .line 199
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 203
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    #@90
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@92
    iget v2, v2, Landroid/net/Network;->netId:I

    #@94
    iget-object v3, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@96
    iget v3, v3, Landroid/net/Network;->netId:I

    #@98
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@9b
    .line 204
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mEverNotified:Landroid/util/SparseBooleanArray;

    #@9d
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@9f
    iget v2, v2, Landroid/net/Network;->netId:I

    #@a1
    invoke-virtual {v1, v2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@a4
    .line 173
    return-void

    #@a5
    .line 191
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    #@a7
    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->showToast(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@aa
    goto :goto_0

    #@ab
    .line 184
    nop

    #@ac
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 7
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    #@2
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@4
    iget v1, v1, Landroid/net/Network;->netId:I

    #@6
    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    #@8
    .line 153
    invoke-virtual {p0}, Lcom/android/server/connectivity/LingerMonitor;->createNotificationIntent()Landroid/app/PendingIntent;

    #@b
    move-result-object v5

    #@c
    const/4 v6, 0x1

    #@d
    move-object v3, p1

    #@e
    move-object v4, p2

    #@f
    .line 152
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    #@12
    .line 151
    return-void
.end method


# virtual methods
.method protected createNotificationIntent()Landroid/app/PendingIntent;
    .locals 6

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mContext:Landroid/content/Context;

    #@2
    sget-object v2, Lcom/android/server/connectivity/LingerMonitor;->CELLULAR_SETTINGS:Landroid/content/Intent;

    #@4
    .line 159
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@6
    .line 158
    const/4 v1, 0x0

    #@7
    .line 159
    const/high16 v3, 0x10000000

    #@9
    const/4 v4, 0x0

    #@a
    .line 158
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public isNotificationEnabled(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 13
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 128
    iget-object v5, p0, Lcom/android/server/connectivity/LingerMonitor;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v5

    #@9
    const v6, 0x1070012

    #@c
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 134
    .local v2, "notifySwitches":[Ljava/lang/String;
    array-length v8, v2

    #@11
    move v6, v7

    #@12
    :goto_0
    if-ge v6, v8, :cond_3

    #@14
    aget-object v1, v2, v6

    #@16
    .line 135
    .local v1, "notifySwitch":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 134
    :cond_0
    :goto_1
    add-int/lit8 v5, v6, 0x1

    #@1e
    move v6, v5

    #@1f
    goto :goto_0

    #@20
    .line 136
    :cond_1
    const-string/jumbo v5, "-"

    #@23
    invoke-virtual {v1, v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 137
    .local v4, "transports":[Ljava/lang/String;
    array-length v5, v4

    #@28
    if-eq v5, v12, :cond_2

    #@2a
    .line 138
    sget-object v5, Lcom/android/server/connectivity/LingerMonitor;->TAG:Ljava/lang/String;

    #@2c
    new-instance v9, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v10, "Invalid network switch notification configuration: "

    #@34
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v9

    #@38
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v9

    #@40
    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    goto :goto_1

    #@44
    .line 141
    :cond_2
    sget-object v5, Lcom/android/server/connectivity/LingerMonitor;->TRANSPORT_NAMES:Ljava/util/HashMap;

    #@46
    new-instance v9, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v10, "TRANSPORT_"

    #@4e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v9

    #@52
    aget-object v10, v4, v7

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v5

    #@60
    check-cast v5, Ljava/lang/Integer;

    #@62
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@65
    move-result v0

    #@66
    .line 142
    .local v0, "fromTransport":I
    sget-object v5, Lcom/android/server/connectivity/LingerMonitor;->TRANSPORT_NAMES:Ljava/util/HashMap;

    #@68
    new-instance v9, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v10, "TRANSPORT_"

    #@70
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    aget-object v10, v4, v11

    #@76
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v9

    #@7a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v9

    #@7e
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    move-result-object v5

    #@82
    check-cast v5, Ljava/lang/Integer;

    #@84
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@87
    move-result v3

    #@88
    .line 143
    .local v3, "toTransport":I
    invoke-static {p1, v0}, Lcom/android/server/connectivity/LingerMonitor;->hasTransport(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    #@8b
    move-result v5

    #@8c
    if-eqz v5, :cond_0

    #@8e
    invoke-static {p2, v3}, Lcom/android/server/connectivity/LingerMonitor;->hasTransport(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_0

    #@94
    .line 144
    return v11

    #@95
    .line 148
    .end local v0    # "fromTransport":I
    .end local v1    # "notifySwitch":Ljava/lang/String;
    .end local v3    # "toTransport":I
    .end local v4    # "transports":[Ljava/lang/String;
    :cond_3
    return v7
.end method

.method public noteDisconnect(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    #@2
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@4
    iget v1, v1, Landroid/net/Network;->netId:I

    #@6
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    #@9
    .line 275
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mEverNotified:Landroid/util/SparseBooleanArray;

    #@b
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@d
    iget v1, v1, Landroid/net/Network;->netId:I

    #@f
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@12
    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/LingerMonitor;->maybeStopNotifying(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@15
    .line 273
    return-void
.end method

.method public noteLingerDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/LingerMonitor;->maybeStopNotifying(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    #@3
    .line 231
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    #@5
    if-nez v1, :cond_0

    #@7
    return-void

    #@8
    .line 247
    :cond_0
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@a
    .line 248
    const/16 v4, 0x11

    #@c
    .line 247
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@f
    move-result v0

    #@10
    .line 252
    .local v0, "forceToast":Z
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/LingerMonitor;->everNotified(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 256
    return-void

    #@17
    .line 263
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@19
    if-eqz v1, :cond_2

    #@1b
    return-void

    #@1c
    .line 265
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/LingerMonitor;->isNotificationEnabled(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_3

    #@22
    return-void

    #@23
    .line 267
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@26
    move-result-wide v2

    #@27
    .line 268
    .local v2, "now":J
    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/LingerMonitor;->isRateLimited(J)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_4

    #@2d
    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/LingerMonitor;->isAboveDailyLimit(J)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_5

    #@33
    :cond_4
    return-void

    #@34
    .line 270
    :cond_5
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/connectivity/LingerMonitor;->notify(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    #@37
    .line 208
    return-void
.end method
