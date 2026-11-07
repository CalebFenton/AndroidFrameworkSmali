.class public Lcom/android/internal/telephony/analytics/TelephonyAnalytics;
.super Ljava/lang/Object;
.source "TelephonyAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;,
        Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;,
        Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;
    }
.end annotation


# static fields
.field protected static final blacklist INVALID_SUB_ID:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TelephonyAnalytics"


# instance fields
.field protected blacklist mCallAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;

.field protected blacklist mCallAnalyticsProvider:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;

.field protected blacklist mContext:Landroid/content/Context;

.field protected blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field protected blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field protected blacklist mServiceStateAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;

.field protected blacklist mServiceStateAnalyticsProvider:Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;

.field private final blacklist mSlotIndex:I

.field protected blacklist mSmsMmsAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

.field protected blacklist mSmsMmsAnalyticsProvider:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;

.field protected blacklist mSubId:I

.field protected blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field protected final blacklist mSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field protected blacklist mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutorService(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSlotIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSubId(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSubId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$1;-><init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)V

    iput-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 116
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mContext:Landroid/content/Context;

    .line 117
    new-instance p1, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mExecutor:Ljava/util/concurrent/Executor;

    .line 118
    iget-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 119
    iget-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSlotIndex:I

    .line 125
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mHandlerThread:Landroid/os/HandlerThread;

    .line 126
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mHandler:Landroid/os/Handler;

    .line 129
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->initializeAnalyticsClasses()V

    .line 132
    new-instance v1, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;

    iget-object v2, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;-><init>(Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mCallAnalyticsProvider:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;

    .line 133
    new-instance v1, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;

    iget-object v2, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;-><init>(Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSmsMmsAnalyticsProvider:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;

    .line 134
    new-instance v1, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;

    iget-object v2, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mTelephonyAnalyticsUtil:Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;-><init>(Lcom/android/internal/telephony/analytics/TelephonyAnalyticsUtil;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mServiceStateAnalyticsProvider:Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;

    .line 137
    iget p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSubId:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->startAnalytics(I)V

    .line 139
    iget-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_89

    .line 140
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p0, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 142
    sget-object p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->TAG:Ljava/lang/String;

    const-string p1, "stopped listener"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    return-void
.end method

.method private blacklist getSubId()I
    .registers 5

    .line 148
    const-string v0, "TelephonyAnalyticsSubId"

    const/4 v1, -0x1

    .line 150
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v3, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSlotIndex:I

    .line 151
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "SlotIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSlotIndex:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_2d} :catch_2e

    return v1

    .line 156
    :catch_2e
    const-string p0, "Null Pointer Exception Caught"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private blacklist initializeAnalyticsClasses()V
    .registers 3

    .line 162
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;

    iget-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;-><init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mServiceStateAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;

    .line 163
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;-><init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)V

    iput-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSmsMmsAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    .line 164
    new-instance v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;-><init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)V

    iput-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mCallAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 196
    const-string p1, "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+    Telephony Analytics Report [2 months] [Slot ID = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSlotIndex:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]  +"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    const-string p1, "Call Analytics Summary"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mCallAnalyticsProvider:Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;

    invoke-virtual {p1}, Lcom/android/internal/telephony/analytics/CallAnalyticsProvider;->aggregate()Ljava/util/ArrayList;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_34
    if-ge v1, p3, :cond_53

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_34

    .line 204
    :cond_53
    const-string p1, "-----------------------------------------------"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    const-string p3, "SMS/MMS Analytics Summary"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    iget-object p3, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSmsMmsAnalyticsProvider:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;

    invoke-virtual {p3}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->aggregate()Ljava/util/ArrayList;

    move-result-object p3

    .line 207
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_68
    const-string v3, "\t\t"

    if-ge v2, v1, :cond_87

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/String;

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_68

    .line 210
    :cond_87
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    iget-object p3, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mServiceStateAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;

    invoke-static {p3}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->-$$Nest$mrecordCurrentStateBeforeDump(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;)V

    .line 212
    const-string p3, "Service State Analytics Summary "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mServiceStateAnalyticsProvider:Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;

    invoke-virtual {p0}, Lcom/android/internal/telephony/analytics/ServiceStateAnalyticsProvider;->aggregate()Ljava/util/ArrayList;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_9e
    if-ge v0, p3, :cond_bb

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Ljava/lang/String;

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9e

    .line 217
    :cond_bb
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCallAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mCallAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;

    return-object p0
.end method

.method public blacklist getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSmsMmsAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    return-object p0
.end method

.method protected blacklist startAnalytics(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    .line 169
    const-string p0, "StartAnalytics"

    const-string p1, "Invalid SubId = -1"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 174
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mServiceStateAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;

    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->registerMyListener(Landroid/content/Context;I)V

    return-void
.end method

.method protected blacklist stopAnalytics(I)V
    .registers 2

    .line 178
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mServiceStateAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;

    if-eqz p0, :cond_7

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;->unregisterMyListener(I)V

    :cond_7
    return-void
.end method
