.class public final Landroid/health/connect/changelog/ChangeLogsResponse;
.super Ljava/lang/Object;
.source "ChangeLogsResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/changelog/ChangeLogsResponse;",
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

.field private final blacklist mHasMorePages:Z

.field private final blacklist mNextChangesToken:Ljava/lang/String;

.field private final blacklist mUpsertedRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/health/connect/changelog/ChangeLogsResponse$1;

    invoke-direct {v0}, Landroid/health/connect/changelog/ChangeLogsResponse$1;-><init>()V

    sput-object v0, Landroid/health/connect/changelog/ChangeLogsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/aidl/RecordsParcel;Ljava/util/List;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "upsertedRecords"    # Landroid/health/connect/aidl/RecordsParcel;
    .param p3, "nextChangesToken"    # Ljava/lang/String;
    .param p4, "hasMorePages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/aidl/RecordsParcel;",
            "Ljava/util/List<",
            "Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 54
    .local p2, "deletedLogs":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    nop

    .line 60
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->getInstance()Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Landroid/health/connect/aidl/RecordsParcel;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->getExternalRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mUpsertedRecords:Ljava/util/List;

    .line 62
    iput-object p2, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mDeletedLogs:Ljava/util/List;

    .line 63
    iput-object p3, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mNextChangesToken:Ljava/lang/String;

    .line 64
    iput-boolean p4, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mHasMorePages:Z

    .line 65
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    nop

    .line 69
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->getInstance()Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;

    move-result-object v0

    const-class v1, Landroid/health/connect/aidl/RecordsParcel;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/health/connect/aidl/RecordsParcel;

    .line 71
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/aidl/RecordsParcel;

    .line 74
    invoke-virtual {v1}, Landroid/health/connect/aidl/RecordsParcel;->getRecords()Ljava/util/List;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->getExternalRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mUpsertedRecords:Ljava/util/List;

    .line 75
    const-class v0, Landroid/health/connect/aidl/DeletedLogsParcel;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/health/connect/aidl/DeletedLogsParcel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/aidl/DeletedLogsParcel;

    .line 77
    invoke-virtual {v0}, Landroid/health/connect/aidl/DeletedLogsParcel;->getDeletedLogs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mDeletedLogs:Ljava/util/List;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mNextChangesToken:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mHasMorePages:Z

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/changelog/ChangeLogsResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/changelog/ChangeLogsResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeletedLogs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mDeletedLogs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNextChangesToken()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mNextChangesToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUpsertedRecords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/Record;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mUpsertedRecords:Ljava/util/List;

    return-object v0
.end method

.method public whitelist hasMorePages()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mHasMorePages:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "recordInternal":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/RecordInternal<*>;>;"
    iget-object v1, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mUpsertedRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/datatypes/Record;

    .line 140
    .local v2, "record":Landroid/health/connect/datatypes/Record;
    invoke-virtual {v2}, Landroid/health/connect/datatypes/Record;->toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v2    # "record":Landroid/health/connect/datatypes/Record;
    goto :goto_b

    .line 142
    :cond_1f
    new-instance v1, Landroid/health/connect/aidl/RecordsParcel;

    invoke-direct {v1, v0}, Landroid/health/connect/aidl/RecordsParcel;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    new-instance v1, Landroid/health/connect/aidl/DeletedLogsParcel;

    iget-object v3, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mDeletedLogs:Ljava/util/List;

    invoke-direct {v1, v3}, Landroid/health/connect/aidl/DeletedLogsParcel;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    iget-object v1, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mNextChangesToken:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-boolean v1, p0, Landroid/health/connect/changelog/ChangeLogsResponse;->mHasMorePages:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    return-void
.end method
