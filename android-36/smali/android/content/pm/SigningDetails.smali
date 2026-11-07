.class public final Landroid/content/pm/SigningDetails;
.super Ljava/lang/Object;
.source "SigningDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SigningDetails$SignatureSchemeVersion;,
        Landroid/content/pm/SigningDetails$CapabilityMergeRule;,
        Landroid/content/pm/SigningDetails$Builder;,
        Landroid/content/pm/SigningDetails$CertCapabilities;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PAST_CERT_EXISTS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SigningDetails"

.field public static final blacklist UNKNOWN:Landroid/content/pm/SigningDetails;


# instance fields
.field private final blacklist mPastSigningCertificates:[Landroid/content/pm/Signature;

.field private final blacklist mPublicKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSignatureSchemeVersion:I

.field private final blacklist mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 142
    new-instance v0, Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    sput-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 835
    new-instance v0, Landroid/content/pm/SigningDetails$1;

    invoke-direct {v0}, Landroid/content/pm/SigningDetails$1;-><init>()V

    sput-object v0, Landroid/content/pm/SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/SigningDetails;)V
    .registers 5
    .param p1, "orig"    # Landroid/content/pm/SigningDetails;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 171
    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_15

    .line 172
    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    goto :goto_17

    .line 174
    :cond_15
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 176
    :goto_17
    iget v1, p1, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 177
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 178
    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_33

    .line 179
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-virtual {v0}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_3f

    .line 181
    :cond_33
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_3f

    .line 184
    :cond_36
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 185
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 186
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 187
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 189
    :goto_3f
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 829
    .local v0, "boot":Ljava/lang/ClassLoader;
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 831
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 832
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 833
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;I)V
    .registers 4
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "signatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    .line 167
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V
    .registers 5
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "signatureSchemeVersion"    # I
    .param p4, "pastSigningCertificates"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;[",
            "Landroid/content/pm/Signature;",
            ")V"
        }
    .end annotation

    .line 148
    .local p3, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 150
    iput p2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 151
    iput-object p3, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 152
    iput-object p4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 153
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    .registers 5
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "signatureSchemeVersion"    # I
    .param p3, "pastSigningCertificates"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 159
    invoke-static {p1}, Landroid/content/pm/SigningDetails;->toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    .line 161
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1014
    return-void
.end method

.method private blacklist getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;
    .registers 9
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 466
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 469
    move-object v0, p0

    .line 470
    .local v0, "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    move-object v2, p1

    .local v2, "ancestorSigningDetails":Landroid/content/pm/SigningDetails;
    goto :goto_12

    .line 471
    .end local v0    # "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v2    # "ancestorSigningDetails":Landroid/content/pm/SigningDetails;
    :cond_a
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 475
    move-object v0, p1

    .line 476
    .restart local v0    # "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    move-object v2, p0

    .line 484
    .restart local v2    # "ancestorSigningDetails":Landroid/content/pm/SigningDetails;
    :goto_12
    iget-object v3, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 485
    .local v3, "descendantIndex":I
    iget-object v4, v2, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .line 486
    .local v4, "ancestorIndex":I
    :goto_1c
    if-ltz v3, :cond_2f

    iget-object v5, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    iget-object v6, v2, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v4

    .line 487
    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 489
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 493
    :cond_2f
    if-gez v3, :cond_32

    .line 494
    return-object v1

    .line 499
    :cond_32
    add-int/lit8 v3, v3, -0x1

    .line 500
    add-int/lit8 v4, v4, -0x1

    .line 501
    if-ltz v3, :cond_48

    if-ltz v4, :cond_48

    iget-object v5, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    iget-object v6, v2, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v4

    .line 502
    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 507
    :cond_48
    if-ltz v3, :cond_4d

    if-ltz v4, :cond_4d

    .line 508
    return-object v1

    .line 512
    :cond_4d
    return-object v0

    .line 480
    .end local v0    # "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v2    # "ancestorSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v3    # "descendantIndex":I
    .end local v4    # "ancestorIndex":I
    :cond_4e
    return-object v1
