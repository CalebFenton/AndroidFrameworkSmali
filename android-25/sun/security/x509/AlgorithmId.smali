.class public Lsun/security/x509/AlgorithmId;
.super Ljava/lang/Object;
.source "AlgorithmId.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lsun/security/util/DerEncoder;


# static fields
.field private static final DH_PKIX_data:[I

.field public static final DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DH_data:[I

.field public static final DH_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DSA_OIW_data:[I

.field public static final DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DSA_PKIX_data:[I

.field public static final DSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final EC_oid:Lsun/security/util/ObjectIdentifier;

.field public static final MD2_oid:Lsun/security/util/ObjectIdentifier;

.field public static final MD5_oid:Lsun/security/util/ObjectIdentifier;

.field private static final RSAEncryption_data:[I

.field public static final RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final RSA_data:[I

.field public static final RSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA256_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA384_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA512_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final dsaWithSHA1_PKIX_data:[I

.field private static initOidTableVersion:I = 0x0

.field private static final md2WithRSAEncryption_data:[I

.field public static final md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final md5WithRSAEncryption_data:[I

.field public static final md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final nameTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final oidTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

.field public static final pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

.field public static final pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

.field public static pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier; = null

.field public static pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier; = null

.field public static final pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

.field private static final serialVersionUID:J = 0x640067c6d62263e5L

.field private static final sha1WithDSA_OIW_data:[I

.field public static final sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha1WithRSAEncryption_OIW_data:[I

.field public static final sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha1WithRSAEncryption_data:[I

.field public static final sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha256WithRSAEncryption_data:[I

.field public static final sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha384WithRSAEncryption_data:[I

.field public static final sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha512WithRSAEncryption_data:[I

.field public static final sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final shaWithDSA_OIW_data:[I

.field public static final shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field public static final specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private algParams:Ljava/security/AlgorithmParameters;

.field private algid:Lsun/security/util/ObjectIdentifier;

.field private constructedFromDer:Z

.field protected params:Lsun/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/16 v1, 0x9

    #@2
    const/16 v5, 0x8

    #@4
    const/4 v4, 0x1

    #@5
    const/4 v3, 0x6

    #@6
    const/4 v2, 0x7

    #@7
    .line 641
    const/4 v0, -0x1

    #@8
    sput v0, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    #@a
    .line 643
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    #@f
    .line 642
    sput-object v0, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    #@11
    .line 645
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    .line 644
    sput-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@18
    .line 658
    new-array v0, v3, [I

    #@1a
    fill-array-data v0, :array_0

    #@1d
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@20
    move-result-object v0

    #@21
    .line 657
    sput-object v0, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    #@23
    .line 665
    new-array v0, v3, [I

    #@25
    fill-array-data v0, :array_1

    #@28
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@2b
    move-result-object v0

    #@2c
    .line 664
    sput-object v0, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    #@2e
    .line 674
    new-array v0, v3, [I

    #@30
    fill-array-data v0, :array_2

    #@33
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@36
    move-result-object v0

    #@37
    .line 673
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    #@39
    .line 677
    new-array v0, v1, [I

    #@3b
    fill-array-data v0, :array_3

    #@3e
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@41
    move-result-object v0

    #@42
    .line 676
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    #@44
    .line 680
    new-array v0, v1, [I

    #@46
    fill-array-data v0, :array_4

    #@49
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@4c
    move-result-object v0

    #@4d
    .line 679
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    #@4f
    .line 683
    new-array v0, v1, [I

    #@51
    fill-array-data v0, :array_5

    #@54
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@57
    move-result-object v0

    #@58
    .line 682
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    #@5a
    .line 688
    new-array v0, v2, [I

    #@5c
    fill-array-data v0, :array_6

    #@5f
    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_data:[I

    #@61
    .line 689
    new-array v0, v3, [I

    #@63
    fill-array-data v0, :array_7

    #@66
    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_data:[I

    #@68
    .line 690
    new-array v0, v3, [I

    #@6a
    fill-array-data v0, :array_8

    #@6d
    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_data:[I

    #@6f
    .line 691
    new-array v0, v3, [I

    #@71
    fill-array-data v0, :array_9

    #@74
    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_PKIX_data:[I

    #@76
    .line 692
    const/4 v0, 0x2

    #@77
    const/4 v1, 0x5

    #@78
    filled-new-array {v0, v1, v5, v4, v4}, [I

    #@7b
    move-result-object v0

    #@7c
    sput-object v0, Lsun/security/x509/AlgorithmId;->RSA_data:[I

    #@7e
    .line 694
    new-array v0, v2, [I

    #@80
    fill-array-data v0, :array_a

    #@83
    .line 693
    sput-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_data:[I

    #@85
    .line 700
    new-array v0, v3, [I

    #@87
    fill-array-data v0, :array_b

    #@8a
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    #@8d
    move-result-object v0

    #@8e
    sput-object v0, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    #@90
    .line 708
    new-array v0, v2, [I

    #@92
    fill-array-data v0, :array_c

    #@95
    .line 707
    sput-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_data:[I

    #@97
    .line 710
    new-array v0, v2, [I

    #@99
    fill-array-data v0, :array_d

    #@9c
    .line 709
    sput-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_data:[I

    #@9e
    .line 712
    new-array v0, v2, [I

    #@a0
    fill-array-data v0, :array_e

    #@a3
    .line 711
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_data:[I

    #@a5
    .line 714
    new-array v0, v3, [I

    #@a7
    fill-array-data v0, :array_f

    #@aa
    .line 713
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_data:[I

    #@ac
    .line 716
    new-array v0, v2, [I

    #@ae
    fill-array-data v0, :array_10

    #@b1
    .line 715
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_data:[I

    #@b3
    .line 718
    new-array v0, v2, [I

    #@b5
    fill-array-data v0, :array_11

    #@b8
    .line 717
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_data:[I

    #@ba
    .line 720
    new-array v0, v2, [I

    #@bc
    fill-array-data v0, :array_12

    #@bf
    .line 719
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_data:[I

    #@c1
    .line 722
    new-array v0, v3, [I

    #@c3
    fill-array-data v0, :array_13

    #@c6
    .line 721
    sput-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_data:[I

    #@c8
    .line 724
    new-array v0, v3, [I

    #@ca
    fill-array-data v0, :array_14

    #@cd
    .line 723
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_data:[I

    #@cf
    .line 726
    new-array v0, v3, [I

    #@d1
    fill-array-data v0, :array_15

    #@d4
    .line 725
    sput-object v0, Lsun/security/x509/AlgorithmId;->dsaWithSHA1_PKIX_data:[I

    #@d6
    .line 740
    new-array v0, v3, [I

    #@d8
    fill-array-data v0, :array_16

    #@db
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    #@de
    move-result-object v0

    #@df
    .line 739
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@e1
    .line 742
    new-array v0, v2, [I

    #@e3
    fill-array-data v0, :array_17

    #@e6
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    #@e9
    move-result-object v0

    #@ea
    .line 741
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@ec
    .line 744
    new-array v0, v2, [I

    #@ee
    fill-array-data v0, :array_18

    #@f1
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    #@f4
    move-result-object v0

    #@f5
    .line 743
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@f7
    .line 746
    new-array v0, v2, [I

    #@f9
    fill-array-data v0, :array_19

    #@fc
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    #@ff
    move-result-object v0

    #@100
    .line 745
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@102
    .line 748
    new-array v0, v2, [I

    #@104
    fill-array-data v0, :array_1a

    #@107
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    #@10a
    move-result-object v0

    #@10b
    .line 747
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@10d
    .line 750
    new-array v0, v3, [I

    #@10f
    fill-array-data v0, :array_1b

    #@112
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    #@115
    move-result-object v0

    #@116
    .line 749
    sput-object v0, Lsun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@118
    .line 757
    new-array v0, v2, [I

    #@11a
    fill-array-data v0, :array_1c

    #@11d
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@120
    move-result-object v0

    #@121
    .line 756
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

    #@123
    .line 759
    new-array v0, v2, [I

    #@125
    fill-array-data v0, :array_1d

    #@128
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@12b
    move-result-object v0

    #@12c
    .line 758
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    #@12e
    .line 761
    new-array v0, v2, [I

    #@130
    fill-array-data v0, :array_1e

    #@133
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@136
    move-result-object v0

    #@137
    .line 760
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

    #@139
    .line 763
    new-array v0, v2, [I

    #@13b
    fill-array-data v0, :array_1f

    #@13e
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@141
    move-result-object v0

    #@142
    .line 762
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    #@144
    .line 765
    new-array v0, v5, [I

    #@146
    fill-array-data v0, :array_20

    #@149
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@14c
    move-result-object v0

    #@14d
    .line 764
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier;

    #@14f
    .line 767
    new-array v0, v5, [I

    #@151
    fill-array-data v0, :array_21

    #@154
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@157
    move-result-object v0

    #@158
    .line 766
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier;

    #@15a
    .line 784
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_data:[I

    #@15c
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@15f
    move-result-object v0

    #@160
    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    #@162
    .line 791
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_data:[I

    #@164
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@167
    move-result-object v0

    #@168
    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

    #@16a
    .line 801
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_data:[I

    #@16c
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@16f
    move-result-object v0

    #@170
    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    #@172
    .line 810
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_PKIX_data:[I

    #@174
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@177
    move-result-object v0

    #@178
    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    #@17a
    .line 818
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSA_data:[I

    #@17c
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@17f
    move-result-object v0

    #@180
    sput-object v0, Lsun/security/x509/AlgorithmId;->RSA_oid:Lsun/security/util/ObjectIdentifier;

    #@182
    .line 825
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_data:[I

    #@184
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@187
    move-result-object v0

    #@188
    sput-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@18a
    .line 834
    sget-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_data:[I

    #@18c
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@18f
    move-result-object v0

    #@190
    .line 833
    sput-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@192
    .line 842
    sget-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_data:[I

    #@194
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@197
    move-result-object v0

    #@198
    .line 841
    sput-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@19a
    .line 850
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_data:[I

    #@19c
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@19f
    move-result-object v0

    #@1a0
    .line 849
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@1a2
    .line 858
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_data:[I

    #@1a4
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@1a7
    move-result-object v0

    #@1a8
    .line 857
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

    #@1aa
    .line 866
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_data:[I

    #@1ac
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@1af
    move-result-object v0

    #@1b0
    .line 865
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@1b2
    .line 874
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_data:[I

    #@1b4
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@1b7
    move-result-object v0

    #@1b8
    .line 873
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@1ba
    .line 882
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_data:[I

    #@1bc
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@1bf
    move-result-object v0

    #@1c0
    .line 881
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@1c2
    .line 890
    sget-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_data:[I

    #@1c4
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@1c7
    move-result-object v0

    #@1c8
    sput-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    #@1ca
    .line 897
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_data:[I

    #@1cc
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@1cf
    move-result-object v0

    #@1d0
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    #@1d2
    .line 904
    sget-object v0, Lsun/security/x509/AlgorithmId;->dsaWithSHA1_PKIX_data:[I

    #@1d4
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@1d7
    move-result-object v0

    #@1d8
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@1da
    .line 906
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@1dc
    sget-object v1, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    #@1de
    const-string/jumbo v2, "MD5"

    #@1e1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e4
    .line 907
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@1e6
    sget-object v1, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    #@1e8
    const-string/jumbo v2, "MD2"

    #@1eb
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ee
    .line 908
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@1f0
    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    #@1f2
    const-string/jumbo v2, "SHA"

    #@1f5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f8
    .line 909
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@1fa
    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    #@1fc
    const-string/jumbo v2, "SHA256"

    #@1ff
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@202
    .line 910
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@204
    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    #@206
    const-string/jumbo v2, "SHA384"

    #@209
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20c
    .line 911
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@20e
    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    #@210
    const-string/jumbo v2, "SHA512"

    #@213
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@216
    .line 912
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@218
    sget-object v1, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@21a
    const-string/jumbo v2, "RSA"

    #@21d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@220
    .line 913
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@222
    sget-object v1, Lsun/security/x509/AlgorithmId;->RSA_oid:Lsun/security/util/ObjectIdentifier;

    #@224
    const-string/jumbo v2, "RSA"

    #@227
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22a
    .line 914
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@22c
    sget-object v1, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    #@22e
    const-string/jumbo v2, "Diffie-Hellman"

    #@231
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@234
    .line 915
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@236
    sget-object v1, Lsun/security/x509/AlgorithmId;->DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

    #@238
    const-string/jumbo v2, "Diffie-Hellman"

    #@23b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23e
    .line 916
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@240
    sget-object v1, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    #@242
    const-string/jumbo v2, "DSA"

    #@245
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@248
    .line 917
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@24a
    sget-object v1, Lsun/security/x509/AlgorithmId;->DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    #@24c
    const-string/jumbo v2, "DSA"

    #@24f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@252
    .line 918
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@254
    sget-object v1, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    #@256
    const-string/jumbo v2, "EC"

    #@259
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25c
    .line 919
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@25e
    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@260
    const-string/jumbo v2, "SHA1withECDSA"

    #@263
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@266
    .line 920
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@268
    sget-object v1, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@26a
    const-string/jumbo v2, "SHA224withECDSA"

    #@26d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@270
    .line 921
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@272
    sget-object v1, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@274
    const-string/jumbo v2, "SHA256withECDSA"

    #@277
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27a
    .line 922
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@27c
    sget-object v1, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@27e
    const-string/jumbo v2, "SHA384withECDSA"

    #@281
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@284
    .line 923
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@286
    sget-object v1, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@288
    const-string/jumbo v2, "SHA512withECDSA"

    #@28b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28e
    .line 924
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@290
    sget-object v1, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@292
    const-string/jumbo v2, "MD5withRSA"

    #@295
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@298
    .line 925
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@29a
    sget-object v1, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@29c
    const-string/jumbo v2, "MD2withRSA"

    #@29f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a2
    .line 926
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@2a4
    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@2a6
    const-string/jumbo v2, "SHA1withDSA"

    #@2a9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ac
    .line 927
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@2ae
    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    #@2b0
    const-string/jumbo v2, "SHA1withDSA"

    #@2b3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b6
    .line 928
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@2b8
    sget-object v1, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    #@2ba
    const-string/jumbo v2, "SHA1withDSA"

    #@2bd
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c0
    .line 929
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@2c2
    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@2c4
    const-string/jumbo v2, "SHA1withRSA"

    #@2c7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ca
    .line 930
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@2cc
    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

    #@2ce
    const-string/jumbo v2, "SHA1withRSA"

    #@2d1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d4
    .line 931
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@2d6
    sget-object v1, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@2d8
    const-string/jumbo v2, "SHA256withRSA"

    #@2db
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2de
    .line 932
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@2e0
    sget-object v1, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@2e2
    const-string/jumbo v2, "SHA384withRSA"

    #@2e5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e8
    .line 933
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@2ea
    sget-object v1, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@2ec
    const-string/jumbo v2, "SHA512withRSA"

    #@2ef
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f2
    .line 934
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@2f4
    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

    #@2f6
    const-string/jumbo v2, "PBEWithMD5AndDES"

    #@2f9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2fc
    .line 935
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@2fe
    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    #@300
    const-string/jumbo v2, "PBEWithMD5AndRC2"

    #@303
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@306
    .line 936
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@308
    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

    #@30a
    const-string/jumbo v2, "PBEWithSHA1AndDES"

    #@30d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@310
    .line 937
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@312
    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    #@314
    const-string/jumbo v2, "PBEWithSHA1AndRC2"

    #@317
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31a
    .line 938
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@31c
    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier;

    #@31e
    const-string/jumbo v2, "PBEWithSHA1AndDESede"

    #@321
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@324
    .line 939
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@326
    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier;

    #@328
    const-string/jumbo v2, "PBEWithSHA1AndRC2_40"

    #@32b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32e
    .line 59
    return-void

    #@32f
    .line 658
    nop

    #@330
    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x2
    .end array-data

    #@340
    .line 665
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x5
    .end array-data

    #@350
    .line 674
    :array_2
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1a
    .end array-data

    #@360
    .line 677
    :array_3
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

    #@376
    .line 680
    :array_4
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

    #@38c
    .line 683
    :array_5
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

    #@3a2
    .line 688
    :array_6
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x3
        0x1
    .end array-data

    #@3b4
    .line 689
    :array_7
    .array-data 4
        0x1
        0x2
        0x348
        0x273e
        0x2
        0x1
    .end array-data

    #@3c4
    .line 690
    :array_8
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xc
    .end array-data

    #@3d4
    .line 691
    :array_9
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x1
    .end array-data

    #@3e4
    .line 694
    :array_a
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x1
    .end array-data

    #@3f6
    .line 700
    :array_b
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x2
        0x1
    .end array-data

    #@406
    .line 708
    :array_c
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x2
    .end array-data

    #@418
    .line 710
    :array_d
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x4
    .end array-data

    #@42a
    .line 712
    :array_e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x5
    .end array-data

    #@43c
    .line 714
    :array_f
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1d
    .end array-data

    #@44c
    .line 716
    :array_10
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xb
    .end array-data

    #@45e
    .line 718
    :array_11
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xc
    .end array-data

    #@470
    .line 720
    :array_12
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xd
    .end array-data

    #@482
    .line 722
    :array_13
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xd
    .end array-data

    #@492
    .line 724
    :array_14
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1b
    .end array-data

    #@4a2
    .line 726
    :array_15
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x3
    .end array-data

    #@4b2
    .line 740
    :array_16
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x1
    .end array-data

    #@4c2
    .line 742
    :array_17
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x1
    .end array-data

    #@4d4
    .line 744
    :array_18
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x2
    .end array-data

    #@4e6
    .line 746
    :array_19
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x3
    .end array-data

    #@4f8
    .line 748
    :array_1a
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x4
    .end array-data

    #@50a
    .line 750
    :array_1b
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
    .end array-data

    #@51a
    .line 757
    :array_1c
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x3
    .end array-data

    #@52c
    .line 759
    :array_1d
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x6
    .end array-data

    #@53e
    .line 761
    :array_1e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xa
    .end array-data

    #@550
    .line 763
    :array_1f
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xb
    .end array-data

    #@562
    .line 765
    :array_20
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

    #@576
    .line 767
    :array_21
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

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    #@6
    .line 87
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;)V
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    #@6
    .line 95
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@8
    .line 94
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "algparams"    # Ljava/security/AlgorithmParameters;

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    #@6
    .line 105
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@8
    .line 106
    iput-object p2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    #@a
    .line 107
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    #@d
    .line 104
    return-void
.end method

.method private constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "params"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    #@6
    .line 112
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@8
    .line 113
    iput-object p2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@a
    .line 114
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 115
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->decodeParams()V

    #@11
    .line 111
    :cond_0
    return-void
.end method

.method private static algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 468
    const/16 v0, 0x2e

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_1

    #@9
    .line 469
    const-string/jumbo v0, "OID."

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 470
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    #@14
    const-string/jumbo v1, "OID."

    #@17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@22
    return-object v0

    #@23
    .line 472
    :cond_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    #@25
    invoke-direct {v0, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@28
    return-object v0

    #@29
    .line 477
    :cond_1
    const-string/jumbo v0, "MD5"

    #@2c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_2

    #@32
    .line 478
    sget-object v0, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    #@34
    return-object v0

    #@35
    .line 480
    :cond_2
    const-string/jumbo v0, "MD2"

    #@38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_3

    #@3e
    .line 481
    sget-object v0, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    #@40
    return-object v0

    #@41
    .line 483
    :cond_3
    const-string/jumbo v0, "SHA"

    #@44
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@47
    move-result v0

    #@48
    if-nez v0, :cond_4

    #@4a
    const-string/jumbo v0, "SHA1"

    #@4d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@50
    move-result v0

    #@51
    if-nez v0, :cond_4

    #@53
    .line 484
    const-string/jumbo v0, "SHA-1"

    #@56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@59
    move-result v0

    #@5a
    .line 483
    if-eqz v0, :cond_5

    #@5c
    .line 485
    :cond_4
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    #@5e
    return-object v0

    #@5f
    .line 487
    :cond_5
    const-string/jumbo v0, "SHA-256"

    #@62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@65
    move-result v0

    #@66
    if-nez v0, :cond_6

    #@68
    .line 488
    const-string/jumbo v0, "SHA256"

    #@6b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6e
    move-result v0

    #@6f
    .line 487
    if-eqz v0, :cond_7

    #@71
    .line 489
    :cond_6
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    #@73
    return-object v0

    #@74
    .line 491
    :cond_7
    const-string/jumbo v0, "SHA-384"

    #@77
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7a
    move-result v0

    #@7b
    if-nez v0, :cond_8

    #@7d
    .line 492
    const-string/jumbo v0, "SHA384"

    #@80
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@83
    move-result v0

    #@84
    .line 491
    if-eqz v0, :cond_9

    #@86
    .line 493
    :cond_8
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    #@88
    return-object v0

    #@89
    .line 495
    :cond_9
    const-string/jumbo v0, "SHA-512"

    #@8c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8f
    move-result v0

    #@90
    if-nez v0, :cond_a

    #@92
    .line 496
    const-string/jumbo v0, "SHA512"

    #@95
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@98
    move-result v0

    #@99
    .line 495
    if-eqz v0, :cond_b

    #@9b
    .line 497
    :cond_a
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    #@9d
    return-object v0

    #@9e
    .line 502
    :cond_b
    const-string/jumbo v0, "RSA"

    #@a1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a4
    move-result v0

    #@a5
    if-eqz v0, :cond_c

    #@a7
    .line 503
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@a9
    return-object v0

    #@aa
    .line 505
    :cond_c
    const-string/jumbo v0, "Diffie-Hellman"

    #@ad
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b0
    move-result v0

    #@b1
    if-nez v0, :cond_d

    #@b3
    .line 506
    const-string/jumbo v0, "DH"

    #@b6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b9
    move-result v0

    #@ba
    .line 505
    if-eqz v0, :cond_e

    #@bc
    .line 507
    :cond_d
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    #@be
    return-object v0

    #@bf
    .line 509
    :cond_e
    const-string/jumbo v0, "DSA"

    #@c2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c5
    move-result v0

    #@c6
    if-eqz v0, :cond_f

    #@c8
    .line 510
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    #@ca
    return-object v0

    #@cb
    .line 512
    :cond_f
    const-string/jumbo v0, "EC"

    #@ce
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d1
    move-result v0

    #@d2
    if-eqz v0, :cond_10

    #@d4
    .line 513
    sget-object v0, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    #@d6
    return-object v0

    #@d7
    .line 517
    :cond_10
    const-string/jumbo v0, "MD5withRSA"

    #@da
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@dd
    move-result v0

    #@de
    if-nez v0, :cond_11

    #@e0
    .line 518
    const-string/jumbo v0, "MD5/RSA"

    #@e3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e6
    move-result v0

    #@e7
    .line 517
    if-eqz v0, :cond_12

    #@e9
    .line 519
    :cond_11
    sget-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@eb
    return-object v0

    #@ec
    .line 521
    :cond_12
    const-string/jumbo v0, "MD2withRSA"

    #@ef
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f2
    move-result v0

    #@f3
    if-nez v0, :cond_13

    #@f5
    .line 522
    const-string/jumbo v0, "MD2/RSA"

    #@f8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@fb
    move-result v0

    #@fc
    .line 521
    if-eqz v0, :cond_14

    #@fe
    .line 523
    :cond_13
    sget-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@100
    return-object v0

    #@101
    .line 525
    :cond_14
    const-string/jumbo v0, "SHAwithDSA"

    #@104
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@107
    move-result v0

    #@108
    if-nez v0, :cond_15

    #@10a
    .line 526
    const-string/jumbo v0, "SHA1withDSA"

    #@10d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@110
    move-result v0

    #@111
    .line 525
    if-nez v0, :cond_15

    #@113
    .line 527
    const-string/jumbo v0, "SHA/DSA"

    #@116
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@119
    move-result v0

    #@11a
    .line 525
    if-nez v0, :cond_15

    #@11c
    .line 528
    const-string/jumbo v0, "SHA1/DSA"

    #@11f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@122
    move-result v0

    #@123
    .line 525
    if-nez v0, :cond_15

    #@125
    .line 529
    const-string/jumbo v0, "DSAWithSHA1"

    #@128
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12b
    move-result v0

    #@12c
    .line 525
    if-nez v0, :cond_15

    #@12e
    .line 530
    const-string/jumbo v0, "DSS"

    #@131
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@134
    move-result v0

    #@135
    .line 525
    if-nez v0, :cond_15

    #@137
    .line 531
    const-string/jumbo v0, "SHA-1/DSA"

    #@13a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13d
    move-result v0

    #@13e
    .line 525
    if-eqz v0, :cond_16

    #@140
    .line 532
    :cond_15
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@142
    return-object v0

    #@143
    .line 534
    :cond_16
    const-string/jumbo v0, "SHA1WithRSA"

    #@146
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@149
    move-result v0

    #@14a
    if-nez v0, :cond_17

    #@14c
    .line 535
    const-string/jumbo v0, "SHA1/RSA"

    #@14f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@152
    move-result v0

    #@153
    .line 534
    if-eqz v0, :cond_18

    #@155
    .line 536
    :cond_17
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    #@157
    return-object v0

    #@158
    .line 538
    :cond_18
    const-string/jumbo v0, "SHA1withECDSA"

    #@15b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15e
    move-result v0

    #@15f
    if-nez v0, :cond_19

    #@161
    .line 539
    const-string/jumbo v0, "ECDSA"

    #@164
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@167
    move-result v0

    #@168
    .line 538
    if-eqz v0, :cond_1a

    #@16a
    .line 540
    :cond_19
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@16c
    return-object v0

    #@16d
    .line 542
    :cond_1a
    const-string/jumbo v0, "SHA224withECDSA"

    #@170
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@173
    move-result v0

    #@174
    if-eqz v0, :cond_1b

    #@176
    .line 543
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@178
    return-object v0

    #@179
    .line 545
    :cond_1b
    const-string/jumbo v0, "SHA256withECDSA"

    #@17c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17f
    move-result v0

    #@180
    if-eqz v0, :cond_1c

    #@182
    .line 546
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@184
    return-object v0

    #@185
    .line 548
    :cond_1c
    const-string/jumbo v0, "SHA384withECDSA"

    #@188
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18b
    move-result v0

    #@18c
    if-eqz v0, :cond_1d

    #@18e
    .line 549
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@190
    return-object v0

    #@191
    .line 551
    :cond_1d
    const-string/jumbo v0, "SHA512withECDSA"

    #@194
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@197
    move-result v0

    #@198
    if-eqz v0, :cond_1e

    #@19a
    .line 552
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@19c
    return-object v0

    #@19d
    .line 557
    :cond_1e
    sget-object v1, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    #@19f
    monitor-enter v1

    #@1a0
    .line 558
    :try_start_0
    invoke-static {}, Lsun/security/x509/AlgorithmId;->reinitializeMappingTableLocked()V

    #@1a3
    .line 559
    sget-object v0, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    #@1a5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1a7
    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1aa
    move-result-object v2

    #@1ab
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1ae
    move-result-object v0

    #@1af
    check-cast v0, Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b1
    monitor-exit v1

    #@1b2
    return-object v0

    #@1b3
    .line 557
    :catchall_0
    move-exception v0

    #@1b4
    monitor-exit v1

    #@1b5
    throw v0
.end method

.method public static get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    .locals 5
    .param p0, "algname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 417
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    .line 423
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v1, :cond_0

    #@6
    .line 424
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    #@8
    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "unrecognized algorithm name: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 424
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 418
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v0

    #@21
    .line 419
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    #@23
    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "Invalid ObjectIdentifier "

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 419
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 427
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    new-instance v2, Lsun/security/x509/AlgorithmId;

    #@3d
    invoke-direct {v2, v1}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    #@40
    return-object v2
.end method

.method public static get(Ljava/security/AlgorithmParameters;)Lsun/security/x509/AlgorithmId;
    .locals 6
    .param p0, "algparams"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 442
    .local v0, "algname":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v2

    #@8
    .line 447
    .local v2, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v2, :cond_0

    #@a
    .line 448
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@c
    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "unrecognized algorithm name: "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    .line 448
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@23
    throw v3

    #@24
    .line 443
    .end local v2    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v1

    #@25
    .line 444
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@27
    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "Invalid ObjectIdentifier "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    .line 444
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v3

    #@3f
    .line 451
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v2    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    new-instance v3, Lsun/security/x509/AlgorithmId;

    #@41
    invoke-direct {v3, v2, p0}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    #@44
    return-object v3
.end method

.method public static getAlgorithmId(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    .locals 1
    .param p0, "algname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 403
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getDigAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "signatureAlgorithm"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 983
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    .line 984
    const-string/jumbo v1, "WITH"

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    .line 985
    .local v0, "with":I
    if-lez v0, :cond_0

    #@10
    .line 986
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 988
    :cond_0
    const/4 v1, 0x0

    #@16
    return-object v1
.end method

.method public static getEncAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "signatureAlgorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 961
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    .line 962
    const-string/jumbo v3, "WITH"

    #@9
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    .line 963
    .local v2, "with":I
    const/4 v1, 0x0

    #@e
    .line 964
    .local v1, "keyAlgorithm":Ljava/lang/String;
    if-lez v2, :cond_0

    #@10
    .line 965
    const-string/jumbo v3, "AND"

    #@13
    add-int/lit8 v4, v2, 0x4

    #@15
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@18
    move-result v0

    #@19
    .line 966
    .local v0, "and":I
    if-lez v0, :cond_1

    #@1b
    .line 967
    add-int/lit8 v3, v2, 0x4

    #@1d
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 971
    .local v1, "keyAlgorithm":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "ECDSA"

    #@24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_0

    #@2a
    .line 972
    const-string/jumbo v1, "EC"

    #@2d
    .line 975
    .end local v0    # "and":I
    .end local v1    # "keyAlgorithm":Ljava/lang/String;
    :cond_0
    return-object v1

    #@2e
    .line 969
    .restart local v0    # "and":I
    .local v1, "keyAlgorithm":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v2, 0x4

    #@30
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .local v1, "keyAlgorithm":Ljava/lang/String;
    goto :goto_0
.end method

.method public static makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "digAlg"    # Ljava/lang/String;
    .param p1, "encAlg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 947
    const-string/jumbo v0, "-"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    .line 948
    const-string/jumbo v0, "SHA"

    #@13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    const-string/jumbo p0, "SHA1"

    #@1c
    .line 950
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1e
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@21
    move-result-object p1

    #@22
    .line 951
    const-string/jumbo v0, "EC"

    #@25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    const-string/jumbo p1, "ECDSA"

    #@2e
    .line 953
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string/jumbo v1, "with"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    return-object v0
.end method

.method private static varargs oid([I)Lsun/security/util/ObjectIdentifier;
    .locals 1
    .param p0, "values"    # [I

    #@0
    .prologue
    .line 638
    invoke-static {p0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;
    .locals 5
    .param p0, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 362
    iget-byte v3, p0, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v4, 0x30

    #@4
    if-eq v3, v4, :cond_0

    #@6
    .line 363
    new-instance v3, Ljava/io/IOException;

    #@8
    const-string/jumbo v4, "algid parse error, not a sequence"

    #@b
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 371
    :cond_0
    invoke-virtual {p0}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    #@12
    move-result-object v1

    #@13
    .line 373
    .local v1, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    #@16
    move-result-object v0

    #@17
    .line 374
    .local v0, "algid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@1a
    move-result v3

    #@1b
    if-nez v3, :cond_2

    #@1d
    .line 375
    const/4 v2, 0x0

    #@1e
    .line 389
    :cond_1
    new-instance v3, Lsun/security/x509/AlgorithmId;

    #@20
    invoke-direct {v3, v0, v2}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@23
    return-object v3

    #@24
    .line 377
    :cond_2
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@27
    move-result-object v2

    #@28
    .line 378
    .local v2, "params":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    #@2a
    const/4 v4, 0x5

    #@2b
    if-ne v3, v4, :cond_4

    #@2d
    .line 379
    invoke-virtual {v2}, Lsun/security/util/DerValue;->length()I

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_3

    #@33
    .line 380
    new-instance v3, Ljava/io/IOException;

    #@35
    const-string/jumbo v4, "invalid NULL"

    #@38
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v3

    #@3c
    .line 382
    :cond_3
    const/4 v2, 0x0

    #@3d
    .line 384
    .end local v2    # "params":Lsun/security/util/DerValue;
    :cond_4
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_1

    #@43
    .line 385
    new-instance v3, Ljava/io/IOException;

    #@45
    const-string/jumbo v4, "Invalid AlgorithmIdentifier: extra data"

    #@48
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v3
.end method

.method private static reinitializeMappingTableLocked()V
    .locals 16

    #@0
    .prologue
    .line 566
    invoke-static {}, Ljava/security/Security;->getVersion()I

    #@3
    move-result v1

    #@4
    .line 567
    .local v1, "currentVersion":I
    sget v14, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    #@6
    if-eq v14, v1, :cond_7

    #@8
    .line 568
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@b
    move-result-object v9

    #@c
    .line 569
    .local v9, "provs":[Ljava/security/Provider;
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    array-length v14, v9

    #@e
    if-ge v4, v14, :cond_6

    #@10
    .line 570
    aget-object v14, v9, v4

    #@12
    invoke-virtual {v14}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    #@15
    move-result-object v3

    #@16
    .line 571
    .local v3, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@19
    move-result v14

    #@1a
    .line 570
    if-eqz v14, :cond_1

    #@1c
    .line 572
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    .line 573
    .local v0, "alias":Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@24
    invoke-virtual {v0, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@27
    move-result-object v13

    #@28
    .line 575
    .local v13, "upperCaseAlias":Ljava/lang/String;
    const-string/jumbo v14, "ALG.ALIAS"

    #@2b
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2e
    move-result v14

    #@2f
    if-eqz v14, :cond_0

    #@31
    .line 576
    const-string/jumbo v14, "OID."

    #@34
    const/4 v15, 0x0

    #@35
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@38
    move-result v5

    #@39
    .local v5, "index":I
    const/4 v14, -0x1

    #@3a
    if-eq v5, v14, :cond_4

    #@3c
    .line 577
    const-string/jumbo v14, "OID."

    #@3f
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@42
    move-result v14

    #@43
    add-int/2addr v5, v14

    #@44
    .line 578
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@47
    move-result v14

    #@48
    if-ne v5, v14, :cond_2

    #@4a
    .line 569
    .end local v0    # "alias":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v13    # "upperCaseAlias":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 582
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v5    # "index":I
    .restart local v13    # "upperCaseAlias":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@50
    move-result-object v8

    #@51
    .line 583
    .local v8, "oidString":Ljava/lang/String;
    aget-object v14, v9, v4

    #@53
    invoke-virtual {v14, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@56
    move-result-object v11

    #@57
    .line 584
    .local v11, "stdAlgName":Ljava/lang/String;
    if-eqz v11, :cond_0

    #@59
    .line 585
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@5b
    invoke-virtual {v11, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5e
    move-result-object v11

    #@5f
    .line 587
    const/4 v6, 0x0

    #@60
    .line 589
    .local v6, "oid":Lsun/security/util/ObjectIdentifier;
    :try_start_0
    new-instance v7, Lsun/security/util/ObjectIdentifier;

    #@62
    invoke-direct {v7, v8}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@65
    .end local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    .local v7, "oid":Lsun/security/util/ObjectIdentifier;
    move-object v6, v7

    #@66
    .line 594
    .end local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    :goto_2
    if-eqz v6, :cond_0

    #@68
    .line 595
    sget-object v14, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    #@6a
    invoke-interface {v14, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@6d
    move-result v14

    #@6e
    if-nez v14, :cond_3

    #@70
    .line 596
    sget-object v14, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    #@72
    invoke-interface {v14, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 598
    :cond_3
    sget-object v14, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@77
    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@7a
    move-result v14

    #@7b
    if-nez v14, :cond_0

    #@7d
    .line 599
    sget-object v14, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@7f
    invoke-interface {v14, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    goto :goto_1

    #@83
    .line 606
    .end local v8    # "oidString":Ljava/lang/String;
    .end local v11    # "stdAlgName":Ljava/lang/String;
    :cond_4
    const/16 v14, 0x2e

    #@85
    const-string/jumbo v15, "ALG.ALIAS."

    #@88
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@8b
    move-result v15

    #@8c
    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(II)I

    #@8f
    move-result v10

    #@90
    .line 607
    .local v10, "sep":I
    add-int/lit8 v14, v10, 0x1

    #@92
    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@95
    move-result-object v12

    #@96
    .line 609
    .local v12, "suffix":Ljava/lang/String;
    const/4 v6, 0x0

    #@97
    .line 611
    .restart local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    :try_start_1
    new-instance v7, Lsun/security/util/ObjectIdentifier;

    #@99
    invoke-direct {v7, v12}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@9c
    .end local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    .restart local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    move-object v6, v7

    #@9d
    .line 616
    .end local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    :goto_3
    if-eqz v6, :cond_0

    #@9f
    .line 617
    aget-object v14, v9, v4

    #@a1
    invoke-virtual {v14, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@a4
    move-result-object v11

    #@a5
    .line 618
    .restart local v11    # "stdAlgName":Ljava/lang/String;
    if-eqz v11, :cond_0

    #@a7
    .line 619
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@a9
    invoke-virtual {v11, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@ac
    move-result-object v11

    #@ad
    .line 620
    sget-object v14, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    #@af
    invoke-interface {v14, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@b2
    move-result v14

    #@b3
    if-nez v14, :cond_5

    #@b5
    .line 621
    sget-object v14, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    #@b7
    invoke-interface {v14, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ba
    .line 623
    :cond_5
    sget-object v14, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@bc
    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@bf
    move-result v14

    #@c0
    if-nez v14, :cond_0

    #@c2
    .line 624
    sget-object v14, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@c4
    invoke-interface {v14, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c7
    goto/16 :goto_1

    #@c9
    .line 633
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .end local v5    # "index":I
    .end local v10    # "sep":I
    .end local v11    # "stdAlgName":Ljava/lang/String;
    .end local v12    # "suffix":Ljava/lang/String;
    .end local v13    # "upperCaseAlias":Ljava/lang/String;
    :cond_6
    sput v1, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    #@cb
    .line 563
    .end local v4    # "i":I
    .end local v9    # "provs":[Ljava/security/Provider;
    :cond_7
    return-void

    #@cc
    .line 612
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v3    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    .restart local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    .restart local v9    # "provs":[Ljava/security/Provider;
    .restart local v10    # "sep":I
    .restart local v12    # "suffix":Ljava/lang/String;
    .restart local v13    # "upperCaseAlias":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@cd
    .local v2, "e":Ljava/io/IOException;
    goto :goto_3

    #@ce
    .line 590
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "sep":I
    .end local v12    # "suffix":Ljava/lang/String;
    .restart local v8    # "oidString":Ljava/lang/String;
    .restart local v11    # "stdAlgName":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@cf
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method


# virtual methods
.method protected decodeParams()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 122
    .local v0, "algidString":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@9
    move-result-object v3

    #@a
    iput-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 140
    :goto_0
    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    #@e
    iget-object v4, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@10
    invoke-virtual {v4}, Lsun/security/util/DerValue;->toByteArray()[B

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init([B)V

    #@17
    .line 119
    return-void

    #@18
    .line 123
    :catch_0
    move-exception v1

    #@19
    .line 129
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    sget-object v3, Lsun/security/ec/ECKeyFactory;->ecInternalProvider:Ljava/security/Provider;

    #@1b
    .line 128
    invoke-static {v0, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    #@1e
    move-result-object v3

    #@1f
    iput-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    #@21
    goto :goto_0

    #@22
    .line 130
    :catch_1
    move-exception v2

    #@23
    .line 135
    .local v2, "ee":Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    #@24
    iput-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    #@26
    .line 136
    return-void
.end method

.method public derEncode(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 160
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@3
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@6
    .line 161
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@8
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@b
    .line 163
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@d
    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@10
    .line 165
    iget-boolean v2, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    #@12
    if-nez v2, :cond_0

    #@14
    .line 166
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 167
    new-instance v2, Lsun/security/util/DerValue;

    #@1a
    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    #@1c
    invoke-virtual {v3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    #@23
    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@25
    .line 172
    :cond_0
    :goto_0
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@27
    if-nez v2, :cond_2

    #@29
    .line 198
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->putNull()V

    #@2c
    .line 202
    :goto_1
    const/16 v2, 0x30

    #@2e
    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@31
    .line 203
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@34
    move-result-object v2

    #@35
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@38
    .line 159
    return-void

    #@39
    .line 169
    :cond_1
    iput-object v3, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@3b
    goto :goto_0

    #@3c
    .line 200
    :cond_2
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@3e
    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    #@41
    goto :goto_1
.end method

.method public final encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    #@3
    .line 146
    return-void
.end method

.method public final encode()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 212
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    #@8
    .line 213
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 295
    if-ne p0, p1, :cond_0

    #@2
    .line 296
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 298
    :cond_0
    instance-of v0, p1, Lsun/security/x509/AlgorithmId;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 299
    check-cast p1, Lsun/security/x509/AlgorithmId;

    #@a
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 300
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lsun/security/util/ObjectIdentifier;

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 301
    check-cast p1, Lsun/security/util/ObjectIdentifier;

    #@15
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@18
    move-result v0

    #@19
    return v0

    #@1a
    .line 303
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    #@1b
    return v0
.end method

.method public final equals(Lsun/security/util/ObjectIdentifier;)Z
    .locals 1
    .param p1, "id"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {v0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Lsun/security/x509/AlgorithmId;)Z
    .locals 3
    .param p1, "other"    # Lsun/security/x509/AlgorithmId;

    #@0
    .prologue
    .line 283
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@2
    if-nez v1, :cond_1

    #@4
    iget-object v1, p1, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@6
    if-nez v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 284
    :goto_0
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@b
    iget-object v2, p1, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@d
    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_2

    #@13
    :goto_1
    return v0

    #@14
    .line 283
    :cond_0
    const/4 v0, 0x0

    #@15
    .local v0, "paramsEqual":Z
    goto :goto_0

    #@16
    .end local v0    # "paramsEqual":Z
    :cond_1
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@18
    iget-object v2, p1, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@1a
    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->equals(Lsun/security/util/DerValue;)Z

    #@1d
    move-result v0

    #@1e
    .local v0, "paramsEqual":Z
    goto :goto_0

    #@1f
    .line 284
    .end local v0    # "paramsEqual":Z
    :cond_2
    const/4 v0, 0x0

    #@20
    goto :goto_1
.end method

.method public getEncodedParams()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 274
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@8
    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 236
    sget-object v4, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@2
    iget-object v5, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@4
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    .line 237
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@c
    .line 238
    return-object v0

    #@d
    .line 240
    :cond_0
    iget-object v4, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@f
    if-eqz v4, :cond_2

    #@11
    iget-object v4, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@13
    sget-object v5, Lsun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    #@15
    invoke-virtual {v4, v5}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 243
    :try_start_0
    new-instance v4, Lsun/security/util/DerValue;

    #@1d
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B

    #@20
    move-result-object v5

    #@21
    invoke-direct {v4, v5}, Lsun/security/util/DerValue;-><init>([B)V

    #@24
    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@27
    move-result-object v2

    #@28
    .line 244
    .local v2, "paramsId":Lsun/security/x509/AlgorithmId;
    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 245
    .local v3, "paramsName":Ljava/lang/String;
    const-string/jumbo v4, "SHA"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 246
    const-string/jumbo v3, "SHA1"

    #@38
    .line 248
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    const-string/jumbo v5, "withECDSA"

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    move-result-object v0

    #@4c
    .line 255
    .end local v2    # "paramsId":Lsun/security/x509/AlgorithmId;
    .end local v3    # "paramsName":Ljava/lang/String;
    :cond_2
    :goto_0
    sget-object v5, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    #@4e
    monitor-enter v5

    #@4f
    .line 256
    :try_start_1
    invoke-static {}, Lsun/security/x509/AlgorithmId;->reinitializeMappingTableLocked()V

    #@52
    .line 257
    sget-object v4, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    #@54
    iget-object v6, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@56
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    move-result-object v0

    #@5a
    .end local v0    # "algName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    .restart local v0    # "algName":Ljava/lang/String;
    monitor-exit v5

    #@5d
    .line 260
    if-nez v0, :cond_3

    #@5f
    iget-object v4, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@61
    invoke-virtual {v4}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    .end local v0    # "algName":Ljava/lang/String;
    :cond_3
    return-object v0

    #@66
    .line 255
    :catchall_0
    move-exception v4

    #@67
    monitor-exit v5

    #@68
    throw v4

    #@69
    .line 249
    .restart local v0    # "algName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@6a
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public final getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 322
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    #@7
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 323
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method protected paramsToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 333
    const-string/jumbo v0, ""

    #@7
    return-object v0

    #@8
    .line 334
    :cond_0
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 335
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    #@e
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 337
    :cond_1
    const-string/jumbo v0, ", params unparsed"

    #@16
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method
