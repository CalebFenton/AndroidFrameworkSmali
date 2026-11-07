.class public final Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;
.super Ljava/lang/Object;
.source "ParcelRecordConverter.java"


# static fields
.field private static volatile blacklist sParcelRecordConverter:Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;


# instance fields
.field private final blacklist mDataTypeClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;->sParcelRecordConverter:Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    nop

    .line 42
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getRecordIdToInternalRecordClassMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;->mDataTypeClassMap:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;
    .registers 2

    const-class v0, Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;->sParcelRecordConverter:Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;

    if-nez v1, :cond_e

    .line 48
    new-instance v1, Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;

    invoke-direct {v1}, Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;-><init>()V

    sput-object v1, Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;->sParcelRecordConverter:Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;

    .line 51
    :cond_e
    sget-object v1, Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;->sParcelRecordConverter:Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 46
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public blacklist getRecord(Landroid/os/Parcel;I)Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;->mDataTypeClassMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 63
    .local v0, "recordClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/internal/datatypes/RecordInternal<*>;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/RecordInternal;

    .line 65
    .local v1, "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    invoke-virtual {v1, p1}, Landroid/health/connect/internal/datatypes/RecordInternal;->populateUsing(Landroid/os/Parcel;)V

    .line 66
    return-object v1
.end method
