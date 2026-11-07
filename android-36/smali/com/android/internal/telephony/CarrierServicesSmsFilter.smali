.class public Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.super Ljava/lang/Object;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;
    }
.end annotation


# static fields
.field protected static final blacklist DBG:Z = true

.field public static final blacklist EVENT_ON_FILTER_COMPLETE_NOT_CALLED:I = 0x1

.field public static final blacklist FILTER_COMPLETE_TIMEOUT_MS:I = 0xafc80

.field private static final blacklist sAnomalyNoResponseFromCarrierMessagingService:Ljava/util/UUID;


# instance fields
.field private final blacklist mCallbackTimeoutHandler:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;

.field private final blacklist mCarrierServicesSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDestPort:I

.field private blacklist mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mMessageId:J

.field private final blacklist mPduFormat:Ljava/lang/String;

.field private final blacklist mPdus:[[B

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackTimeoutHandler(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCallbackTimeoutHandler:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierServicesSmsFilterCallback(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCarrierServicesSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFilterAggregator(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/LocalLog;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogv(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsAnomalyNoResponseFromCarrierMessagingService()Ljava/util/UUID;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->sAnomalyNoResponseFromCarrierMessagingService:Ljava/util/UUID;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    const-string v0, "94095e8e-b516-4065-a8be-e05b84071002"

    .line 65
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->sAnomalyNoResponseFromCarrierMessagingService:Ljava/util/UUID;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;[[BILjava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;Ljava/lang/String;Lcom/android/internal/telephony/LocalLog;J)V
    .registers 11

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 92
    iput-object p3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPdus:[[B

    .line 93
    iput p4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mDestPort:I

    .line 94
    iput-object p5, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPduFormat:Ljava/lang/String;

    .line 95
    iput-object p6, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCarrierServicesSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

    .line 96
    iput-object p7, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    .line 97
    new-instance p1, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCallbackTimeoutHandler:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;

    .line 98
    iput-object p8, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 99
    iput-wide p9, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mMessageId:J

    return-void
.end method

.method private blacklist filterWithPackage(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)V
    .registers 9

    .line 173
    new-instance v0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPdus:[[B

    iget v3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mDestPort:I

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPduFormat:Ljava/lang/String;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;[[BILjava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    iget-object p1, v0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-direct {p0, v1, p2, p1, v5}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;Landroid/service/carrier/CarrierMessagingServiceWrapper;Ljava/lang/String;)V

    .line 178
    invoke-static {p2, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->-$$Nest$maddToCallbacks(Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V

    .line 180
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->filterSms(Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V

    return-void
.end method

.method private blacklist getCarrierAppPackageForFiltering()Ljava/util/Optional;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object v0

    .line 145
    const-string v1, "android.service.carrier.CarrierMessagingService"

    if-eqz v0, :cond_14

    .line 146
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    goto :goto_1a

    .line 150
    :cond_14
    const-string v0, "getCarrierAppPackageForFiltering: UiccCard not initialized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1a
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_49

    .line 152
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_49

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarrierAppPackageForFiltering: Found carrier package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    .line 155
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 160
    :cond_49
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 163
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_7f

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarrierAppPackageForFiltering: Found system package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    .line 165
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 167
    :cond_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierAppPackageForFiltering: Unable to find carrierPackages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " or systemPackages: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->logv(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 186
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 190
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_39

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSystemAppForIntent: Can\'t get service information from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->loge(Ljava/lang/String;)V

    goto :goto_14

    .line 194
    :cond_39
    iget-object v2, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 195
    const-string v3, "android.permission.CARRIER_FILTER_SMS"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_14

    .line 197
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSystemAppForIntent: added package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    goto :goto_14

    :cond_5b
    return-object v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mMessageId:J

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mMessageId:J

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mMessageId:J

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist filter()Z
    .registers 8

    .line 108
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->getCarrierAppPackageForFiltering()Ljava/util/Optional;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 111
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/CarrierSmsUtils;->getImsRcsPackageForIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 116
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    if-nez v0, :cond_61

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_60

    .line 128
    new-instance v3, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCallbackTimeoutHandler:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;

    const/4 v4, 0x1

    .line 131
    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v5, 0xafc80

    .line 130
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 133
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4f
    if-ge v2, v0, :cond_5f

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 134
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->filterWithPackage(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)V

    goto :goto_4f

    :cond_5f
    return v4

    :cond_60
    return v2

    .line 122
    :cond_61
    const-string v0, "filter: Cannot reuse the same CarrierServiceSmsFilter object for filtering"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->loge(Ljava/lang/String;)V

    .line 123
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
