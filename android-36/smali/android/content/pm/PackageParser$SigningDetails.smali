.class public final Landroid/content/pm/PackageParser$SigningDetails;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$SigningDetails$SignatureSchemeVersion;,
        Landroid/content/pm/PackageParser$SigningDetails$Builder;,
        Landroid/content/pm/PackageParser$SigningDetails$CertCapabilities;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PAST_CERT_EXISTS:I

.field public static final greylist-max-o UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;


# instance fields
.field public final greylist-max-o pastSigningCertificates:[Landroid/content/pm/Signature;

.field public final greylist-max-o publicKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist-max-o signatureSchemeVersion:I

.field public final greylist signatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 6020
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    sput-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    .line 6648
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails$1;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$SigningDetails$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser$SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageParser$SigningDetails;)V
    .registers 5
    .param p1, "orig"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 6047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6048
    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 6049
    iget-object v1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_15

    .line 6050
    iget-object v1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    goto :goto_17

    .line 6052
    :cond_15
    iput-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 6054
    :goto_17
    iget v1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    iput v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 6055
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    .line 6056
    iget-object v1, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_33

    .line 6057
    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-virtual {v0}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_3f

    .line 6059
    :cond_33
    iput-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_3f

    .line 6062
    :cond_36
    iput-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 6063
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 6064
    iput-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    .line 6065
    iput-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    .line 6067
    :goto_3f
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 6640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6641
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 6642
    .local v0, "boot":Ljava/lang/ClassLoader;
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 6643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 6644
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    .line 6645
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    .line 6646
    return-void
.end method

