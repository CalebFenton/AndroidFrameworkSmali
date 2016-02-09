.class public final Lorg/apache/harmony/security/x509/PolicyConstraints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "PolicyConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/PolicyConstraints$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final inhibitPolicyMapping:Ljava/math/BigInteger;

.field private final requireExplicitPolicy:Ljava/math/BigInteger;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 107
    new-instance v0, Lorg/apache/harmony/security/x509/PolicyConstraints$1;

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@7
    .line 108
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@9
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@c
    move-result-object v3

    #@d
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@10
    aput-object v2, v1, v4

    #@12
    .line 109
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@14
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@1b
    aput-object v2, v1, v5

    #@1d
    .line 107
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyConstraints$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@20
    sput-object v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@22
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "requireExplicitPolicy"    # Ljava/math/BigInteger;
    .param p2, "inhibitPolicyMapping"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    #@3
    .line 66
    iput-object p1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    #@5
    .line 67
    iput-object p2, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    #@7
    .line 65
    return-void
.end method

.method private constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0
    .param p1, "requireExplicitPolicy"    # Ljava/math/BigInteger;
    .param p2, "inhibitPolicyMapping"    # Ljava/math/BigInteger;
    .param p3, "encoding"    # [B

    #@0
    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@3
    .line 80
    iput-object p3, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    #@5
    .line 78
    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLorg/apache/harmony/security/x509/PolicyConstraints;)V
    .locals 0
    .param p1, "requireExplicitPolicy"    # Ljava/math/BigInteger;
    .param p2, "inhibitPolicyMapping"    # Ljava/math/BigInteger;
    .param p3, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@3
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    #@3
    .line 72
    sget-object v1, Lorg/apache/harmony/security/x509/PolicyConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@5
    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lorg/apache/harmony/security/x509/PolicyConstraints;

    #@b
    .line 73
    .local v0, "pc":Lorg/apache/harmony/security/x509/PolicyConstraints;
    iget-object v1, v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    #@d
    iput-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    #@f
    .line 74
    iget-object v1, v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    #@11
    iput-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    #@13
    .line 70
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0xa

    #@2
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "PolicyConstraints: [\n"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "  requireExplicitPolicy: "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 98
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "  inhibitPolicyMapping: "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    iget-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    .line 101
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    const-string/jumbo v1, "]\n"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 93
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 88
    sget-object v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    #@c
    .line 90
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    #@e
    return-object v0
.end method
