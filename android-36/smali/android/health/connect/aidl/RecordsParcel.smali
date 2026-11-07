.class public Landroid/health/connect/aidl/RecordsParcel;
.super Ljava/lang/Object;
.source "RecordsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/RecordsParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRecordInternals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mRecordsChunkSize:J

.field private blacklist mRecordsSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$VvH3okxfnq8GMFxlaKcXpt8GfCg(Landroid/health/connect/aidl/RecordsParcel;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/aidl/RecordsParcel;->writeToParcelInternal(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/health/connect/aidl/RecordsParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/RecordsParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/RecordsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Landroid/health/connect/internal/ParcelUtils;->getParcelForSharedMemoryIfRequired(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/aidl/RecordsParcel;->mRecordInternals:Ljava/util/List;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/aidl/RecordsParcel;->mRecordsSize:Ljava/util/List;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    int-to-long v1, v1

    .line 68
    .local v1, "remainingParcelSize":J
    iput-wide v1, p0, Landroid/health/connect/aidl/RecordsParcel;->mRecordsChunkSize:J

    .line 69
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v0, :cond_54

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 72
    .local v4, "identifier":I
    :try_start_27
    iget-object v5, p0, Landroid/health/connect/aidl/RecordsParcel;->mRecordInternals:Ljava/util/List;

    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;->getInstance()Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Landroid/health/connect/internal/datatypes/utils/ParcelRecordConverter;->getRecord(Landroid/os/Parcel;I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v5, p0, Landroid/health/connect/aidl/RecordsParcel;->mRecordsSize:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v5
    :try_end_48
    .catch Ljava/lang/InstantiationException; {:try_start_27 .. :try_end_48} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_48} :catch_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_27 .. :try_end_48} :catch_4d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_48} :catch_4d

    int-to-long v1, v5

    .line 81
    nop

    .line 69
    .end local v4    # "identifier":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 76
    .restart local v4    # "identifier":I
    :catch_4d
    move-exception v5

    .line 80
    .local v5, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 83
    .end local v3    # "i":I
    .end local v4    # "identifier":I
    .end local v5    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_54
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/aidl/RecordsParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/aidl/RecordsParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;)V"
        }
    .end annotation

    .line 58
    .local p1, "recordInternals":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/RecordInternal<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/health/connect/aidl/RecordsParcel;->mRecordInternals:Ljava/util/List;

    .line 60
    return-void
.end method

.method private blacklist writeToParcelInternal(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 116
    iget-object v0, p0, Landroid/health/connect/aidl/RecordsParcel;->mRecordInternals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Landroid/health/connect/aidl/RecordsParcel;->mRecordInternals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/RecordInternal;

    .line 118
    .local v1, "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/RecordInternal;->getRecordType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v1, p1}, Landroid/health/connect/internal/datatypes/RecordInternal;->writeToParcel(Landroid/os/Parcel;)V

    .line 120
    .end local v1    # "recordInternal":Landroid/health/connect/internal/datatypes/RecordInternal;, "Landroid/health/connect/internal/datatypes/RecordInternal<*>;"
    goto :goto_f

    .line 121
    :cond_26
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRecords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroid/health/connect/aidl/RecordsParcel;->mRecordInternals:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRecordsChunkSize()J
    .registers 3

    .line 112
    iget-wide v0, p0, Landroid/health/connect/aidl/RecordsParcel;->mRecordsChunkSize:J

    return-wide v0
.end method

.method public blacklist getRecordsSize()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroid/health/connect/aidl/RecordsParcel;->mRecordsSize:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 92
    new-instance v0, Landroid/health/connect/aidl/RecordsParcel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/health/connect/aidl/RecordsParcel$$ExternalSyntheticLambda0;-><init>(Landroid/health/connect/aidl/RecordsParcel;)V

    invoke-static {p1, p2, v0}, Landroid/health/connect/internal/ParcelUtils;->putToRequiredMemory(Landroid/os/Parcel;ILandroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;)V

    .line 93
    return-void
.end method
