.class public final Landroid/content/pm/VersionedPackage;
.super Ljava/lang/Object;
.source "VersionedPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/VersionedPackage$VersionCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mVersionCode:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 124
    new-instance v0, Landroid/content/pm/VersionedPackage$1;

    invoke-direct {v0}, Landroid/content/pm/VersionedPackage$1;-><init>()V

    sput-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/VersionedPackage-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/VersionedPackage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    .line 48
    int-to-long v0, p2

    iput-wide v0, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    .line 49
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    .line 60
    iput-wide p2, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 101
    instance-of v0, p1, Landroid/content/pm/VersionedPackage;

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iget-object v0, v0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iget-wide v0, v0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    iget-wide v2, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 101
    :goto_1f
    return v0
.end method

.method public whitelist getLongVersionCode()J
    .registers 3

    .line 91
    iget-wide v0, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    return-wide v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersionCode()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    iget-wide v0, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 110
    iget-object v0, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VersionedPackage["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 120
    iget-object v0, p0, Landroid/content/pm/VersionedPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 121
    iget-wide v0, p0, Landroid/content/pm/VersionedPackage;->mVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    return-void
.end method
