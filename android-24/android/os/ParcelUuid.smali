.class public final Landroid/os/ParcelUuid;
.super Ljava/lang/Object;
.source "ParcelUuid.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ParcelUuid$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 111
    new-instance v0, Landroid/os/ParcelUuid$1;

    #@2
    invoke-direct {v0}, Landroid/os/ParcelUuid$1;-><init>()V

    #@5
    .line 110
    sput-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    #@5
    .line 36
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    new-instance v0, Landroid/os/ParcelUuid;

    #@2
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@9
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 125
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 93
    if-nez p1, :cond_0

    #@3
    .line 94
    return v2

    #@4
    .line 97
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 98
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 101
    :cond_1
    instance-of v1, p1, Landroid/os/ParcelUuid;

    #@a
    if-nez v1, :cond_2

    #@c
    .line 102
    return v2

    #@d
    :cond_2
    move-object v0, p1

    #@e
    .line 105
    check-cast v0, Landroid/os/ParcelUuid;

    #@10
    .line 107
    .local v0, "that":Landroid/os/ParcelUuid;
    iget-object v1, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    #@12
    iget-object v2, v0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    #@14
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    return v1
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    #@2
    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    #@2
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    #@2
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    #@5
    move-result-wide v0

    #@6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@9
    .line 130
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    #@b
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@e
    move-result-wide v0

    #@f
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@12
    .line 128
    return-void
.end method
