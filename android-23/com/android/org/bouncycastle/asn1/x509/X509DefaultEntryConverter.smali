.class public Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;
.super Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;
.source "X509DefaultEntryConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getConvertedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v1

    #@c
    const/16 v2, 0x23

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 35
    const/4 v1, 0x1

    #@11
    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;->convertHexEncoded(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 38
    :catch_0
    move-exception v0

    #@17
    .line 39
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "can\'t recode value for oid "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 44
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_1

    #@3b
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v1

    #@3f
    const/16 v2, 0x5c

    #@41
    if-ne v1, v2, :cond_1

    #@43
    .line 46
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@46
    move-result-object p2

    #@47
    .line 48
    :cond_1
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v1

    #@4d
    if-nez v1, :cond_2

    #@4f
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@51
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v1

    #@55
    if-eqz v1, :cond_3

    #@57
    .line 50
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@59
    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    #@5c
    return-object v1

    #@5d
    .line 52
    :cond_3
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5f
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_4

    #@65
    .line 54
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    #@67
    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    #@6a
    return-object v1

    #@6b
    .line 56
    :cond_4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6d
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v1

    #@71
    if-nez v1, :cond_5

    #@73
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@75
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v1

    #@79
    if-nez v1, :cond_5

    #@7b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7d
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v1

    #@81
    if-nez v1, :cond_5

    #@83
    .line 57
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@85
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v1

    #@89
    .line 56
    if-eqz v1, :cond_6

    #@8b
    .line 59
    :cond_5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@8d
    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    #@90
    return-object v1

    #@91
    .line 63
    :cond_6
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    #@93
    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    #@96
    return-object v1
.end method
