.class public final Landroid/health/connect/migration/RecordMigrationPayload;
.super Landroid/health/connect/migration/MigrationPayload;
.source "RecordMigrationPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/migration/RecordMigrationPayload$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/migration/RecordMigrationPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mRecord:Landroid/health/connect/datatypes/Record;

.field private final blacklist mRecordInternal:Landroid/health/connect/internal/datatypes/RecordInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Landroid/health/connect/migration/RecordMigrationPayload$1;

    invoke-direct {v0}, Landroid/health/connect/migration/RecordMigrationPayload$1;-><init>()V

    sput-object v0, Landroid/health/connect/migration/RecordMigrationPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Landroid/health/connect/migration/MigrationPayload;-><init>()V

    .line 68
    nop

    .line 69
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->getInstance()Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/utils/InternalExternalRecordConverter;->newInternalRecord(I)Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecordInternal:Landroid/health/connect/internal/datatypes/RecordInternal;

    .line 70
    iget-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecordInternal:Landroid/health/connect/internal/datatypes/RecordInternal;

    invoke-virtual {v0, p1}, Landroid/health/connect/internal/datatypes/RecordInternal;->populateUsing(Landroid/os/Parcel;)V

    .line 71
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/health/connect/datatypes/Record;)V
    .registers 5
    .param p1, "originPackageName"    # Ljava/lang/String;
    .param p2, "originAppName"    # Ljava/lang/String;
    .param p3, "record"    # Landroid/health/connect/datatypes/Record;

    .line 59
    invoke-direct {p0}, Landroid/health/connect/migration/MigrationPayload;-><init>()V

    .line 60
    invoke-virtual {p3}, Landroid/health/connect/datatypes/Record;->toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecordInternal:Landroid/health/connect/internal/datatypes/RecordInternal;

    .line 61
    iget-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecordInternal:Landroid/health/connect/internal/datatypes/RecordInternal;

    invoke-virtual {v0, p1}, Landroid/health/connect/internal/datatypes/RecordInternal;->setPackageName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    .line 62
    iget-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecordInternal:Landroid/health/connect/internal/datatypes/RecordInternal;

    invoke-virtual {v0, p2}, Landroid/health/connect/internal/datatypes/RecordInternal;->setAppName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/RecordInternal;

    .line 64
    iput-object p3, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecord:Landroid/health/connect/datatypes/Record;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/health/connect/datatypes/Record;Landroid/health/connect/migration/RecordMigrationPayload-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/migration/RecordMigrationPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/health/connect/datatypes/Record;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOriginAppName()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecordInternal:Landroid/health/connect/internal/datatypes/RecordInternal;

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOriginPackageName()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecordInternal:Landroid/health/connect/internal/datatypes/RecordInternal;

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecord:Landroid/health/connect/datatypes/Record;

    if-nez v0, :cond_c

    .line 104
    iget-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecordInternal:Landroid/health/connect/internal/datatypes/RecordInternal;

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/RecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/Record;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecord:Landroid/health/connect/datatypes/Record;

    .line 107
    :cond_c
    iget-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecord:Landroid/health/connect/datatypes/Record;

    return-object v0
.end method

.method public blacklist getRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecordInternal:Landroid/health/connect/internal/datatypes/RecordInternal;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecordInternal:Landroid/health/connect/internal/datatypes/RecordInternal;

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/RecordInternal;->getRecordType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Landroid/health/connect/migration/RecordMigrationPayload;->mRecordInternal:Landroid/health/connect/internal/datatypes/RecordInternal;

    invoke-virtual {v0, p1}, Landroid/health/connect/internal/datatypes/RecordInternal;->writeToParcel(Landroid/os/Parcel;)V

    .line 79
    return-void
.end method
