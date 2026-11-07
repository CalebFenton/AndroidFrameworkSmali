.class public final Landroid/health/connect/migration/MetadataMigrationPayload;
.super Landroid/health/connect/migration/MigrationPayload;
.source "MetadataMigrationPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/migration/MetadataMigrationPayload$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/migration/MetadataMigrationPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRecordRetentionPeriodDays:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/health/connect/migration/MetadataMigrationPayload$1;

    invoke-direct {v0}, Landroid/health/connect/migration/MetadataMigrationPayload$1;-><init>()V

    sput-object v0, Landroid/health/connect/migration/MetadataMigrationPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 2
    .param p1, "recordRetentionPeriodDays"    # I

    .line 50
    invoke-direct {p0}, Landroid/health/connect/migration/MigrationPayload;-><init>()V

    .line 51
    iput p1, p0, Landroid/health/connect/migration/MetadataMigrationPayload;->mRecordRetentionPeriodDays:I

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/health/connect/migration/MetadataMigrationPayload-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/migration/MetadataMigrationPayload;-><init>(I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Landroid/health/connect/migration/MigrationPayload;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/migration/MetadataMigrationPayload;->mRecordRetentionPeriodDays:I

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRecordRetentionPeriodDays()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/health/connect/migration/MetadataMigrationPayload;->mRecordRetentionPeriodDays:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 60
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Landroid/health/connect/migration/MetadataMigrationPayload;->mRecordRetentionPeriodDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
