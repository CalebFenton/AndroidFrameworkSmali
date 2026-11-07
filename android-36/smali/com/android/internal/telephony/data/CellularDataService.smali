.class public Lcom/android/internal/telephony/data/CellularDataService;
.super Landroid/telephony/data/DataService;
.source "CellularDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/data/CellularDataService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/CellularDataService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lcom/android/internal/telephony/data/CellularDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/CellularDataService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Landroid/telephony/data/DataService;-><init>()V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 294
    sget-object p0, Lcom/android/internal/telephony/data/CellularDataService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 298
    sget-object p0, Lcom/android/internal/telephony/data/CellularDataService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public whitelist onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;
    .registers 5

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cellular data service created for slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/CellularDataService;->log(Ljava/lang/String;)V

    .line 286
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_30

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to cellular data service with invalid slotId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/CellularDataService;->loge(Ljava/lang/String;)V

    return-object v1

    .line 290
    :cond_30
    new-instance v0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;-><init>(Lcom/android/internal/telephony/data/CellularDataService;ILcom/android/internal/telephony/data/CellularDataService-IA;)V

    return-object v0
.end method
