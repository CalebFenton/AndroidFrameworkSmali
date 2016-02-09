.class public final Lorg/apache/harmony/security/x509/GeneralSubtree;
.super Ljava/lang/Object;
.source "GeneralSubtree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/GeneralSubtree$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final base:Lorg/apache/harmony/security/x509/GeneralName;

.field private encoding:[B

.field private final maximum:I

.field private final minimum:I


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/GeneralSubtree;)Lorg/apache/harmony/security/x509/GeneralName;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->base:Lorg/apache/harmony/security/x509/GeneralName;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/GeneralSubtree;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/GeneralSubtree;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->minimum:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 99
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralSubtree$1;

    #@4
    const/4 v1, 0x3

    #@5
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@7
    .line 100
    sget-object v2, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@9
    aput-object v2, v1, v4

    #@b
    .line 101
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@d
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@10
    move-result-object v3

    #@11
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@14
    aput-object v2, v1, v5

    #@16
    .line 102
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@18
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@1f
    const/4 v3, 0x2

    #@20
    aput-object v2, v1, v3

    #@22
    .line 99
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralSubtree$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@25
    sput-object v0, Lorg/apache/harmony/security/x509/GeneralSubtree;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@27
    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/GeneralName;II)V
    .locals 0
    .param p1, "base"    # Lorg/apache/harmony/security/x509/GeneralName;
    .param p2, "minimum"    # I
    .param p3, "maximum"    # I

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->base:Lorg/apache/harmony/security/x509/GeneralName;

    #@5
    .line 65
    iput p2, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->minimum:I

    #@7
    .line 66
    iput p3, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I

    #@9
    .line 63
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
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "General Subtree: [\n"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "  base: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->base:Lorg/apache/harmony/security/x509/GeneralName;

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    const-string/jumbo v1, "  minimum: "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->minimum:I

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 90
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I

    #@36
    if-ltz v0, :cond_0

    #@38
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    const-string/jumbo v1, "  maximum: "

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 93
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    const-string/jumbo v1, "]\n"

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 86
    return-void
.end method

.method public getBase()Lorg/apache/harmony/security/x509/GeneralName;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->base:Lorg/apache/harmony/security/x509/GeneralName;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 81
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralSubtree;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->encoding:[B

    #@c
    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtree;->encoding:[B

    #@e
    return-object v0
.end method
