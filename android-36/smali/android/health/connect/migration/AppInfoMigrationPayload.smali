.class public final Landroid/health/connect/migration/AppInfoMigrationPayload;
.super Landroid/health/connect/migration/MigrationPayload;
.source "AppInfoMigrationPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/migration/AppInfoMigrationPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppIcon:[B

.field private final blacklist mAppName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/health/connect/migration/AppInfoMigrationPayload$1;

    invoke-direct {v0}, Landroid/health/connect/migration/AppInfoMigrationPayload$1;-><init>()V

    sput-object v0, Landroid/health/connect/migration/AppInfoMigrationPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Landroid/health/connect/migration/MigrationPayload;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/migration/AppInfoMigrationPayload;->mPackageName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/migration/AppInfoMigrationPayload;->mAppName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/migration/AppInfoMigrationPayload;->mAppIcon:[B

    .line 66
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "appIcon"    # [B

    .line 56
    invoke-direct {p0}, Landroid/health/connect/migration/MigrationPayload;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/health/connect/migration/AppInfoMigrationPayload;->mPackageName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Landroid/health/connect/migration/AppInfoMigrationPayload;->mAppName:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Landroid/health/connect/migration/AppInfoMigrationPayload;->mAppIcon:[B

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[BLandroid/health/connect/migration/AppInfoMigrationPayload-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/migration/AppInfoMigrationPayload;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppIcon()[B
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/health/connect/migration/AppInfoMigrationPayload;->mAppIcon:[B

    return-object v0
.end method

.method public whitelist getAppName()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/health/connect/migration/AppInfoMigrationPayload;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/health/connect/migration/AppInfoMigrationPayload;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Landroid/health/connect/migration/AppInfoMigrationPayload;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroid/health/connect/migration/AppInfoMigrationPayload;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Landroid/health/connect/migration/AppInfoMigrationPayload;->mAppIcon:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 75
    return-void
.end method
