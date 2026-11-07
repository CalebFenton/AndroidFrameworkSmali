.class public final Landroid/health/connect/migration/HealthConnectMigrationUiState;
.super Ljava/lang/Object;
.source "HealthConnectMigrationUiState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/migration/HealthConnectMigrationUiState$Type;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/migration/HealthConnectMigrationUiState;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MIGRATION_UI_STATE_ALLOWED_ERROR:I = 0x4

.field public static final blacklist MIGRATION_UI_STATE_ALLOWED_MIGRATOR_DISABLED:I = 0x1

.field public static final blacklist MIGRATION_UI_STATE_ALLOWED_NOT_STARTED:I = 0x2

.field public static final blacklist MIGRATION_UI_STATE_ALLOWED_PAUSED:I = 0x3

.field public static final blacklist MIGRATION_UI_STATE_APP_UPGRADE_REQUIRED:I = 0x6

.field public static final blacklist MIGRATION_UI_STATE_COMPLETE:I = 0x8

.field public static final blacklist MIGRATION_UI_STATE_COMPLETE_IDLE:I = 0x9

.field public static final blacklist MIGRATION_UI_STATE_IDLE:I = 0x0

.field public static final blacklist MIGRATION_UI_STATE_IN_PROGRESS:I = 0x5

.field public static final blacklist MIGRATION_UI_STATE_MODULE_UPGRADE_REQUIRED:I = 0x7

.field public static final blacklist MIGRATION_UI_STATE_UNKNOWN:I = 0xa


# instance fields
.field private final blacklist mMigrationUiState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 137
    new-instance v0, Landroid/health/connect/migration/HealthConnectMigrationUiState$1;

    invoke-direct {v0}, Landroid/health/connect/migration/HealthConnectMigrationUiState$1;-><init>()V

    sput-object v0, Landroid/health/connect/migration/HealthConnectMigrationUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "migrationUiState"    # I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Landroid/health/connect/migration/HealthConnectMigrationUiState;->mMigrationUiState:I

    .line 124
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/migration/HealthConnectMigrationUiState;->mMigrationUiState:I

    .line 152
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/migration/HealthConnectMigrationUiState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/migration/HealthConnectMigrationUiState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHealthConnectMigrationUiState()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/health/connect/migration/HealthConnectMigrationUiState;->mMigrationUiState:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    iget v0, p0, Landroid/health/connect/migration/HealthConnectMigrationUiState;->mMigrationUiState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void
.end method
