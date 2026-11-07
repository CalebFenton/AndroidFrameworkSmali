.class public Lsun/security/x509/AlgorithmId;
.super Ljava/lang/Object;
.source "AlgorithmId.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lsun/security/util/DerEncoder;


# static fields
.field public static final blacklist AES_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o DH_PKIX_data:[I

.field public static final blacklist DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o DH_data:[I

.field public static final blacklist DH_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o DSA_OIW_data:[I

.field public static final blacklist DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o DSA_PKIX_data:[I

.field public static final greylist DSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist ECDH_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist EC_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist MD2_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist MD5_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o RSAEncryption_data:[I

.field public static final greylist RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o RSA_data:[I

.field public static final blacklist RSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist SHA224_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist SHA256_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist SHA384_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist SHA512_oid:Lsun/security/util/ObjectIdentifier;

.field public static final greylist SHA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o dsaWithSHA1_PKIX_data:[I

.field private static greylist-max-o initOidTableVersion:I = 0x0

.field private static final greylist-max-o md2WithRSAEncryption_data:[I

.field public static final blacklist md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o md5WithRSAEncryption_data:[I

.field public static final blacklist md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o nameTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o oidTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

.field public static blacklist pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier; = null

.field public static blacklist pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier; = null

.field public static final blacklist pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

.field private static final whitelist serialVersionUID:J = 0x640067c6d62263e5L

.field private static final greylist-max-o sha1WithDSA_OIW_data:[I

.field public static final blacklist sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o sha1WithRSAEncryption_OIW_data:[I

.field public static final blacklist sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o sha1WithRSAEncryption_data:[I

.field public static final greylist sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha224WithDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o sha224WithRSAEncryption_data:[I

.field public static final blacklist sha224WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha256WithDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o sha256WithRSAEncryption_data:[I

.field public static final blacklist sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o sha384WithRSAEncryption_data:[I

.field public static final blacklist sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o sha512WithRSAEncryption_data:[I

.field public static final blacklist sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o shaWithDSA_OIW_data:[I

.field public static final blacklist shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private greylist-max-o algParams:Ljava/security/AlgorithmParameters;

.field private greylist-max-o algid:Lsun/security/util/ObjectIdentifier;

.field private greylist-max-o constructedFromDer:Z

.field protected greylist params:Lsun/security/util/DerValue;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 659
    const/4 v0, -0x1

    sput v0, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    .line 660
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    .line 662
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    .line 676
    const/4 v0, 0x6

    new-array v2, v0, [I

    fill-array-data v2, :array_386

    .line 677
    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    .line 683
    new-array v2, v0, [I

    fill-array-data v2, :array_396

    .line 684
    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    .line 692
    new-array v2, v0, [I

    fill-array-data v2, :array_3a6

    .line 693
    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    .line 695
    const/16 v2, 0x9

    new-array v3, v2, [I

    fill-array-data v3, :array_3b6

    .line 696
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/AlgorithmId;->SHA224_oid:Lsun/security/util/ObjectIdentifier;

    .line 698
    new-array v3, v2, [I

    fill-array-data v3, :array_3cc

    .line 699
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    .line 701
    new-array v3, v2, [I

    fill-array-data v3, :array_3e2

    .line 702
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    .line 704
    new-array v3, v2, [I

    fill-array-data v3, :array_3f8

    .line 705
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    .line 710
    const/4 v3, 0x7

    new-array v4, v3, [I

    fill-array-data v4, :array_40e

    sput-object v4, Lsun/security/x509/AlgorithmId;->DH_data:[I

    .line 711
    new-array v4, v0, [I

    fill-array-data v4, :array_420

    sput-object v4, Lsun/security/x509/AlgorithmId;->DH_PKIX_data:[I

    .line 712
    new-array v4, v0, [I

    fill-array-data v4, :array_430

    sput-object v4, Lsun/security/x509/AlgorithmId;->DSA_OIW_data:[I

    .line 713
    new-array v4, v0, [I

    fill-array-data v4, :array_440

    sput-object v4, Lsun/security/x509/AlgorithmId;->DSA_PKIX_data:[I

    .line 714
    const/4 v4, 0x2

    const/4 v5, 0x5

    const/16 v6, 0x8

    filled-new-array {v4, v5, v6, v1, v1}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/AlgorithmId;->RSA_data:[I

    .line 715
    new-array v4, v3, [I

    fill-array-data v4, :array_450

    sput-object v4, Lsun/security/x509/AlgorithmId;->RSAEncryption_data:[I

    .line 722
    new-array v4, v0, [I

    fill-array-data v4, :array_462

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    .line 723
    const/16 v4, 0x84

    const/4 v5, 0x3

    const/16 v7, 0xc

    filled-new-array {v1, v5, v4, v1, v7}, [I

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->ECDH_oid:Lsun/security/util/ObjectIdentifier;

    .line 730
    new-array v1, v6, [I

    fill-array-data v1, :array_472

    .line 731
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->AES_oid:Lsun/security/util/ObjectIdentifier;

    .line 736
    new-array v1, v3, [I

    fill-array-data v1, :array_486

    sput-object v1, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_data:[I

    .line 738
    new-array v1, v3, [I

    fill-array-data v1, :array_498

    sput-object v1, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_data:[I

    .line 740
    new-array v1, v3, [I

    fill-array-data v1, :array_4aa

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_data:[I

    .line 742
    new-array v1, v0, [I

    fill-array-data v1, :array_4bc

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_data:[I

    .line 744
    new-array v1, v3, [I

    fill-array-data v1, :array_4cc

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha224WithRSAEncryption_data:[I

    .line 746
    new-array v1, v3, [I

    fill-array-data v1, :array_4de

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_data:[I

    .line 748
    new-array v1, v3, [I

    fill-array-data v1, :array_4f0

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_data:[I

    .line 750
    new-array v1, v3, [I

    fill-array-data v1, :array_502

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_data:[I

    .line 752
    new-array v1, v0, [I

    fill-array-data v1, :array_514

    sput-object v1, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_data:[I

    .line 754
    new-array v1, v0, [I

    fill-array-data v1, :array_524

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_data:[I

    .line 756
    new-array v1, v0, [I

    fill-array-data v1, :array_534

    sput-object v1, Lsun/security/x509/AlgorithmId;->dsaWithSHA1_PKIX_data:[I

    .line 770
    new-array v1, v2, [I

    fill-array-data v1, :array_544

    .line 771
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha224WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 772
    new-array v1, v2, [I

    fill-array-data v1, :array_55a

    .line 773
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha256WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 775
    new-array v1, v0, [I

    fill-array-data v1, :array_570

    .line 776
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 777
    new-array v1, v3, [I

    fill-array-data v1, :array_580

    .line 778
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 779
    new-array v1, v3, [I

    fill-array-data v1, :array_592

    .line 780
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 781
    new-array v1, v3, [I

    fill-array-data v1, :array_5a4

    .line 782
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 783
    new-array v1, v3, [I

    fill-array-data v1, :array_5b6

    .line 784
    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 785
    new-array v0, v0, [I

    fill-array-data v0, :array_5c8

    .line 786
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 792
    new-array v0, v3, [I

    fill-array-data v0, :array_5d8

    .line 793
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

    .line 794
    new-array v0, v3, [I

    fill-array-data v0, :array_5ea

    .line 795
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    .line 796
    new-array v0, v3, [I

    fill-array-data v0, :array_5fc

    .line 797
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

    .line 798
    new-array v0, v3, [I

    fill-array-data v0, :array_60e

    .line 799
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    .line 800
    new-array v0, v6, [I

    fill-array-data v0, :array_620

    .line 801
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier;

    .line 802
    new-array v0, v6, [I

    fill-array-data v0, :array_634

    .line 803
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier;

    .line 819
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    .line 826
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

    .line 836
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 845
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_PKIX_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 853
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSA_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->RSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 860
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 868
    sget-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_data:[I

    .line 869
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 876
    sget-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_data:[I

    .line 877
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 884
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_data:[I

    .line 885
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 892
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_data:[I

    .line 893
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 900
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha224WithRSAEncryption_data:[I

    .line 901
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha224WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 908
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_data:[I

    .line 909
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 916
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_data:[I

    .line 917
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 924
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_data:[I

    .line 925
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 933
    sget-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 940
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 947
    sget-object v0, Lsun/security/x509/AlgorithmId;->dsaWithSHA1_PKIX_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 951
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "MD2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA224_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA-224"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA-256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA-384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA-512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->RSA_oid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "Diffie-Hellman"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "EC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->ECDH_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "ECDH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->AES_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA1withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA224withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA256withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA384withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA512withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "MD5withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "MD2withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha224WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA224withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha256WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA256withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA1withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA1withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha224WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA224withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA256withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA384withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "SHA512withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "PBEWithMD5AndDES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "PBEWithMD5AndRC2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "PBEWithSHA1AndDES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "PBEWithSHA1AndRC2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "PBEWithSHA1AndDESede"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "PBEWithSHA1AndRC2_40"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    return-void

    nop

    :array_386
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x2
    .end array-data

    :array_396
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x5
    .end array-data

    :array_3a6
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1a
    .end array-data

    :array_3b6
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x4
    .end array-data

    :array_3cc
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x1
    .end array-data

    :array_3e2
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_3f8
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x3
    .end array-data

    :array_40e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x3
        0x1
    .end array-data

    :array_420
    .array-data 4
        0x1
        0x2
        0x348
        0x273e
        0x2
        0x1
    .end array-data

    :array_430
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xc
    .end array-data

    :array_440
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x1
    .end array-data

    :array_450
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x1
    .end array-data

    :array_462
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x2
        0x1
    .end array-data

    :array_472
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x1
    .end array-data

    :array_486
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x2
    .end array-data

    :array_498
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x4
    .end array-data

    :array_4aa
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x5
    .end array-data

    :array_4bc
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1d
    .end array-data

    :array_4cc
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xe
    .end array-data

    :array_4de
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xb
    .end array-data

    :array_4f0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xc
    .end array-data

    :array_502
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xd
    .end array-data

    :array_514
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xd
    .end array-data

    :array_524
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1b
    .end array-data

    :array_534
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x3
    .end array-data

    :array_544
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x3
        0x1
    .end array-data

    :array_55a
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x3
        0x2
    .end array-data

    :array_570
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x1
    .end array-data

    :array_580
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x1
    .end array-data

    :array_592
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x2
    .end array-data

    :array_5a4
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x3
    .end array-data

    :array_5b6
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x4
    .end array-data

    :array_5c8
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
    .end array-data

    :array_5d8
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x3
    .end array-data

    :array_5ea
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x6
    .end array-data

    :array_5fc
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xa
    .end array-data

    :array_60e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xb
    .end array-data

    :array_620
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x3
    .end array-data

    :array_634
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x6
    .end array-data
.end method

.method public constructor greylist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 87
    return-void
.end method

.method public constructor greylist test-api <init>(Lsun/security/util/ObjectIdentifier;)V
    .registers 3
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 95
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 96
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V
    .registers 4
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "algparams"    # Ljava/security/AlgorithmParameters;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 105
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 106
    iput-object p2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 108
    return-void
.end method

.method private constructor greylist-max-o <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .registers 4
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "params"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 112
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 113
    iput-object p2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    .line 114
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-eqz v0, :cond_11

    .line 115
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->decodeParams()V

    .line 117
    :cond_11
    return-void
.end method

.method private static greylist-max-o algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 467
    const-string v0, "OID."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 468
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    const-string v1, "OID."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 470
    :cond_21
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 475
    :cond_27
    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 476
    sget-object v0, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 478
    :cond_32
    const-string v0, "MD2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 479
    sget-object v0, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 481
    :cond_3d
    const-string v0, "SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e1

    const-string v0, "SHA1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e1

    const-string v0, "SHA-1"

    .line 482
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto/16 :goto_1e1

    .line 485
    :cond_57
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1de

    const-string v0, "SHA256"

    .line 486
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    goto/16 :goto_1de

    .line 489
    :cond_69
    const-string v0, "SHA-384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1db

    const-string v0, "SHA384"

    .line 490
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    goto/16 :goto_1db

    .line 493
    :cond_7b
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d8

    const-string v0, "SHA512"

    .line 494
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    goto/16 :goto_1d8

    .line 497
    :cond_8d
    const-string v0, "SHA-224"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d5

    const-string v0, "SHA224"

    .line 498
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    goto/16 :goto_1d5

    .line 503
    :cond_9f
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 504
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 506
    :cond_aa
    const-string v0, "Diffie-Hellman"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d2

    const-string v0, "DH"

    .line 507
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bc

    goto/16 :goto_1d2

    .line 510
    :cond_bc
    const-string v0, "DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 511
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 513
    :cond_c7
    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 514
    sget-object v0, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 516
    :cond_d2
    const-string v0, "ECDH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 517
    sget-object v0, Lsun/security/x509/AlgorithmId;->ECDH_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 521
    :cond_dd
    const-string v0, "AES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 522
    sget-object v0, Lsun/security/x509/AlgorithmId;->AES_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 526
    :cond_e8
    const-string v0, "MD5withRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1cf

    const-string v0, "MD5/RSA"

    .line 527
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fa

    goto/16 :goto_1cf

    .line 530
    :cond_fa
    const-string v0, "MD2withRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1cc

    const-string v0, "MD2/RSA"

    .line 531
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    goto/16 :goto_1cc

    .line 534
    :cond_10c
    const-string v0, "SHAwithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c9

    const-string v0, "SHA1withDSA"

    .line 535
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c9

    const-string v0, "SHA/DSA"

    .line 536
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c9

    const-string v0, "SHA1/DSA"

    .line 537
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c9

    const-string v0, "DSAWithSHA1"

    .line 538
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c9

    const-string v0, "DSS"

    .line 539
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c9

    const-string v0, "SHA-1/DSA"

    .line 540
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_146

    goto/16 :goto_1c9

    .line 543
    :cond_146
    const-string v0, "SHA224WithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_151

    .line 544
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha224WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 546
    :cond_151
    const-string v0, "SHA256WithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 547
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 549
    :cond_15c
    const-string v0, "SHA1WithRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c6

    const-string v0, "SHA1/RSA"

    .line 550
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16d

    goto :goto_1c6

    .line 553
    :cond_16d
    const-string v0, "SHA1withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c3

    const-string v0, "ECDSA"

    .line 554
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17e

    goto :goto_1c3

    .line 557
    :cond_17e
    const-string v0, "SHA224withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 558
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 560
    :cond_189
    const-string v0, "SHA256withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 561
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 563
    :cond_194
    const-string v0, "SHA384withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 564
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 566
    :cond_19f
    const-string v0, "SHA512withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 567
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 573
    :cond_1aa
    sget-object v0, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    monitor-enter v0

    .line 574
    :try_start_1ad
    invoke-static {}, Lsun/security/x509/AlgorithmId;->reinitializeMappingTableLocked()V

    .line 575
    sget-object v1, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/ObjectIdentifier;

    monitor-exit v0

    return-object v1

    .line 576
    :catchall_1c0
    move-exception v1

    monitor-exit v0
    :try_end_1c2
    .catchall {:try_start_1ad .. :try_end_1c2} :catchall_1c0

    throw v1

    .line 555
    :cond_1c3
    :goto_1c3
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 551
    :cond_1c6
    :goto_1c6
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 541
    :cond_1c9
    :goto_1c9
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 532
    :cond_1cc
    :goto_1cc
    sget-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 528
    :cond_1cf
    :goto_1cf
    sget-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 508
    :cond_1d2
    :goto_1d2
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 499
    :cond_1d5
    :goto_1d5
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA224_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 495
    :cond_1d8
    :goto_1d8
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 491
    :cond_1db
    :goto_1db
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 487
    :cond_1de
    :goto_1de
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 483
    :cond_1e1
    :goto_1e1
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public static greylist get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    .registers 5
    .param p0, "algname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 415
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_26

    .line 419
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    nop

    .line 421
    if-eqz v0, :cond_d

    .line 425
    new-instance v1, Lsun/security/x509/AlgorithmId;

    invoke-direct {v1, v0}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    return-object v1

    .line 422
    :cond_d
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognized algorithm name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    .end local v0    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_26
    move-exception v0

    .line 417
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ObjectIdentifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist get(Ljava/security/AlgorithmParameters;)Lsun/security/x509/AlgorithmId;
    .registers 6
    .param p0, "algparams"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "algname":Ljava/lang/String;
    :try_start_4
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_2a

    .line 444
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    nop

    .line 445
    if-eqz v1, :cond_11

    .line 449
    new-instance v2, Lsun/security/x509/AlgorithmId;

    invoke-direct {v2, v1, p0}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    return-object v2

    .line 446
    :cond_11
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unrecognized algorithm name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 441
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_2a
    move-exception v1

    .line 442
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ObjectIdentifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist getAlgorithmId(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    .registers 2
    .param p0, "algname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getDigAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "signatureAlgorithm"    # Ljava/lang/String;

    .line 1033
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1034
    const-string v0, "WITH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1035
    .local v0, "with":I
    if-lez v0, :cond_14

    .line 1036
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1038
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist getEncAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "signatureAlgorithm"    # Ljava/lang/String;

    .line 1011
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1012
    const-string v0, "WITH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1013
    .local v0, "with":I
    const/4 v1, 0x0

    .line 1014
    .local v1, "keyAlgorithm":Ljava/lang/String;
    if-lez v0, :cond_30

    .line 1015
    add-int/lit8 v2, v0, 0x4

    const-string v3, "AND"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1016
    .local v2, "and":I
    if-lez v2, :cond_20

    .line 1017
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    .line 1019
    :cond_20
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1021
    :goto_26
    const-string v3, "ECDSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1022
    const-string v1, "EC"

    .line 1025
    .end local v2    # "and":I
    :cond_30
    return-object v1
.end method

.method public static blacklist makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "digAlg"    # Ljava/lang/String;
    .param p1, "encAlg"    # Ljava/lang/String;

    .line 1000
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1001
    const-string v0, "EC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p1, "ECDSA"

    .line 1003
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "with"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs blacklist oid([I)Lsun/security/util/ObjectIdentifier;
    .registers 2
    .param p0, "values"    # [I

    .line 655
    invoke-static {p0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static greylist parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;
    .registers 6
    .param p0, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_43

    .line 369
    invoke-virtual {p0}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 371
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    .line 372
    .local v1, "algid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_16

    .line 373
    const/4 v2, 0x0

    .local v2, "params":Lsun/security/util/DerValue;
    goto :goto_35

    .line 375
    .end local v2    # "params":Lsun/security/util/DerValue;
    :cond_16
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 376
    .restart local v2    # "params":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2f

    .line 377
    invoke-virtual {v2}, Lsun/security/util/DerValue;->length()I

    move-result v3

    if-nez v3, :cond_27

    .line 380
    const/4 v2, 0x0

    goto :goto_2f

    .line 378
    :cond_27
    new-instance v3, Ljava/io/IOException;

    const-string v4, "invalid NULL"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 382
    :cond_2f
    :goto_2f
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_3b

    .line 387
    :goto_35
    new-instance v3, Lsun/security/x509/AlgorithmId;

    invoke-direct {v3, v1, v2}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    return-object v3

    .line 383
    :cond_3b
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid AlgorithmIdentifier: extra data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    .end local v0    # "in":Lsun/security/util/DerInputStream;
    .end local v1    # "algid":Lsun/security/util/ObjectIdentifier;
    .end local v2    # "params":Lsun/security/util/DerValue;
    :cond_43
    new-instance v0, Ljava/io/IOException;

    const-string v1, "algid parse error, not a sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o reinitializeMappingTableLocked()V
    .registers 12

    .line 582
    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v0

    .line 583
    .local v0, "currentVersion":I
    sget v1, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    if-eq v1, v0, :cond_cd

    .line 584
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    .line 585
    .local v1, "provs":[Ljava/security/Provider;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_cb

    .line 586
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 587
    .local v3, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :goto_16
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 588
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 589
    .local v4, "alias":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 591
    .local v5, "upperCaseAlias":Ljava/lang/String;
    const-string v6, "ALG.ALIAS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 592
    const/4 v6, 0x0

    const-string v7, "OID."

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    move v8, v6

    .local v8, "index":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_80

    .line 593
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v8, v6

    .line 594
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v8, v6, :cond_48

    .line 596
    goto/16 :goto_c7

    .line 598
    :cond_48
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 599
    .local v6, "oidString":Ljava/lang/String;
    aget-object v7, v1, v2

    invoke-virtual {v7, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 600
    .local v7, "stdAlgName":Ljava/lang/String;
    if-eqz v7, :cond_7f

    .line 601
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 603
    const/4 v9, 0x0

    .line 605
    .local v9, "oid":Lsun/security/util/ObjectIdentifier;
    :try_start_5b
    new-instance v10, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v10, v6}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_60} :catch_62

    move-object v9, v10

    .line 608
    goto :goto_63

    .line 606
    :catch_62
    move-exception v10

    .line 610
    :goto_63
    if-eqz v9, :cond_7f

    .line 611
    sget-object v10, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_72

    .line 612
    sget-object v10, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v10, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_72
    sget-object v10, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7f

    .line 615
    sget-object v10, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .end local v6    # "oidString":Ljava/lang/String;
    .end local v7    # "stdAlgName":Ljava/lang/String;
    .end local v9    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_7f
    goto :goto_c5

    .line 622
    :cond_80
    const-string v6, "ALG.ALIAS."

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x2e

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 623
    .local v6, "sep":I
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 625
    .local v7, "suffix":Ljava/lang/String;
    const/4 v9, 0x0

    .line 627
    .restart local v9    # "oid":Lsun/security/util/ObjectIdentifier;
    :try_start_93
    new-instance v10, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v10, v7}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_98} :catch_9a

    move-object v9, v10

    .line 630
    goto :goto_9b

    .line 628
    :catch_9a
    move-exception v10

    .line 632
    :goto_9b
    if-eqz v9, :cond_c5

    .line 633
    aget-object v10, v1, v2

    invoke-virtual {v10, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 634
    .local v10, "stdAlgName":Ljava/lang/String;
    if-eqz v10, :cond_c5

    .line 635
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 636
    sget-object v11, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b8

    .line 637
    sget-object v11, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_b8
    sget-object v11, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c5

    .line 640
    sget-object v11, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "upperCaseAlias":Ljava/lang/String;
    .end local v6    # "sep":I
    .end local v7    # "suffix":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "oid":Lsun/security/util/ObjectIdentifier;
    .end local v10    # "stdAlgName":Ljava/lang/String;
    :cond_c5
    :goto_c5
    goto/16 :goto_16

    .line 585
    .end local v3    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_c7
    :goto_c7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 649
    .end local v2    # "i":I
    :cond_cb
    sput v0, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    .line 652
    .end local v1    # "provs":[Ljava/security/Provider;
    :cond_cd
    return-void
.end method


# virtual methods
.method protected blacklist decodeParams()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "algidString":Ljava/lang/String;
    :try_start_6
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_c} :catch_19

    .line 130
    nop

    .line 133
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v2}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 134
    return-void

    .line 123
    :catch_19
    move-exception v1

    .line 128
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    .line 129
    return-void
.end method

.method public greylist derEncode(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 157
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 159
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 161
    iget-boolean v2, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    if-nez v2, :cond_28

    .line 162
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v2, :cond_25

    .line 163
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {v3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    goto :goto_28

    .line 165
    :cond_25
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    .line 168
    :cond_28
    :goto_28
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v2, :cond_30

    .line 195
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->putNull()V

    goto :goto_35

    .line 197
    :cond_30
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    .line 199
    :goto_35
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 200
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 201
    return-void
.end method

.method public final greylist encode(Lsun/security/util/DerOutputStream;)V
    .registers 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    .line 144
    return-void
.end method

.method public final greylist-max-r encode()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 209
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    .line 210
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 293
    if-ne p0, p1, :cond_4

    .line 294
    const/4 v0, 0x1

    return v0

    .line 296
    :cond_4
    instance-of v0, p1, Lsun/security/x509/AlgorithmId;

    if-eqz v0, :cond_10

    .line 297
    move-object v0, p1

    check-cast v0, Lsun/security/x509/AlgorithmId;

    invoke-virtual {p0, v0}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v0

    return v0

    .line 298
    :cond_10
    instance-of v0, p1, Lsun/security/util/ObjectIdentifier;

    if-eqz v0, :cond_1c

    .line 299
    move-object v0, p1

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    return v0

    .line 301
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist equals(Lsun/security/util/ObjectIdentifier;)Z
    .registers 3
    .param p1, "id"    # Lsun/security/util/ObjectIdentifier;

    .line 310
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist equals(Lsun/security/x509/AlgorithmId;)Z
    .registers 7
    .param p1, "other"    # Lsun/security/x509/AlgorithmId;

    .line 281
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    iget-object v0, p1, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_16

    :cond_c
    move v0, v2

    goto :goto_16

    :cond_e
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    iget-object v3, p1, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->equals(Lsun/security/util/DerValue;)Z

    move-result v0

    .line 282
    .local v0, "paramsEqual":Z
    :goto_16
    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    iget-object v4, p1, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3, v4}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    return v1
.end method

.method public greylist getEncodedParams()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public greylist test-api getName()Ljava/lang/String;
    .registers 5

    .line 235
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 237
    return-object v0

    .line 239
    :cond_d
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 241
    :try_start_1b
    new-instance v1, Lsun/security/util/DerValue;

    .line 242
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    .line 243
    .local v1, "paramsId":Lsun/security/x509/AlgorithmId;
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "paramsName":Ljava/lang/String;
    const-string v3, "EC"

    invoke-static {v2, v3}, Lsun/security/x509/AlgorithmId;->makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_32} :catch_34

    move-object v0, v3

    .line 247
    .end local v1    # "paramsId":Lsun/security/x509/AlgorithmId;
    .end local v2    # "paramsName":Ljava/lang/String;
    goto :goto_35

    .line 245
    :catch_34
    move-exception v1

    .line 252
    :cond_35
    :goto_35
    sget-object v1, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    monitor-enter v1

    .line 253
    :try_start_38
    invoke-static {}, Lsun/security/x509/AlgorithmId;->reinitializeMappingTableLocked()V

    .line 254
    sget-object v2, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 255
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_52

    .line 258
    if-nez v0, :cond_50

    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_51

    :cond_50
    move-object v1, v0

    :goto_51
    return-object v1

    .line 255
    :catchall_52
    move-exception v2

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v2
.end method

.method public final greylist getOID()Lsun/security/util/ObjectIdentifier;
    .registers 2

    .line 221
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public greylist getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 262
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method protected blacklist paramsToString()Ljava/lang/String;
    .registers 2

    .line 330
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v0, :cond_7

    .line 331
    const-string v0, ""

    return-object v0

    .line 332
    :cond_7
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v0, :cond_12

    .line 333
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :cond_12
    const-string v0, ", params unparsed"

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
