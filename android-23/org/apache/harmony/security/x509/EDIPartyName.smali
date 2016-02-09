.class public final Lorg/apache/harmony/security/x509/EDIPartyName;
.super Ljava/lang/Object;
.source "EDIPartyName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/EDIPartyName$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final nameAssigner:Ljava/lang/String;

.field private final partyName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/EDIPartyName;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->nameAssigner:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/EDIPartyName;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->partyName:Ljava/lang/String;

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
    .line 81
    new-instance v0, Lorg/apache/harmony/security/x509/EDIPartyName$1;

    #@4
    .line 82
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@7
    .line 83
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@9
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@b
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@e
    aput-object v2, v1, v4

    #@10
    .line 84
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@12
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@14
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@17
    aput-object v2, v1, v5

    #@19
    .line 81
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/EDIPartyName$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@1c
    sput-object v0, Lorg/apache/harmony/security/x509/EDIPartyName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1e
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "nameAssigner"    # Ljava/lang/String;
    .param p2, "partyName"    # Ljava/lang/String;
    .param p3, "encoding"    # [B

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->nameAssigner:Ljava/lang/String;

    #@5
    .line 64
    iput-object p2, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->partyName:Ljava/lang/String;

    #@7
    .line 65
    iput-object p3, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->encoding:[B

    #@9
    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLorg/apache/harmony/security/x509/EDIPartyName;)V
    .locals 0
    .param p1, "nameAssigner"    # Ljava/lang/String;
    .param p2, "partyName"    # Ljava/lang/String;
    .param p3, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/EDIPartyName;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    #@3
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 73
    sget-object v0, Lorg/apache/harmony/security/x509/EDIPartyName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->encoding:[B

    #@c
    .line 75
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/EDIPartyName;->encoding:[B

    #@e
    return-object v0
.end method
