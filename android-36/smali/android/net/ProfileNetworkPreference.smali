.class public final Landroid/net/ProfileNetworkPreference;
.super Ljava/lang/Object;
.source "ProfileNetworkPreference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ProfileNetworkPreference$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ProfileNetworkPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mExcludedUids:[I

.field private blacklist mIncludedUids:[I

.field private final blacklist mPreference:I

.field private final blacklist mPreferenceEnterpriseId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 286
    new-instance v0, Landroid/net/ProfileNetworkPreference$1;

    invoke-direct {v0}, Landroid/net/ProfileNetworkPreference$1;-><init>()V

    sput-object v0, Landroid/net/ProfileNetworkPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I[I[II)V
    .registers 7
    .param p1, "preference"    # I
    .param p2, "includedUids"    # [I
    .param p3, "excludedUids"    # [I
    .param p4, "preferenceEnterpriseId"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/ProfileNetworkPreference;->mIncludedUids:[I

    .line 43
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/ProfileNetworkPreference;->mExcludedUids:[I

    .line 48
    iput p1, p0, Landroid/net/ProfileNetworkPreference;->mPreference:I

    .line 49
    iput p4, p0, Landroid/net/ProfileNetworkPreference;->mPreferenceEnterpriseId:I

    .line 50
    if-eqz p2, :cond_1b

    .line 51
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/net/ProfileNetworkPreference;->mIncludedUids:[I

    goto :goto_1f

    .line 53
    :cond_1b
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/ProfileNetworkPreference;->mIncludedUids:[I

    .line 56
    :goto_1f
    if-eqz p3, :cond_2a

    .line 57
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/net/ProfileNetworkPreference;->mExcludedUids:[I

    goto :goto_2e

    .line 59
    :cond_2a
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/net/ProfileNetworkPreference;->mExcludedUids:[I

    .line 61
    :goto_2e
    return-void
.end method

.method synthetic constructor blacklist <init>(I[I[IILandroid/net/ProfileNetworkPreference-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/ProfileNetworkPreference;-><init>(I[I[II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/ProfileNetworkPreference;->mIncludedUids:[I

    .line 43
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/net/ProfileNetworkPreference;->mExcludedUids:[I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/ProfileNetworkPreference;->mPreference:I

    .line 65
    iget-object v0, p0, Landroid/net/ProfileNetworkPreference;->mIncludedUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 66
    iget-object v0, p0, Landroid/net/ProfileNetworkPreference;->mExcludedUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/ProfileNetworkPreference;->mPreferenceEnterpriseId:I

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/ProfileNetworkPreference-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/ProfileNetworkPreference;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 132
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 133
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/ProfileNetworkPreference;

    .line 134
    .local v2, "that":Landroid/net/ProfileNetworkPreference;
    iget v3, p0, Landroid/net/ProfileNetworkPreference;->mPreference:I

    iget v4, v2, Landroid/net/ProfileNetworkPreference;->mPreference:I

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/net/ProfileNetworkPreference;->mIncludedUids:[I

    iget-object v4, v2, Landroid/net/ProfileNetworkPreference;->mIncludedUids:[I

    .line 135
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/net/ProfileNetworkPreference;->mExcludedUids:[I

    iget-object v4, v2, Landroid/net/ProfileNetworkPreference;->mExcludedUids:[I

    .line 136
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Landroid/net/ProfileNetworkPreference;->mPreferenceEnterpriseId:I

    iget v4, v2, Landroid/net/ProfileNetworkPreference;->mPreferenceEnterpriseId:I

    if-ne v3, v4, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    .line 134
    :goto_37
    return v0

    .line 132
    .end local v2    # "that":Landroid/net/ProfileNetworkPreference;
    :cond_38
    :goto_38
    return v1
.end method

.method public blacklist getExcludedUids()[I
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/net/ProfileNetworkPreference;->mExcludedUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getIncludedUids()[I
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/net/ProfileNetworkPreference;->mIncludedUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getPreference()I
    .registers 2

    .line 71
    iget v0, p0, Landroid/net/ProfileNetworkPreference;->mPreference:I

    return v0
.end method

.method public blacklist getPreferenceEnterpriseId()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/net/ProfileNetworkPreference;->mPreferenceEnterpriseId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 142
    iget v0, p0, Landroid/net/ProfileNetworkPreference;->mPreference:I

    iget v1, p0, Landroid/net/ProfileNetworkPreference;->mPreferenceEnterpriseId:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/ProfileNetworkPreference;->mIncludedUids:[I

    .line 144
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/ProfileNetworkPreference;->mExcludedUids:[I

    .line 145
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 142
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProfileNetworkPreference{mPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Landroid/net/ProfileNetworkPreference;->getPreference()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIncludedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ProfileNetworkPreference;->mIncludedUids:[I

    .line 123
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mExcludedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ProfileNetworkPreference;->mExcludedUids:[I

    .line 124
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mPreferenceEnterpriseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/ProfileNetworkPreference;->mPreferenceEnterpriseId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 274
    iget v0, p0, Landroid/net/ProfileNetworkPreference;->mPreference:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object v0, p0, Landroid/net/ProfileNetworkPreference;->mIncludedUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 276
    iget-object v0, p0, Landroid/net/ProfileNetworkPreference;->mExcludedUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 277
    iget v0, p0, Landroid/net/ProfileNetworkPreference;->mPreferenceEnterpriseId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    return-void
.end method
