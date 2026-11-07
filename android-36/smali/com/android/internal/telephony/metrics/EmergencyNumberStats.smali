.class public Lcom/android/internal/telephony/metrics/EmergencyNumberStats;
.super Ljava/lang/Object;
.source "EmergencyNumberStats.java"


# static fields
.field private static blacklist sInstance:Lcom/android/internal/telephony/metrics/EmergencyNumberStats;

.field private static final blacklist sRoutesMap:Landroid/util/SparseIntArray;

.field private static final blacklist sServiceCategoriesMap:Landroid/util/SparseIntArray;

.field private static final blacklist sSourcesMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lcom/android/internal/telephony/metrics/EmergencyNumberStats$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/EmergencyNumberStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->sRoutesMap:Landroid/util/SparseIntArray;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/metrics/EmergencyNumberStats$2;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/EmergencyNumberStats$2;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->sServiceCategoriesMap:Landroid/util/SparseIntArray;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/metrics/EmergencyNumberStats$3;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/EmergencyNumberStats$3;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->sSourcesMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist convertEmergencyNumberToProto(Landroid/telephony/emergency/EmergencyNumber;IIZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .registers 7

    .line 142
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;-><init>()V

    .line 145
    iput-boolean p4, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->isDbVersionIgnored:Z

    .line 146
    iput p2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->assetVersion:I

    .line 147
    iput p3, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->otaVersion:I

    .line 148
    iput-object v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    .line 151
    sget-object p2, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->sRoutesMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    iput p2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->route:I

    .line 152
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategories()Ljava/util/List;

    move-result-object p2

    .line 153
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->getMappedServiceCategories(Ljava/util/List;)[I

    move-result-object p2

    iput-object p2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    .line 155
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSources()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->getMappedSources(Ljava/util/List;)[I

    move-result-object p0

    iput-object p0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    return-object v1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/metrics/EmergencyNumberStats;
    .registers 1

    .line 113
    sget-object v0, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->sInstance:Lcom/android/internal/telephony/metrics/EmergencyNumberStats;

    if-nez v0, :cond_b

    .line 114
    new-instance v0, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->sInstance:Lcom/android/internal/telephony/metrics/EmergencyNumberStats;

    .line 116
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->sInstance:Lcom/android/internal/telephony/metrics/EmergencyNumberStats;

    return-object v0
.end method

.method private blacklist getMappedServiceCategories(Ljava/util/List;)[I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-eqz p1, :cond_29

    .line 160
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_29

    .line 163
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->sServiceCategoriesMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/metrics/EmergencyNumberStats$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/EmergencyNumberStats$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseIntArray;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 164
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0

    :cond_29
    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getMappedSources(Ljava/util/List;)[I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-eqz p1, :cond_29

    .line 168
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_29

    .line 171
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->sSourcesMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/metrics/EmergencyNumberStats$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/EmergencyNumberStats$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseIntArray;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0

    :cond_29
    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist convertEmergencyNumbersListToProto(Ljava/util/List;IIZ)[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;IIZ)[",
            "Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    .line 134
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/internal/telephony/metrics/EmergencyNumberStats;->convertEmergencyNumberToProto(Landroid/telephony/emergency/EmergencyNumber;IIZ)Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    const/4 p0, 0x0

    .line 137
    new-array p0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    return-object p0
.end method
