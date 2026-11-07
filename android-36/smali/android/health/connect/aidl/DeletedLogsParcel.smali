.class public final Landroid/health/connect/aidl/DeletedLogsParcel;
.super Ljava/lang/Object;
.source "DeletedLogsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/DeletedLogsParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDeletedLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$CkCh2oA55p5HcqdJBL3uIvxYT4Q(Landroid/health/connect/aidl/DeletedLogsParcel;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/health/connect/aidl/DeletedLogsParcel;->writeToParcelInternal(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/health/connect/aidl/DeletedLogsParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/DeletedLogsParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/DeletedLogsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Landroid/health/connect/internal/ParcelUtils;->getParcelForSharedMemoryIfRequired(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/aidl/DeletedLogsParcel;->mDeletedLogs:Ljava/util/List;

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_2a

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 62
    .local v3, "time":J
    iget-object v5, p0, Landroid/health/connect/aidl/DeletedLogsParcel;->mDeletedLogs:Ljava/util/List;

    new-instance v6, Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;

    invoke-direct {v6, v2, v3, v4}, Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;-><init>(Ljava/lang/String;J)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "time":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 64
    .end local v1    # "i":I
    :cond_2a
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/aidl/DeletedLogsParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/aidl/DeletedLogsParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "deletedLogs":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/health/connect/aidl/DeletedLogsParcel;->mDeletedLogs:Ljava/util/List;

    .line 53
    return-void
.end method

.method private blacklist writeToParcelInternal(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 82
    iget-object v0, p0, Landroid/health/connect/aidl/DeletedLogsParcel;->mDeletedLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Landroid/health/connect/aidl/DeletedLogsParcel;->mDeletedLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;

    .line 84
    .local v1, "deletedLog":Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;
    invoke-virtual {v1}, Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;->getDeletedRecordId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;->getDeletedTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    .end local v1    # "deletedLog":Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;
    goto :goto_f

    .line 87
    :cond_2e
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeletedLogs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroid/health/connect/aidl/DeletedLogsParcel;->mDeletedLogs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    new-instance v0, Landroid/health/connect/aidl/DeletedLogsParcel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/health/connect/aidl/DeletedLogsParcel$$ExternalSyntheticLambda0;-><init>(Landroid/health/connect/aidl/DeletedLogsParcel;)V

    invoke-static {p1, p2, v0}, Landroid/health/connect/internal/ParcelUtils;->putToRequiredMemory(Landroid/os/Parcel;ILandroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;)V

    .line 79
    return-void
.end method
