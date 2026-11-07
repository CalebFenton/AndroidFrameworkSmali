.class public Lcom/android/internal/telephony/data/TelephonyNetworkProvider;
.super Landroid/net/NetworkProvider;
.source "TelephonyNetworkProvider.java"

# interfaces
.implements Landroid/net/NetworkProvider$NetworkOfferCallback;


# instance fields
.field public final blacklist LOG_TAG:Ljava/lang/String;

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mNetworkRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/data/TelephonyNetworkRequest;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$UZs89OgIdy9Pr_TPGkie-YfuQrg(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 183
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$eP1_3Gpuq9JtXhixMlcGuZpCuEc(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->lambda$reevaluateNetworkRequests$1(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vgCcHwlxJT6up-FtT2xxYyXUtDc(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/IndentingPrintWriter;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Ljava/lang/Integer;)V
    .registers 4

    .line 315
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    if-ne p3, p0, :cond_d

    .line 316
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xEb1gImou_v0MKTgjwZ4CbxNsGQ(Lcom/android/internal/telephony/IndentingPrintWriter;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Ljava/lang/Integer;)V
    .registers 4

    .line 324
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    .line 325
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreevaluateNetworkRequests(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->reevaluateNetworkRequests(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 7

    .line 84
    const-class v0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    .line 54
    const-string v0, "TNP"

    iput-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->LOG_TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mNetworkRequests:Ljava/util/Map;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 86
    iput-object p3, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 87
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 91
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 92
    new-instance v1, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    new-instance v2, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$1;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;)V

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 101
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$2;

    new-instance v1, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$2;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->registerCallback(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;)V

    .line 111
    const-class p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_84

    .line 113
    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->makeNetworkFilter()Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 115
    new-instance p2, Landroid/net/NetworkScore$Builder;

    invoke-direct {p2}, Landroid/net/NetworkScore$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p2, p1, v0, p0}, Landroid/net/NetworkProvider;->registerNetworkOffer(Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "registerNetworkOffer: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->logl(Ljava/lang/String;)V

    :cond_84
    return-void
.end method

.method private blacklist getPhoneIdForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I
    .registers 7

    .line 129
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 130
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 131
    iget-object v4, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v4, p1, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->shouldApplyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result v4

    if-eqz v4, :cond_17

    return v3

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method private synthetic blacklist lambda$reevaluateNetworkRequests$1(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Ljava/lang/Integer;)V
    .registers 6

    .line 213
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->getPhoneIdForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result v0

    .line 214
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_5a

    .line 218
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 219
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v1

    .line 220
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->removeNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    :cond_20
    if-eq v0, v2, :cond_2d

    .line 224
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v1

    .line 225
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->addNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    .line 228
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request moved. phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->logl(Ljava/lang/String;)V

    .line 229
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mNetworkRequests:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 269
    const-string p0, "TNP"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 277
    const-string p0, "TNP"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->log(Ljava/lang/String;)V

    .line 287
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist reevaluateNetworkRequests(Ljava/lang/String;)V
    .registers 4

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reevaluateNetworkRequests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->logl(Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mNetworkRequests:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 298
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 299
    const-string p2, "TelephonyNetworkProvider:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreferredDataPhoneId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result p2

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultDataSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultDataPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v2

    .line 306
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 305
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registered capabilities: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->makeNetworkFilter()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    const-string p2, "Network requests:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 311
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_87
    if-ge v2, v1, :cond_bb

    aget-object v3, p2, v2

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 314
    iget-object v4, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mNetworkRequests:Ljava/util/Map;

    new-instance v5, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/IndentingPrintWriter;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 319
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 321
    :cond_bb
    const-string p2, "Not applied requests:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 323
    iget-object p2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mNetworkRequests:Ljava/util/Map;

    new-instance v1, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/IndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 328
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 329
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 330
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 331
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 333
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 335
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public blacklist makeNetworkFilter()Landroid/net/NetworkCapabilities;
    .registers 3

    .line 240
    new-instance p0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {p0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v0, 0xa

    .line 242
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/4 v0, 0x7

    .line 243
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v0, 0x21

    .line 244
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v0, 0xd

    .line 245
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/16 v0, 0x1c

    .line 246
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 247
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/4 v0, 0x2

    .line 248
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/4 v0, 0x3

    .line 249
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/4 v0, 0x4

    .line 250
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    const/4 v0, 0x5

    .line 251
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    new-instance v0, Landroid/net/MatchAllNetworkSpecifier;

    invoke-direct {v0}, Landroid/net/MatchAllNetworkSpecifier;-><init>()V

    .line 256
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    .line 257
    invoke-static {}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getAllSupportedNetworkCapabilities()Ljava/util/List;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda12;-><init>(Landroid/net/NetworkCapabilities$Builder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 260
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onNetworkNeeded(Landroid/net/NetworkRequest;)V
    .registers 5

    .line 150
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 151
    iget-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate network request "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->loge(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_24
    iget-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onRequestNetwork(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    .line 159
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->getPhoneIdForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_58

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkNeeded: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->logl(Ljava/lang/String;)V

    .line 162
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->addNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    goto :goto_6c

    .line 165
    :cond_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkNeeded: Not applied. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->logl(Ljava/lang/String;)V

    .line 168
    :goto_6c
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mNetworkRequests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist onNetworkUnneeded(Landroid/net/NetworkRequest;)V
    .registers 6

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda2;-><init>(Landroid/net/NetworkRequest;)V

    .line 183
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    if-nez v0, :cond_35

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkUnneeded: Cannot find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->loge(Ljava/lang/String;)V

    return-void

    .line 191
    :cond_35
    iget-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onReleaseNetwork(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    .line 192
    iget-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 193
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkUnneeded: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->logl(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->removeNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void

    .line 200
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkUnneeded: Unable to get phone. phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->loge(Ljava/lang/String;)V

    return-void
.end method
