.class public final Landroid/health/connect/migration/MigrationException;
.super Ljava/lang/RuntimeException;
.source "MigrationException.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/migration/MigrationException$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/migration/MigrationException;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_INTERNAL:I = 0x1

.field public static final whitelist ERROR_MIGRATE_ENTITY:I = 0x2

.field public static final whitelist ERROR_MIGRATION_UNAVAILABLE:I = 0x3


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mFailedEntityId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/health/connect/migration/MigrationException$1;

    invoke-direct {v0}, Landroid/health/connect/migration/MigrationException$1;-><init>()V

    sput-object v0, Landroid/health/connect/migration/MigrationException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/migration/MigrationException;->mErrorCode:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/migration/MigrationException;->mFailedEntityId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/migration/MigrationException-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/migration/MigrationException;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "failedEntityId"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 74
    iput p2, p0, Landroid/health/connect/migration/MigrationException;->mErrorCode:I

    .line 75
    iput-object p3, p0, Landroid/health/connect/migration/MigrationException;->mFailedEntityId:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getErrorCode()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/health/connect/migration/MigrationException;->mErrorCode:I

    return v0
.end method

.method public whitelist getFailedEntityId()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/health/connect/migration/MigrationException;->mFailedEntityId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 107
    invoke-virtual {p0}, Landroid/health/connect/migration/MigrationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Landroid/health/connect/migration/MigrationException;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Landroid/health/connect/migration/MigrationException;->mFailedEntityId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return-void
.end method
