.class public final Landroid/health/connect/migration/PermissionMigrationPayload;
.super Landroid/health/connect/migration/MigrationPayload;
.source "PermissionMigrationPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/migration/PermissionMigrationPayload$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/migration/PermissionMigrationPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFirstGrantTime:Ljava/time/Instant;

.field private final blacklist mHoldingPackageName:Ljava/lang/String;

.field private final blacklist mPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Landroid/health/connect/migration/PermissionMigrationPayload$1;

    invoke-direct {v0}, Landroid/health/connect/migration/PermissionMigrationPayload$1;-><init>()V

    sput-object v0, Landroid/health/connect/migration/PermissionMigrationPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Landroid/health/connect/migration/MigrationPayload;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/migration/PermissionMigrationPayload;->mHoldingPackageName:Ljava/lang/String;

    .line 68
    const-class v0, Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/time/Instant;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    iput-object v0, p0, Landroid/health/connect/migration/PermissionMigrationPayload;->mFirstGrantTime:Ljava/time/Instant;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/migration/PermissionMigrationPayload;->mPermissions:Ljava/util/List;

    .line 70
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/time/Instant;Ljava/util/List;)V
    .registers 4
    .param p1, "holdingPackageName"    # Ljava/lang/String;
    .param p2, "firstGrantTime"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/Instant;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/health/connect/migration/MigrationPayload;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/health/connect/migration/PermissionMigrationPayload;->mHoldingPackageName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Landroid/health/connect/migration/PermissionMigrationPayload;->mFirstGrantTime:Ljava/time/Instant;

    .line 63
    iput-object p3, p0, Landroid/health/connect/migration/PermissionMigrationPayload;->mPermissions:Ljava/util/List;

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/time/Instant;Ljava/util/List;Landroid/health/connect/migration/PermissionMigrationPayload-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/migration/PermissionMigrationPayload;-><init>(Ljava/lang/String;Ljava/time/Instant;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFirstGrantTime()Ljava/time/Instant;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/health/connect/migration/PermissionMigrationPayload;->mFirstGrantTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getHoldingPackageName()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/health/connect/migration/PermissionMigrationPayload;->mHoldingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/health/connect/migration/PermissionMigrationPayload;->mPermissions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/health/connect/migration/PermissionMigrationPayload;->mHoldingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Landroid/health/connect/migration/PermissionMigrationPayload;->mFirstGrantTime:Ljava/time/Instant;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 78
    iget-object v0, p0, Landroid/health/connect/migration/PermissionMigrationPayload;->mPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 79
    return-void
.end method