.end method

.method private blacklist hasCertificateInternal(Landroid/content/pm/Signature;I)Z
    .registers 7
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "flags"    # I

    .line 695
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 696
    return v1

    .line 700
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2f

    .line 704
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 705
    if-eqz p2, :cond_2b

    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 706
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_2c

    .line 707
    :cond_2b
    return v2

    .line 703
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 715
    .end local v0    # "i":I
    :cond_2f
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-ne v0, v2, :cond_3f

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v1, v2

    :cond_3f
    return v1
.end method

.method private blacklist hasSha256CertificateInternal([BI)Z
    .registers 8
    .param p1, "sha256Certificate"    # [B
    .param p2, "flags"    # I

    .line 778
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 779
    return v1

    .line 781
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    .line 784
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_37

    .line 785
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 786
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 785
    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v3

    .line 787
    .local v3, "digest":[B
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 788
    if-eqz p2, :cond_33

    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    .line 789
    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_34

    .line 790
    :cond_33
    return v2

    .line 784
    .end local v3    # "digest":[B
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 797
    .end local v0    # "i":I
    :cond_37
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-ne v0, v2, :cond_4d

    .line 798
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v0

    .line 799
    .local v0, "digest":[B
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 801
    .end local v0    # "digest":[B
    :cond_4d
    return v1
.end method

.method private blacklist mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;
    .registers 13
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "mergeRule"    # I

    .line 298
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 299
    .local v0, "index":I
    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 300
    .local v2, "otherIndex":I
    if-ltz v0, :cond_ee

    if-gez v2, :cond_f

    goto/16 :goto_ee

    .line 304
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v3, "mergedSignatures":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Signature;>;"
    const/4 v4, 0x0

    .line 308
    .local v4, "capabilitiesModified":Z
    :goto_15
    if-ltz v0, :cond_35

    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v0

    iget-object v6, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 310
    new-instance v5, Landroid/content/pm/Signature;

    iget-object v6, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v7, v0, -0x1

    .end local v0    # "index":I
    .local v7, "index":I
    aget-object v0, v6, v0

    invoke-direct {v5, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    goto :goto_15

    .line 314
    .end local v7    # "index":I
    .restart local v0    # "index":I
    :cond_35
    if-gez v0, :cond_38

    .line 315
    return-object p0

    .line 321
    :cond_38
    :goto_38
    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v6, v0, -0x1

    .end local v0    # "index":I
    .local v6, "index":I
    aget-object v0, v5, v0

    .line 322
    .local v0, "signature":Landroid/content/pm/Signature;
    iget-object v5, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v7, v2, -0x1

    .end local v2    # "otherIndex":I
    .local v7, "otherIndex":I
    aget-object v2, v5, v2

    .line 324
    .local v2, "ancestorSignature":Landroid/content/pm/Signature;
    new-instance v5, Landroid/content/pm/Signature;

    invoke-direct {v5, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    .line 325
    .local v5, "mergedSignature":Landroid/content/pm/Signature;
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v9

    if-eq v8, v9, :cond_76

    .line 326
    const/4 v4, 0x1

    .line 327
    packed-switch p2, :pswitch_data_f0

    goto :goto_76

    .line 335
    :pswitch_58
    nop

    .line 336
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v9

    and-int/2addr v8, v9

    .line 335
    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    goto :goto_76

    .line 332
    :pswitch_66
    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 333
    goto :goto_76

    .line 329
    :pswitch_6e
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 330
    nop

    .line 340
    :cond_76
    :goto_76
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v0    # "signature":Landroid/content/pm/Signature;
    .end local v2    # "ancestorSignature":Landroid/content/pm/Signature;
    .end local v5    # "mergedSignature":Landroid/content/pm/Signature;
    if-ltz v6, :cond_8f

    if-ltz v7, :cond_8f

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v0, v0, v6

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto :goto_8f

    :cond_8c
    move v0, v6

    move v2, v7

    goto :goto_38

    .line 346
    :cond_8f
    :goto_8f
    if-ltz v6, :cond_94

    if-ltz v7, :cond_94

    .line 347
    return-object p0

    .line 352
    :cond_94
    :goto_94
    if-ltz v7, :cond_a6

    .line 353
    new-instance v0, Landroid/content/pm/Signature;

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v5, v7, -0x1

    .end local v7    # "otherIndex":I
    .local v5, "otherIndex":I
    aget-object v2, v2, v7

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v5

    goto :goto_94

    .line 356
    .end local v5    # "otherIndex":I
    .restart local v7    # "otherIndex":I
    :cond_a6
    :goto_a6
    if-ltz v6, :cond_b8

    .line 357
    new-instance v0, Landroid/content/pm/Signature;

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v5, v6, -0x1

    .end local v6    # "index":I
    .local v5, "index":I
    aget-object v2, v2, v6

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    goto :goto_a6

    .line 362
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_b8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ne v0, v2, :cond_c4

    if-nez v4, :cond_c4

    .line 364
    return-object p0

    .line 368
    :cond_c4
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 370
    :try_start_c7
    new-instance v0, Landroid/content/pm/SigningDetails;

    new-array v1, v1, [Landroid/content/pm/Signature;

    new-instance v2, Landroid/content/pm/Signature;

    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-direct {v2, v5}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    aput-object v2, v1, v8

    iget v2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    new-array v5, v8, [Landroid/content/pm/Signature;

    .line 371
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/Signature;

    invoke-direct {v0, v1, v2, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    :try_end_e4
    .catch Ljava/security/cert/CertificateException; {:try_start_c7 .. :try_end_e4} :catch_e5

    .line 370
    return-object v0

    .line 372
    :catch_e5
    move-exception v0

    .line 373
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "SigningDetails"

    const-string v2, "Caught an exception creating the merged lineage: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    return-object p0

    .line 301
    .end local v3    # "mergedSignatures":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Signature;>;"
    .end local v4    # "capabilitiesModified":Z
    .end local v6    # "index":I
    .end local v7    # "otherIndex":I
    .local v0, "index":I
    .local v2, "otherIndex":I
    :cond_ee
    :goto_ee
    return-object p0

    nop

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_66
        :pswitch_58
    .end packed-switch
.end method

.method public static blacklist toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;
    .registers 4
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 944
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 945
    .local v0, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 946
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 945
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 948
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method


# virtual methods
.method public blacklist checkCapability(Landroid/content/pm/SigningDetails;I)Z
    .registers 6
    .param p1, "oldDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "flags"    # I

    .line 627
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1e

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_1e

    .line 630
    :cond_a
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    .line 633
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 638
    :cond_15
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0

    .line 628
    :cond_1e
    :goto_1e
    return v1
.end method

.method public blacklist checkCapability(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "sha256String"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 734
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_28

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_28

    .line 739
    :cond_c
    invoke-static {p1, v1}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 740
    .local v0, "sha256Bytes":[B
    invoke-virtual {p0, v0, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([BI)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 741
    const/4 v1, 0x1

    return v1

    .line 749
    :cond_18
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 750
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "mSignaturesSha256Digests":[Ljava/lang/String;
    nop

    .line 752
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "mSignaturesSha256Digest":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 735
    .end local v0    # "sha256Bytes":[B
    .end local v1    # "mSignaturesSha256Digests":[Ljava/lang/String;
    .end local v2    # "mSignaturesSha256Digest":Ljava/lang/String;
    :cond_28
    :goto_28
    return v1
.end method

.method public blacklist checkCapabilityRecover(Landroid/content/pm/SigningDetails;I)Z
    .registers 8
    .param p1, "oldDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 648
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3e

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p0, v0, :cond_a

    goto :goto_3e

    .line 651
    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_39

    .line 653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v0, v3, :cond_38

    .line 654
    iget-object v3, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Landroid/content/pm/Signature;->areEffectiveMatch(Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 657
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    if-ne v3, p2, :cond_35

    .line 658
    return v2

    .line 653
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 664
    .end local v0    # "i":I
    :cond_38
    return v1

    .line 662
    :cond_39
    invoke-static {p1, p0}, Landroid/content/pm/Signature;->areEffectiveMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 649
    :cond_3e
    :goto_3e
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 853
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 854
    :cond_4
    instance-of v1, p1, Landroid/content/pm/SigningDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 856
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/content/pm/SigningDetails;

    .line 858
    .local v1, "that":Landroid/content/pm/SigningDetails;
    iget v3, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iget v4, v1, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    if-eq v3, v4, :cond_14

    return v2

    .line 859
    :cond_14
    invoke-static {p0, v1}, Landroid/content/pm/Signature;->areExactMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result v3

    if-nez v3, :cond_1b

    return v2

    .line 860
    :cond_1b
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v3, :cond_2a

    .line 861
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 862
    return v2

    .line 864
    :cond_2a
    iget-object v3, v1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v3, :cond_2f

    .line 865
    return v2

    .line 869
    :cond_2f
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 870
    return v2

    .line 873
    :cond_3a
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_5a

    .line 874
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-ge v3, v4, :cond_5a

    .line 875
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    iget-object v5, v1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    .line 876
    invoke-virtual {v5}, Landroid/content/pm/Signature;->getFlags()I

    move-result v5

    if-eq v4, v5, :cond_57

    .line 877
    return v2

    .line 874
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 881
    .end local v3    # "i":I
    :cond_5a
    return v0
.end method

.method public blacklist getPastSigningCertificates()[Landroid/content/pm/Signature;
    .registers 2

    .line 1005
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public blacklist getPublicKeys()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getSignatureSchemeVersion()I
    .registers 2

    .line 979
    iget v0, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    return v0
.end method

.method public blacklist getSignatures()[Landroid/content/pm/Signature;
    .registers 2

    .line 971
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public blacklist hasAncestor(Landroid/content/pm/SigningDetails;)Z
    .registers 7
    .param p1, "oldDetails"    # Landroid/content/pm/SigningDetails;

    .line 553
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_30

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_30

    .line 556
    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2f

    .line 559
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    iget-object v4, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 560
    return v2

    .line 558
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 564
    .end local v0    # "i":I
    :cond_2f
    return v1

    .line 554
    :cond_30
    :goto_30
    return v1
.end method

.method public blacklist hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z
    .registers 5
    .param p1, "oldDetails"    # Landroid/content/pm/SigningDetails;

    .line 533
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1e

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_1e

    .line 536
    :cond_a
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    .line 539
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 543
    :cond_15
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v0

    return v0

    .line 534
    :cond_1e
    :goto_1e
    return v1
.end method

.method public blacklist hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 415
    .local p1, "certDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_71

    if-eqz p1, :cond_71

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_71

    .line 419
    :cond_e
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3a

    .line 423
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v0, v3, :cond_1e

    .line 424
    return v1

    .line 426
    :cond_1e
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    move v4, v1

    :goto_22
    if-ge v4, v3, :cond_39

    aget-object v5, v0, v4

    .line 427
    .local v5, "signature":Landroid/content/pm/Signature;
    nop

    .line 428
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    .line 427
    invoke-static {v6}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v6

    .line 429
    .local v6, "signatureDigest":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 430
    return v1

    .line 426
    .end local v5    # "signature":Landroid/content/pm/Signature;
    .end local v6    # "signatureDigest":Ljava/lang/String;
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 433
    :cond_39
    return v2

    .line 436
    :cond_3a
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "signatureDigest":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 438
    return v2

    .line 440
    :cond_4d
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 443
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_54
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_70

    .line 444
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    .line 445
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    .line 444
    invoke-static {v4}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 447
    return v2

    .line 443
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 451
    .end local v3    # "i":I
    :cond_70
    return v1

    .line 416
    .end local v0    # "signatureDigest":Ljava/lang/String;
    :cond_71
    :goto_71
    return v1
.end method

.method public blacklist hasCertificate(Landroid/content/pm/Signature;)Z
    .registers 3
    .param p1, "signature"    # Landroid/content/pm/Signature;

    .line 674
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasCertificate(Landroid/content/pm/Signature;I)Z
    .registers 4
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "flags"    # I

    .line 685
    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasCertificate([B)Z
    .registers 4
    .param p1, "certificate"    # [B

    .line 690
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, p1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 691
    .local v0, "signature":Landroid/content/pm/Signature;
    invoke-virtual {p0, v0}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v1

    return v1
.end method

.method public blacklist hasCommonAncestor(Landroid/content/pm/SigningDetails;)Z
    .registers 3
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 390
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_b

    .line 393
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 395
    :cond_b
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_16

    .line 396
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 401
    :cond_16
    invoke-direct {p0, p1}, Landroid/content/pm/SigningDetails;->getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public blacklist hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z
    .registers 8
    .param p1, "otherDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "flags"    # I

    .line 580
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_6b

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_6b

    .line 585
    :cond_a
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_66

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-le v0, v2, :cond_16

    goto :goto_66

    .line 590
    :cond_16
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 591
    .local v0, "otherSignatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 592
    iget-object v3, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_34

    .line 594
    :cond_2b
    iget-object v3, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 598
    :goto_34
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 599
    return v2

    .line 601
    :cond_3f
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 604
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_46
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_65

    .line 605
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 607
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_62

    .line 608
    return v2

    .line 604
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 613
    .end local v3    # "i":I
    :cond_65
    return v1

    .line 586
    .end local v0    # "otherSignatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    :cond_66
    :goto_66
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 581
    :cond_6b
    :goto_6b
    return v1
.end method

.method public blacklist hasPastSigningCertificates()Z
    .registers 2

    .line 522
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist hasSha256Certificate([B)Z
    .registers 3
    .param p1, "sha256Certificate"    # [B

    .line 762
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result v0

    return v0
.end method

.method public blacklist hasSha256Certificate([BI)Z
    .registers 4
    .param p1, "sha256Certificate"    # [B
    .param p2, "flags"    # I

    .line 774
    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result v0

    return v0
.end method

.method public blacklist hasSignatures()Z
    .registers 2

    .line 517
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 886
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 887
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    add-int/2addr v1, v2

    .line 888
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v2, :cond_18

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->hashCode()I

    move-result v2

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    add-int/2addr v0, v2

    .line 889
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 890
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist mergeLineageWith(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;
    .registers 3
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;
    .registers 6
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "mergeRule"    # I

    .line 247
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_17

    .line 249
    nop

    .line 248
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 249
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, p1

    goto :goto_16

    :cond_15
    move-object v0, p0

    .line 248
    :goto_16
    return-object v0

    .line 251
    :cond_17
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 252
    return-object p0

    .line 256
    :cond_1e
    invoke-direct {p0, p1}, Landroid/content/pm/SigningDetails;->getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 257
    .local v0, "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    if-nez v0, :cond_25

    .line 258
    return-object p0

    .line 260
    :cond_25
    move-object v1, p0

    .line 261
    .local v1, "mergedDetails":Landroid/content/pm/SigningDetails;
    if-ne v0, p0, :cond_2d

    .line 264
    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    goto :goto_42

    .line 268
    :cond_2d
    packed-switch p2, :pswitch_data_44

    goto :goto_42

    .line 278
    :pswitch_31
    invoke-direct {p1, p0, p2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    goto :goto_42

    .line 274
    :pswitch_36
    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 276
    goto :goto_42

    .line 270
    :pswitch_3c
    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 272
    nop

    .line 283
    :goto_42
    return-object v1

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_36
        :pswitch_31
    .end packed-switch
.end method

.method public blacklist signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z
    .registers 3
    .param p1, "other"    # Landroid/content/pm/SigningDetails;

    .line 806
    invoke-static {p0, p1}, Landroid/content/pm/Signature;->areExactMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 816
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 817
    .local v0, "isUnknown":Z
    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 818
    if-eqz v0, :cond_d

    .line 819
    return-void

    .line 821
    :cond_d
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 822
    iget v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 824
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 825
    return-void
.end method
