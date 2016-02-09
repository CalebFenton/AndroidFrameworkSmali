.class public final Lorg/apache/harmony/security/x509/ReasonCode;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "ReasonCode.java"


# static fields
.field public static final AA_COMPROMISE:B = 0xat

.field public static final AFFILIATION_CHANGED:B = 0x3t

.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

.field public static final CA_COMPROMISE:B = 0x2t

.field public static final CERTIFICATE_HOLD:B = 0x6t

.field public static final CESSATION_OF_OPERATION:B = 0x5t

.field public static final KEY_COMPROMISE:B = 0x1t

.field public static final PRIVILEGE_WITHDRAWN:B = 0x9t

.field public static final REMOVE_FROM_CRL:B = 0x8t

.field public static final SUPERSEDED:B = 0x4t

.field public static final UNSPECIFIED:B


# instance fields
.field private final code:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 123
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Enumerated;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Enumerated;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lorg/apache/harmony/security/x509/ReasonCode;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    .line 46
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
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    #@3
    .line 65
    sget-object v0, Lorg/apache/harmony/security/x509/ReasonCode;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [B

    #@b
    const/4 v1, 0x0

    #@c
    aget-byte v0, v0, v1

    #@e
    iput-byte v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    #@10
    .line 63
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "Reason Code: [ "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 85
    iget-byte v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    #@c
    packed-switch v0, :pswitch_data_0

    #@f
    .line 117
    :goto_0
    :pswitch_0
    const-string/jumbo v0, " ]\n"

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 83
    return-void

    #@16
    .line 87
    :pswitch_1
    const-string/jumbo v0, "unspecified"

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    goto :goto_0

    #@1d
    .line 90
    :pswitch_2
    const-string/jumbo v0, "keyCompromise"

    #@20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    goto :goto_0

    #@24
    .line 93
    :pswitch_3
    const-string/jumbo v0, "cACompromise"

    #@27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    goto :goto_0

    #@2b
    .line 96
    :pswitch_4
    const-string/jumbo v0, "affiliationChanged"

    #@2e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    goto :goto_0

    #@32
    .line 99
    :pswitch_5
    const-string/jumbo v0, "superseded"

    #@35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    goto :goto_0

    #@39
    .line 102
    :pswitch_6
    const-string/jumbo v0, "cessationOfOperation"

    #@3c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    goto :goto_0

    #@40
    .line 105
    :pswitch_7
    const-string/jumbo v0, "certificateHold"

    #@43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    goto :goto_0

    #@47
    .line 108
    :pswitch_8
    const-string/jumbo v0, "removeFromCRL"

    #@4a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    goto :goto_0

    #@4e
    .line 111
    :pswitch_9
    const-string/jumbo v0, "privilegeWithdrawn"

    #@51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    goto :goto_0

    #@55
    .line 114
    :pswitch_a
    const-string/jumbo v0, "aACompromise"

    #@58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    goto :goto_0

    #@5c
    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public getEncoded()[B
    .locals 4

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 70
    sget-object v0, Lorg/apache/harmony/security/x509/ReasonCode;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    const/4 v1, 0x1

    #@7
    new-array v1, v1, [B

    #@9
    iget-byte v2, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    #@b
    const/4 v3, 0x0

    #@c
    aput-byte v2, v1, v3

    #@e
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->encoding:[B

    #@14
    .line 72
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ReasonCode;->encoding:[B

    #@16
    return-object v0
.end method

.method public getReason()Ljava/security/cert/CRLReason;
    .locals 3

    #@0
    .prologue
    .line 76
    invoke-static {}, Ljava/security/cert/CRLReason;->values()[Ljava/security/cert/CRLReason;

    #@3
    move-result-object v0

    #@4
    .line 77
    .local v0, "values":[Ljava/security/cert/CRLReason;
    iget-byte v1, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    #@6
    if-ltz v1, :cond_0

    #@8
    iget-byte v1, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    #@a
    array-length v2, v0

    #@b
    if-le v1, v2, :cond_1

    #@d
    .line 78
    :cond_0
    const/4 v1, 0x0

    #@e
    return-object v1

    #@f
    .line 80
    :cond_1
    iget-byte v1, p0, Lorg/apache/harmony/security/x509/ReasonCode;->code:B

    #@11
    aget-object v1, v0, v1

    #@13
    return-object v1
.end method