.method public constructor greylist-max-o <init>([Landroid/content/pm/Signature;I)V
    .registers 4
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "signatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 6044
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    .line 6045
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

    .line 6026
    .local p3, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6027
    iput-object p1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 6028
    iput p2, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 6029
    iput-object p3, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    .line 6030
    iput-object p4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    .line 6031
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

    .line 6037
    invoke-static {p1}, Landroid/content/pm/PackageParser;->toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    .line 6039
    return-void
.end method

.method private blacklist getDescendantOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 9
    .param p1, "otherSigningDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 6270
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 6273
    move-object v0, p0

    .line 6274
    .local v0, "descendantSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    move-object v2, p1

    .local v2, "ancestorSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    goto :goto_12

    .line 6275
    .end local v0    # "descendantSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .end local v2    # "ancestorSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    :cond_a
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestor(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 6279
    move-object v0, p1

    .line 6280
    .restart local v0    # "descendantSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    move-object v2, p0

    .line 6288
    .restart local v2    # "ancestorSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    :goto_12
    iget-object v3, v0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 6289
    .local v3, "descendantIndex":I
    iget-object v4, v2, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .line 6290
    .local v4, "ancestorIndex":I
    :goto_1c
    if-ltz v3, :cond_2f

    iget-object v5, v0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    iget-object v6, v2, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v4

    .line 6291
    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 6293
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 6297
    :cond_2f
    if-gez v3, :cond_32

    .line 6298
    return-object v1

    .line 6303
    :cond_32
    add-int/lit8 v3, v3, -0x1

    .line 6304
    add-int/lit8 v4, v4, -0x1

    .line 6305
    if-ltz v3, :cond_48

    if-ltz v4, :cond_48

    iget-object v5, v0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    iget-object v6, v2, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v4

    .line 6306
    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 6311
    :cond_48
    if-ltz v3, :cond_4d

    if-ltz v4, :cond_4d

    .line 6312
    return-object v1

    .line 6316
    :cond_4d
    return-object v0

    .line 6284
    .end local v0    # "descendantSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .end local v2    # "ancestorSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .end local v3    # "descendantIndex":I
    .end local v4    # "ancestorIndex":I
    :cond_4e
    return-object v1
.end method

.method private greylist-max-o hasCertificateInternal(Landroid/content/pm/Signature;I)Z
    .registers 7
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "flags"    # I

    .line 6504
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 6505
    return v1

    .line 6509
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 6513
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2f

    .line 6514
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 6515
    if-eqz p2, :cond_2b

    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 6516
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_2c

    .line 6517
    :cond_2b
    return v2

    .line 6513
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 6525
    .end local v0    # "i":I
    :cond_2f
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-ne v0, v2, :cond_3f

    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v1, v2

    :cond_3f
    return v1
.end method

.method private greylist-max-o hasSha256CertificateInternal([BI)Z
    .registers 8
    .param p1, "sha256Certificate"    # [B
    .param p2, "flags"    # I

    .line 6589
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 6590
    return v1

    .line 6592
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    .line 6596
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_37

    .line 6597
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 6598
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 6597
    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v3

    .line 6599
    .local v3, "digest":[B
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 6600
    if-eqz p2, :cond_33

    iget-object v4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    .line 6601
    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_34

    .line 6602
    :cond_33
    return v2

    .line 6596
    .end local v3    # "digest":[B
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 6609
    .end local v0    # "i":I
    :cond_37
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-ne v0, v2, :cond_4d

    .line 6610
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    .line 6611
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v0

    .line 6612
    .local v0, "digest":[B
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 6614
    .end local v0    # "digest":[B
    :cond_4d
    return v1
.end method

.method private blacklist mergeLineageWithAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 12
    .param p1, "otherSigningDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 6113
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 6114
    .local v0, "index":I
    iget-object v2, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 6115
    .local v2, "otherIndex":I
    if-ltz v0, :cond_d4

    if-gez v2, :cond_f

    goto/16 :goto_d4

    .line 6119
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6120
    .local v3, "mergedSignatures":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Signature;>;"
    const/4 v4, 0x0

    .line 6123
    .local v4, "capabilitiesModified":Z
    :goto_15
    if-ltz v0, :cond_35

    iget-object v5, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v0

    iget-object v6, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 6125
    new-instance v5, Landroid/content/pm/Signature;

    iget-object v6, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v7, v0, -0x1

    .end local v0    # "index":I
    .local v7, "index":I
    aget-object v0, v6, v0

    invoke-direct {v5, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    goto :goto_15

    .line 6129
    .end local v7    # "index":I
    .restart local v0    # "index":I
    :cond_35
    if-gez v0, :cond_38

    .line 6130
    return-object p0

    .line 6136
    :cond_38
    :goto_38
    iget-object v5, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v6, v0, -0x1

    .end local v0    # "index":I
    .local v6, "index":I
    aget-object v0, v5, v0

    .line 6137
    .local v0, "signature":Landroid/content/pm/Signature;
    iget-object v5, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v7, v2, -0x1

    .end local v2    # "otherIndex":I
    .local v7, "otherIndex":I
    aget-object v2, v5, v2

    .line 6139
    .local v2, "ancestorSignature":Landroid/content/pm/Signature;
    new-instance v5, Landroid/content/pm/Signature;

    invoke-direct {v5, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    .line 6140
    .local v5, "mergedSignature":Landroid/content/pm/Signature;
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v9

    and-int/2addr v8, v9

    .line 6141
    .local v8, "mergedCapabilities":I
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v9

    if-eq v9, v8, :cond_5c

    .line 6142
    const/4 v4, 0x1

    .line 6143
    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 6145
    :cond_5c
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6146
    .end local v0    # "signature":Landroid/content/pm/Signature;
    .end local v2    # "ancestorSignature":Landroid/content/pm/Signature;
    .end local v5    # "mergedSignature":Landroid/content/pm/Signature;
    .end local v8    # "mergedCapabilities":I
    if-ltz v6, :cond_75

    if-ltz v7, :cond_75

    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v0, v0, v6

    iget-object v2, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto :goto_75

    :cond_72
    move v0, v6

    move v2, v7

    goto :goto_38

    .line 6151
    :cond_75
    :goto_75
    if-ltz v6, :cond_7a

    if-ltz v7, :cond_7a

    .line 6152
    return-object p0

    .line 6157
    :cond_7a
    :goto_7a
    if-ltz v7, :cond_8c

    .line 6158
    new-instance v0, Landroid/content/pm/Signature;

    iget-object v2, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v5, v7, -0x1

    .end local v7    # "otherIndex":I
    .local v5, "otherIndex":I
    aget-object v2, v2, v7

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v5

    goto :goto_7a

    .line 6161
    .end local v5    # "otherIndex":I
    .restart local v7    # "otherIndex":I
    :cond_8c
    :goto_8c
    if-ltz v6, :cond_9e

    .line 6162
    new-instance v0, Landroid/content/pm/Signature;

    iget-object v2, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v5, v6, -0x1

    .end local v6    # "index":I
    .local v5, "index":I
    aget-object v2, v2, v6

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    goto :goto_8c

    .line 6167
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_9e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ne v0, v2, :cond_aa

    if-nez v4, :cond_aa

    .line 6169
    return-object p0

    .line 6173
    :cond_aa
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 6175
    :try_start_ad
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    new-array v1, v1, [Landroid/content/pm/Signature;

    new-instance v2, Landroid/content/pm/Signature;

    iget-object v5, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-direct {v2, v5}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    aput-object v2, v1, v8

    iget v2, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    new-array v5, v8, [Landroid/content/pm/Signature;

    .line 6176
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/Signature;

    invoke-direct {v0, v1, v2, v5}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    :try_end_ca
    .catch Ljava/security/cert/CertificateException; {:try_start_ad .. :try_end_ca} :catch_cb

    .line 6175
    return-object v0

    .line 6177
    :catch_cb
    move-exception v0

    .line 6178
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "PackageParser"

    const-string v2, "Caught an exception creating the merged lineage: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6179
    return-object p0

    .line 6116
    .end local v3    # "mergedSignatures":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Signature;>;"
    .end local v4    # "capabilitiesModified":Z
    .end local v6    # "index":I
    .end local v7    # "otherIndex":I
    .local v0, "index":I
    .local v2, "otherIndex":I
    :cond_d4
    :goto_d4
    return-object p0
.end method


# virtual methods
.method public greylist-max-o checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z
    .registers 6
    .param p1, "oldDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p2, "flags"    # I

    .line 6433
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1e

    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_1e

    .line 6436
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    .line 6440
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    return v0

    .line 6446
    :cond_15
    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0

    .line 6434
    :cond_1e
    :goto_1e
    return v1
.end method

.method public greylist-max-o checkCapability(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "sha256String"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 6544
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 6545
    return v1

    .line 6549
    :cond_6
    if-nez p1, :cond_a

    .line 6550
    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-static {p1, v1}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 6551
    .local v0, "sha256Bytes":[B
    :goto_e
    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasSha256Certificate([BI)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 6552
    const/4 v1, 0x1

    return v1

    .line 6560
    :cond_16
    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 6561
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v1

    .line 6562
    .local v1, "mSignaturesSha256Digests":[Ljava/lang/String;
    nop

    .line 6563
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6564
    .local v2, "mSignaturesSha256Digest":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public greylist-max-o checkCapabilityRecover(Landroid/content/pm/PackageParser$SigningDetails;I)Z
    .registers 8
    .param p1, "oldDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 6456
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_42

    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne p0, v0, :cond_a

    goto :goto_42

    .line 6459
    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_39

    .line 6462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v0, v3, :cond_38

    .line 6463
    iget-object v3, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    iget-object v4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Landroid/content/pm/Signature;->areEffectiveMatch(Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 6466
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    if-ne v3, p2, :cond_35

    .line 6467
    return v2

    .line 6462
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 6473
    .end local v0    # "i":I
    :cond_38
    return v1

    .line 6471
    :cond_39
    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areEffectiveArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    return v0

    .line 6457
    :cond_42
    :goto_42
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 6624
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 6665
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 6666
    :cond_4
    instance-of v1, p1, Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 6668
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/content/pm/PackageParser$SigningDetails;

    .line 6670
    .local v1, "that":Landroid/content/pm/PackageParser$SigningDetails;
    iget v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    iget v4, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    if-eq v3, v4, :cond_14

    return v2

    .line 6671
    :cond_14
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v3

    if-nez v3, :cond_1f

    return v2

    .line 6672
    :cond_1f
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    if-eqz v3, :cond_2e

    .line 6673
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 6674
    return v2

    .line 6676
    :cond_2e
    iget-object v3, v1, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    if-eqz v3, :cond_33

    .line 6677
    return v2

    .line 6682
    :cond_33
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 6683
    return v2

    .line 6686
    :cond_3e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    iget-object v4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-ge v3, v4, :cond_5a

    .line 6687
    iget-object v4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    iget-object v5, v1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    .line 6688
    invoke-virtual {v5}, Landroid/content/pm/Signature;->getFlags()I

    move-result v5

    if-eq v4, v5, :cond_57

    .line 6689
    return v2

    .line 6686
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 6692
    .end local v3    # "i":I
    :cond_5a
    return v0
.end method

.method public greylist-max-o hasAncestor(Landroid/content/pm/PackageParser$SigningDetails;)Z
    .registers 7
    .param p1, "oldDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 6359
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_30

    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_30

    .line 6362
    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 6365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2f

    .line 6366
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    iget-object v4, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 6367
    return v2

    .line 6365
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 6371
    .end local v0    # "i":I
    :cond_2f
    return v1

    .line 6360
    :cond_30
    :goto_30
    return v1
.end method

.method public greylist-max-o hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z
    .registers 5
    .param p1, "oldDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 6337
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1e

    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_1e

    .line 6340
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    .line 6344
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    return v0

    .line 6349
    :cond_15
    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v0

    return v0

    .line 6338
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

    .line 6220
    .local p1, "certDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_71

    if-eqz p1, :cond_71

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_71

    .line 6224
    :cond_e
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3a

    .line 6228
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v0, v3, :cond_1e

    .line 6229
    return v1

    .line 6231
    :cond_1e
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    move v4, v1

    :goto_22
    if-ge v4, v3, :cond_39

    aget-object v5, v0, v4

    .line 6232
    .local v5, "signature":Landroid/content/pm/Signature;
    nop

    .line 6233
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    .line 6232
    invoke-static {v6}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v6

    .line 6234
    .local v6, "signatureDigest":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 6235
    return v1

    .line 6231
    .end local v5    # "signature":Landroid/content/pm/Signature;
    .end local v6    # "signatureDigest":Ljava/lang/String;
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 6238
    :cond_39
    return v2

    .line 6241
    :cond_3a
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    .line 6242
    .local v0, "signatureDigest":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 6243
    return v2

    .line 6245
    :cond_4d
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 6248
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_54
    iget-object v4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_70

    .line 6249
    iget-object v4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    .line 6250
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    .line 6249
    invoke-static {v4}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    .line 6251
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 6252
    return v2

    .line 6248
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 6256
    .end local v3    # "i":I
    :cond_70
    return v1

    .line 6221
    .end local v0    # "signatureDigest":Ljava/lang/String;
    :cond_71
    :goto_71
    return v1
.end method

.method public greylist-max-o hasCertificate(Landroid/content/pm/Signature;)Z
    .registers 3
    .param p1, "signature"    # Landroid/content/pm/Signature;

    .line 6483
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasCertificate(Landroid/content/pm/Signature;I)Z
    .registers 4
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "flags"    # I

    .line 6494
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasCertificate([B)Z
    .registers 4
    .param p1, "certificate"    # [B

    .line 6499
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, p1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 6500
    .local v0, "signature":Landroid/content/pm/Signature;
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v1

    return v1
.end method

.method public blacklist hasCommonAncestor(Landroid/content/pm/PackageParser$SigningDetails;)Z
    .registers 3
    .param p1, "otherSigningDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 6195
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6198
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    return v0

    .line 6200
    :cond_b
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_16

    .line 6201
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    return v0

    .line 6206
    :cond_16
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->getDescendantOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public blacklist hasCommonSignerWithCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z
    .registers 8
    .param p1, "otherDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p2, "flags"    # I

    .line 6387
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_6b

    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_6b

    .line 6392
    :cond_a
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_66

    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-le v0, v2, :cond_16

    goto :goto_66

    .line 6397
    :cond_16
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6398
    .local v0, "otherSignatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 6399
    iget-object v3, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_34

    .line 6401
    :cond_2b
    iget-object v3, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6405
    :goto_34
    iget-object v3, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 6406
    return v2

    .line 6408
    :cond_3f
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 6411
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_46
    iget-object v4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_65

    .line 6412
    iget-object v4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 6414
    iget-object v4, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_62

    .line 6415
    return v2

    .line 6411
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 6420
    .end local v3    # "i":I
    :cond_65
    return v1

    .line 6393
    .end local v0    # "otherSignatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    :cond_66
    :goto_66
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    return v0

    .line 6388
    :cond_6b
    :goto_6b
    return v1
.end method

.method public greylist-max-o hasPastSigningCertificates()Z
    .registers 2

    .line 6326
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public greylist-max-o hasSha256Certificate([B)Z
    .registers 3
    .param p1, "sha256Certificate"    # [B

    .line 6573
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/PackageParser$SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasSha256Certificate([BI)Z
    .registers 4
    .param p1, "sha256Certificate"    # [B
    .param p2, "flags"    # I

    .line 6585
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasSignatures()Z
    .registers 2

    .line 6321
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

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

    .line 6697
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 6698
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    add-int/2addr v1, v2

    .line 6699
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    if-eqz v2, :cond_18

    iget-object v2, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->hashCode()I

    move-result v2

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    add-int/2addr v0, v2

    .line 6700
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6701
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist mergeLineageWith(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 4
    .param p1, "otherSigningDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 6090
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_17

    .line 6092
    nop

    .line 6091
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6092
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, p1

    goto :goto_16

    :cond_15
    move-object v0, p0

    .line 6091
    :goto_16
    return-object v0

    .line 6094
    :cond_17
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 6095
    return-object p0

    .line 6099
    :cond_1e
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->getDescendantOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    .line 6100
    .local v0, "descendantSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    if-nez v0, :cond_25

    .line 6101
    return-object p0

    .line 6103
    :cond_25
    if-ne v0, p0, :cond_2c

    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    goto :goto_30

    .line 6104
    :cond_2c
    invoke-direct {p1, p0}, Landroid/content/pm/PackageParser$SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    .line 6103
    :goto_30
    return-object v1
.end method

.method public greylist-max-o signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z
    .registers 4
    .param p1, "other"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 6619
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6629
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 6630
    .local v0, "isUnknown":Z
    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6631
    if-eqz v0, :cond_d

    .line 6632
    return-void

    .line 6634
    :cond_d
    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 6635
    iget v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6636
    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 6637
    iget-object v1, p0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 6638
    return-void
.end method
