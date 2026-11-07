.class public final Landroid/content/pm/SigningInfo;
.super Ljava/lang/Object;
.source "SigningInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SigningInfo$AppSigningSchemeVersion;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SigningInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist VERSION_JAR:I = 0x1

.field public static final whitelist VERSION_SIGNING_BLOCK_V2:I = 0x2

.field public static final whitelist VERSION_SIGNING_BLOCK_V3:I = 0x3

.field public static final whitelist VERSION_SIGNING_BLOCK_V4:I = 0x4


# instance fields
.field private final blacklist mSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 251
    new-instance v0, Landroid/content/pm/SigningInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SigningInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SigningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 82
    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 9
    .param p1, "schemeVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p2, "apkContentsSigners":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/Signature;>;"
    .local p3, "publicKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/PublicKey;>;"
    .local p4, "signingCertificateHistory":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/Signature;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-lez p1, :cond_53

    if-nez p2, :cond_8

    goto :goto_53

    .line 106
    :cond_8
    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 107
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    goto :goto_1f

    .line 108
    :cond_1e
    move-object v1, v0

    :goto_1f
    nop

    .line 110
    .local v1, "signatures":[Landroid/content/pm/Signature;
    if-eqz p4, :cond_35

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    .line 111
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-interface {p4, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;

    goto :goto_36

    .line 112
    :cond_35
    move-object v2, v0

    :goto_36
    nop

    .line 113
    .local v2, "pastSignatures":[Landroid/content/pm/Signature;
    invoke-static {v1, v2}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 114
    const/4 v2, 0x0

    .line 117
    :cond_3e
    if-eqz p3, :cond_4b

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4b

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 118
    .local v0, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_4b
    new-instance v3, Landroid/content/pm/SigningDetails;

    invoke-direct {v3, v1, p1, v0, v2}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    iput-object v3, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 119
    return-void

    .line 103
    .end local v0    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    .end local v1    # "signatures":[Landroid/content/pm/Signature;
    .end local v2    # "pastSignatures":[Landroid/content/pm/Signature;
    :cond_53
    :goto_53
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/SigningDetails;)V
    .registers 3
    .param p1, "signingDetails"    # Landroid/content/pm/SigningDetails;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/content/pm/SigningDetails;

    invoke-direct {v0, p1}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 126
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/SigningInfo;)V
    .registers 4
    .param p1, "orig"    # Landroid/content/pm/SigningInfo;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroid/content/pm/SigningDetails;

    iget-object v1, p1, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v0, v1}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 130
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Landroid/content/pm/SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 134
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/SigningInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/SigningInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getApkContentsSigners()[Landroid/content/pm/Signature;
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPublicKeys()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSchemeVersion()I
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v0

    return v0
.end method

.method public whitelist getSigningCertificateHistory()[Landroid/content/pm/Signature;
    .registers 2

    .line 179
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_15

    .line 184
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0

    .line 188
    :cond_15
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 2

    .line 240
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public whitelist hasMultipleSigners()Z
    .registers 3

    .line 141
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 142
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 141
    :goto_14
    return v1
.end method

.method public whitelist hasPastSigningCertificates()Z
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 155
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 154
    :goto_14
    return v0
.end method

.method public whitelist signersMatchExactly(Landroid/content/pm/SigningInfo;)Z
    .registers 4
    .param p1, "other"    # Landroid/content/pm/SigningInfo;

    .line 248
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget-object v1, p1, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0, v1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 232
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/SigningDetails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 233
    return-void
.end method
