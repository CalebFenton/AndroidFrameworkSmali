.class public final Landroid/os/ParcelUuid;
.super Ljava/lang/Object;
.source "ParcelUuid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mUuid:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Landroid/os/ParcelUuid$1;

    invoke-direct {v0}, Landroid/os/ParcelUuid$1;-><init>()V

    sput-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;)V
    .registers 2
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    .line 42
    return-void
.end method

.method public static whitelist fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .registers 3
    .param p0, "uuid"    # Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 98
    return v0

    .line 101
    :cond_4
    if-ne p0, p1, :cond_8

    .line 102
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_8
    instance-of v1, p1, Landroid/os/ParcelUuid;

    if-nez v1, :cond_d

    .line 106
    return v0

    .line 109
    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelUuid;

    .line 111
    .local v0, "that":Landroid/os/ParcelUuid;
    iget-object v1, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    iget-object v2, v0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    return-void
.end method
