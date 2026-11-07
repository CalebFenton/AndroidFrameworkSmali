.class public Lcom/android/internal/telephony/CarrierServiceBindHelper;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceChangeCallback;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0x2

.field public static final blacklist EVENT_PERFORM_IMMEDIATE_UNBIND:I = 0x1


# instance fields
.field public blacklist mBindings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mContext:Landroid/content/Context;

.field public greylist-max-r mHandler:Landroid/os/Handler;

.field public blacklist mLastSimState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mPackageMonitor:Lcom/android/internal/telephony/PackageChangeReceiver;

.field private blacklist mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->logdWithLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateBindingsAndSimStates(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateBindingsAndSimStates()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 7

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mPackageMonitor:Lcom/android/internal/telephony/PackageChangeReceiver;

    .line 84
    new-instance v2, Lcom/android/internal/telephony/LocalLog;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 86
    new-instance v2, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v2, Lcom/android/internal/telephony/CarrierServiceBindHelper$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$2;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    .line 169
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 167
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    .line 172
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateBindingsAndSimStates()V

    .line 174
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v2, v4, v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 177
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    .line 178
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 177
    invoke-virtual {v0, p1, v2, v4}, Lcom/android/internal/telephony/PackageChangeReceiver;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;)V

    .line 180
    :try_start_53
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 181
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 180
    invoke-virtual {p1, v0, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_6d} :catch_6e

    return-void

    :catch_6e
    move-exception p1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->logeWithLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logdWithLocalLog(Ljava/lang/String;)V
    .registers 3

    .line 552
    const-string v0, "CarrierSvcBindHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logeWithLocalLog(Ljava/lang/String;)V
    .registers 3

    .line 557
    const-string v0, "CarrierSvcBindHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateBindingsAndSimStates()V
    .registers 6

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 194
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    move v2, v0

    :goto_15
    if-ge v2, v1, :cond_2e

    .line 198
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    invoke-direct {v4, p0, v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:Landroid/util/SparseArray;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2e
    :goto_2e
    if-ge v1, v0, :cond_54

    .line 204
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->tearDown()V

    .line 205
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    .line 206
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 207
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_54
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 562
    const-string v0, "CarrierServiceBindHelper:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 563
    :goto_6
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 564
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 566
    :cond_1c
    const-string v0, "CarrierServiceBindHelperLogs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist updateForPhoneId(ILjava/lang/String;)V
    .registers 5

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update binding for phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " simState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->logdWithLocalLog(Ljava/lang/String;)V

    .line 219
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_52

    .line 222
    :cond_23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_32

    goto :goto_52

    .line 223
    :cond_32
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_52

    .line 227
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mLastSimState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_52
    :goto_52
    return-void
.end method
