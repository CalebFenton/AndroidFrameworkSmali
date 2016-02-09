.class final Lorg/apache/harmony/security/x509/GeneralName$2;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "GeneralName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 682
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 691
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 703
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    #@2
    packed-switch v2, :pswitch_data_0

    #@5
    .line 735
    new-instance v2, Ljava/io/IOException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "GeneralName: unknown tag: "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 705
    :pswitch_0
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@23
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@25
    check-cast v2, Lorg/apache/harmony/security/x509/OtherName;

    #@27
    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/OtherName;)V

    #@2a
    .line 737
    .local v0, "result":Lorg/apache/harmony/security/x509/GeneralName;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->-set0(Lorg/apache/harmony/security/x509/GeneralName;[B)[B

    #@31
    .line 738
    return-object v0

    #@32
    .line 709
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_1
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@34
    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    #@36
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@38
    check-cast v2, Ljava/lang/String;

    #@3a
    invoke-direct {v0, v3, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    #@3d
    .line 710
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    #@3e
    .line 712
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_2
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@40
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@42
    check-cast v2, Lorg/apache/harmony/security/x509/ORAddress;

    #@44
    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/ORAddress;)V

    #@47
    .line 713
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    #@48
    .line 715
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_3
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@4a
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@4c
    check-cast v2, Lorg/apache/harmony/security/x501/Name;

    #@4e
    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x501/Name;)V

    #@51
    .line 716
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    #@52
    .line 718
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_4
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@54
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@56
    check-cast v2, Lorg/apache/harmony/security/x509/EDIPartyName;

    #@58
    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(Lorg/apache/harmony/security/x509/EDIPartyName;)V

    #@5b
    .line 719
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    #@5c
    .line 721
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_5
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@5e
    check-cast v1, Ljava/lang/String;

    #@60
    .line 722
    .local v1, "uri":Ljava/lang/String;
    const-string/jumbo v2, ":"

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@66
    move-result v2

    #@67
    const/4 v3, -0x1

    #@68
    if-ne v2, v3, :cond_0

    #@6a
    .line 723
    new-instance v2, Ljava/io/IOException;

    #@6c
    new-instance v3, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v4, "GeneralName: scheme is missing in URI: "

    #@74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@83
    throw v2

    #@84
    .line 725
    :cond_0
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@86
    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    #@88
    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    #@8b
    .line 726
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    #@8c
    .line 728
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v1    # "uri":Ljava/lang/String;
    :pswitch_6
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@8e
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@90
    check-cast v2, [B

    #@92
    invoke-direct {v0, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>([B)V

    #@95
    .line 729
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    #@96
    .line 731
    .end local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    :pswitch_7
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@98
    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    #@9a
    .line 732
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    #@9c
    check-cast v2, [I

    #@9e
    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    .line 731
    invoke-direct {v0, v3, v2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    #@a5
    .line 733
    .restart local v0    # "result":Lorg/apache/harmony/security/x509/GeneralName;
    goto :goto_0

    #@a6
    .line 703
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 698
    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/harmony/security/x509/GeneralName;->-get1(Lorg/apache/harmony/security/x509/GeneralName;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 694
    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/harmony/security/x509/GeneralName;->-get0(Lorg/apache/harmony/security/x509/GeneralName;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
