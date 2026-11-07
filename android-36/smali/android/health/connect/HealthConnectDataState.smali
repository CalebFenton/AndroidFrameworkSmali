.class public final Landroid/health/connect/HealthConnectDataState;
.super Ljava/lang/Object;
.source "HealthConnectDataState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/HealthConnectDataState$DataMigrationState;,
        Landroid/health/connect/HealthConnectDataState$DataRestoreError;,
        Landroid/health/connect/HealthConnectDataState$DataRestoreState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/HealthConnectDataState;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MIGRATION_STATE_ALLOWED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MIGRATION_STATE_APP_UPGRADE_REQUIRED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MIGRATION_STATE_COMPLETE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MIGRATION_STATE_IDLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MIGRATION_STATE_IN_PROGRESS:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MIGRATION_STATE_MODULE_UPGRADE_REQUIRED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTORE_ERROR_FETCHING_DATA:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTORE_ERROR_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTORE_ERROR_UNKNOWN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTORE_ERROR_VERSION_DIFF:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTORE_STATE_IDLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTORE_STATE_IN_PROGRESS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESTORE_STATE_PENDING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mDataMigrationState:I

.field private final blacklist mDataRestoreError:I

.field private final blacklist mDataRestoreState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 295
    new-instance v0, Landroid/health/connect/HealthConnectDataState$1;

    invoke-direct {v0}, Landroid/health/connect/HealthConnectDataState$1;-><init>()V

    sput-object v0, Landroid/health/connect/HealthConnectDataState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "dataRestoreState"    # I
    .param p2, "dataRestoreError"    # I
    .param p3, "dataMigrationState"    # I

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput p1, p0, Landroid/health/connect/HealthConnectDataState;->mDataRestoreState:I

    .line 290
    iput p2, p0, Landroid/health/connect/HealthConnectDataState;->mDataRestoreError:I

    .line 291
    iput p3, p0, Landroid/health/connect/HealthConnectDataState;->mDataMigrationState:I

    .line 292
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/HealthConnectDataState;->mDataRestoreState:I

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/HealthConnectDataState;->mDataRestoreError:I

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/HealthConnectDataState;->mDataMigrationState:I

    .line 324
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/HealthConnectDataState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/HealthConnectDataState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDataMigrationState()I
    .registers 2

    .line 281
    iget v0, p0, Landroid/health/connect/HealthConnectDataState;->mDataMigrationState:I

    return v0
.end method

.method public whitelist getDataRestoreError()I
    .registers 2

    .line 272
    iget v0, p0, Landroid/health/connect/HealthConnectDataState;->mDataRestoreError:I

    return v0
.end method

.method public whitelist getDataRestoreState()I
    .registers 2

    .line 258
    iget v0, p0, Landroid/health/connect/HealthConnectDataState;->mDataRestoreState:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 315
    iget v0, p0, Landroid/health/connect/HealthConnectDataState;->mDataRestoreState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget v0, p0, Landroid/health/connect/HealthConnectDataState;->mDataRestoreError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Landroid/health/connect/HealthConnectDataState;->mDataMigrationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    return-void
.end method
