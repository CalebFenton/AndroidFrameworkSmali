.class public final Lorg/apache/harmony/security/x509/AccessDescription;
.super Ljava/lang/Object;
.source "AccessDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/AccessDescription$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

.field private final accessMethod:Ljava/lang/String;

.field private encoding:[B


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/AccessDescription;)Lorg/apache/harmony/security/x509/GeneralName;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/AccessDescription;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 78
    new-instance v0, Lorg/apache/harmony/security/x509/AccessDescription$1;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 79
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    aput-object v2, v1, v3

    #@c
    .line 80
    sget-object v2, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@e
    const/4 v3, 0x1

    #@f
    aput-object v2, v1, v3

    #@11
    .line 78
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/AccessDescription$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@14
    sput-object v0, Lorg/apache/harmony/security/x509/AccessDescription;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@16
    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;[B)V
    .locals 0
    .param p1, "accessMethod"    # Ljava/lang/String;
    .param p2, "accessLocation"    # Lorg/apache/harmony/security/x509/GeneralName;
    .param p3, "encoding"    # [B

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput-object p1, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    #@5
    .line 50
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    #@7
    .line 51
    iput-object p3, p0, Lorg/apache/harmony/security/x509/AccessDescription;->encoding:[B

    #@9
    .line 48
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;[BLorg/apache/harmony/security/x509/AccessDescription;)V
    .locals 0
    .param p1, "accessMethod"    # Ljava/lang/String;
    .param p2, "accessLocation"    # Lorg/apache/harmony/security/x509/GeneralName;
    .param p3, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/AccessDescription;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;[B)V

    #@3
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 59
    sget-object v0, Lorg/apache/harmony/security/x509/AccessDescription;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->encoding:[B

    #@c
    .line 61
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AccessDescription;->encoding:[B

    #@e
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 66
    .local v0, "res":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\n-- AccessDescription:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 67
    const-string/jumbo v1, "\naccessMethod:  "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 68
    iget-object v1, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 69
    const-string/jumbo v1, "\naccessLocation:  "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 70
    iget-object v1, p0, Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    .line 71
    const-string/jumbo v1, "\n-- AccessDescription END\n"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method
