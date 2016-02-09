.class public final Lorg/apache/harmony/security/x509/GeneralName;
.super Ljava/lang/Object;
.source "GeneralName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/GeneralName$1;,
        Lorg/apache/harmony/security/x509/GeneralName$2;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

.field public static final DIR_NAME:I = 0x4

.field public static final DNS_NAME:I = 0x2

.field public static final EDIP_NAME:I = 0x5

.field public static final IP_ADDR:I = 0x7

.field private static final NAME_ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

.field public static final OTHER_NAME:I = 0x0

.field public static final REG_ID:I = 0x8

.field public static final RFC822_NAME:I = 0x1

.field public static final UR_ID:I = 0x6

.field public static final X400_ADDR:I = 0x3

.field private static nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private name:Ljava/lang/Object;

.field private name_encoding:[B

.field private tag:I


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/GeneralName;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/GeneralName;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lorg/apache/harmony/security/x509/GeneralName;[B)[B
    .locals 0

    #@0
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 114
    const/16 v0, 0x9

    #@7
    new-array v0, v0, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@9
    sput-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@b
    .line 117
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@d
    sget-object v1, Lorg/apache/harmony/security/x509/OtherName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@f
    aput-object v1, v0, v4

    #@11
    .line 118
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@13
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@15
    aput-object v1, v0, v5

    #@17
    .line 119
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@19
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@1b
    aput-object v1, v0, v6

    #@1d
    .line 120
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@1f
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@21
    const/4 v2, 0x6

    #@22
    aput-object v1, v0, v2

    #@24
    .line 121
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@26
    sget-object v1, Lorg/apache/harmony/security/x509/ORAddress;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@28
    aput-object v1, v0, v7

    #@2a
    .line 122
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2c
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@2e
    aput-object v1, v0, v8

    #@30
    .line 123
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@32
    sget-object v1, Lorg/apache/harmony/security/x509/EDIPartyName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@34
    const/4 v2, 0x5

    #@35
    aput-object v1, v0, v2

    #@37
    .line 124
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@39
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@3c
    move-result-object v1

    #@3d
    const/4 v2, 0x7

    #@3e
    aput-object v1, v0, v2

    #@40
    .line 125
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@42
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@45
    move-result-object v1

    #@46
    const/16 v2, 0x8

    #@48
    aput-object v1, v0, v2

    #@4a
    .line 675
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName$1;

    #@4c
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@4e
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralName$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@51
    sput-object v0, Lorg/apache/harmony/security/x509/GeneralName;->NAME_ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@53
    .line 682
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName$2;

    #@55
    const/16 v1, 0x9

    #@57
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@59
    .line 683
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@5b
    sget-object v3, Lorg/apache/harmony/security/x509/OtherName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@5d
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@60
    aput-object v2, v1, v4

    #@62
    .line 684
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@64
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@66
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@69
    aput-object v2, v1, v5

    #@6b
    .line 685
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@6d
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@6f
    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@72
    aput-object v2, v1, v6

    #@74
    .line 686
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@76
    sget-object v3, Lorg/apache/harmony/security/x509/ORAddress;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@78
    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@7b
    aput-object v2, v1, v7

    #@7d
    .line 687
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@7f
    sget-object v3, Lorg/apache/harmony/security/x509/GeneralName;->NAME_ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@81
    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@84
    aput-object v2, v1, v8

    #@86
    .line 688
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@88
    sget-object v3, Lorg/apache/harmony/security/x509/EDIPartyName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@8a
    const/4 v4, 0x5

    #@8b
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@8e
    const/4 v3, 0x5

    #@8f
    aput-object v2, v1, v3

    #@91
    .line 689
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@93
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@95
    const/4 v4, 0x6

    #@96
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@99
    const/4 v3, 0x6

    #@9a
    aput-object v2, v1, v3

    #@9c
    .line 690
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@9e
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@a1
    move-result-object v3

    #@a2
    const/4 v4, 0x7

    #@a3
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@a6
    const/4 v3, 0x7

    #@a7
    aput-object v2, v1, v3

    #@a9
    .line 691
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@ab
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@ae
    move-result-object v3

    #@af
    const/16 v4, 0x8

    #@b1
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@b4
    const/16 v3, 0x8

    #@b6
    aput-object v2, v1, v3

    #@b8
    .line 682
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralName$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@bb
    sput-object v0, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@bd
    .line 98
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 155
    if-nez p2, :cond_0

    #@5
    .line 156
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "name == null"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 158
    :cond_0
    iput p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@10
    .line 159
    packed-switch p1, :pswitch_data_0

    #@13
    .line 190
    new-instance v0, Ljava/io/IOException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Unknown type: ["

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "]"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 163
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "Unknown string representation for type ["

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    const-string/jumbo v2, "]"

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@54
    throw v0

    #@55
    .line 168
    :pswitch_1
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->checkDNS(Ljava/lang/String;)V

    #@58
    .line 169
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@5a
    .line 154
    :goto_0
    return-void

    #@5b
    .line 174
    :pswitch_2
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->checkURI(Ljava/lang/String;)V

    #@5e
    .line 175
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@60
    goto :goto_0

    #@61
    .line 178
    :pswitch_3
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@63
    goto :goto_0

    #@64
    .line 181
    :pswitch_4
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->oidStrToInts(Ljava/lang/String;)[I

    #@67
    move-result-object v0

    #@68
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@6a
    goto :goto_0

    #@6b
    .line 184
    :pswitch_5
    new-instance v0, Lorg/apache/harmony/security/x501/Name;

    #@6d
    invoke-direct {v0, p2}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    #@70
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@72
    goto :goto_0

    #@73
    .line 187
    :pswitch_6
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->ipStrToBytes(Ljava/lang/String;)[B

    #@76
    move-result-object v0

    #@77
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@79
    goto :goto_0

    #@7a
    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 236
    if-nez p2, :cond_0

    #@6
    .line 237
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "name == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 239
    :cond_0
    if-ltz p1, :cond_1

    #@11
    const/16 v0, 0x8

    #@13
    if-le p1, v0, :cond_2

    #@15
    .line 240
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "GeneralName: unknown tag: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 242
    :cond_2
    iput p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@31
    .line 243
    array-length v0, p2

    #@32
    new-array v0, v0, [B

    #@34
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    #@36
    .line 244
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    #@38
    array-length v1, p2

    #@39
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3c
    .line 245
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@3e
    aget-object v0, v0, p1

    #@40
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    #@42
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@48
    .line 235
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x501/Name;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/harmony/security/x501/Name;

    #@0
    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 205
    const/4 v0, 0x4

    #@4
    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@6
    .line 206
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@8
    .line 204
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/EDIPartyName;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/harmony/security/x509/EDIPartyName;

    #@0
    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 210
    const/4 v0, 0x5

    #@4
    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@6
    .line 211
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@8
    .line 209
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/ORAddress;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/harmony/security/x509/ORAddress;

    #@0
    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 200
    const/4 v0, 0x3

    #@4
    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@6
    .line 201
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@8
    .line 199
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/OtherName;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/harmony/security/x509/OtherName;

    #@0
    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 195
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@6
    .line 196
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@8
    .line 194
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 224
    const/4 v0, 0x7

    #@5
    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@7
    .line 225
    array-length v0, p1

    #@8
    new-array v0, v0, [B

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@c
    .line 226
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@e
    array-length v1, p1

    #@f
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@12
    .line 223
    return-void
.end method

.method public static checkDNS(Ljava/lang/String;)V
    .locals 11
    .param p0, "dns"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x39

    #@2
    const/16 v9, 0x30

    #@4
    const/16 v8, 0x2e

    #@6
    const/16 v7, 0x2d

    #@8
    const/16 v6, 0x2a

    #@a
    .line 562
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@c
    invoke-virtual {p0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 563
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    .line 565
    .local v3, "length":I
    const/4 v1, 0x1

    #@15
    .line 566
    .local v1, "first_letter":Z
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_9

    #@18
    .line 567
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    .line 568
    .local v0, "ch":C
    if-eqz v1, :cond_4

    #@1e
    .line 569
    const/16 v5, 0x7a

    #@20
    if-gt v0, v5, :cond_0

    #@22
    const/16 v5, 0x61

    #@24
    if-ge v0, v5, :cond_2

    #@26
    :cond_0
    if-lt v0, v9, :cond_1

    #@28
    if-le v0, v10, :cond_2

    #@2a
    :cond_1
    if-eq v0, v6, :cond_2

    #@2c
    .line 570
    new-instance v5, Ljava/io/IOException;

    #@2e
    new-instance v6, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v7, "DNS name must start with a letter: "

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@45
    throw v5

    #@46
    .line 572
    :cond_2
    const/4 v1, 0x0

    #@47
    .line 566
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 575
    :cond_4
    const/16 v5, 0x61

    #@4c
    if-lt v0, v5, :cond_5

    #@4e
    const/16 v5, 0x7a

    #@50
    if-le v0, v5, :cond_7

    #@52
    :cond_5
    if-lt v0, v9, :cond_6

    #@54
    if-le v0, v10, :cond_7

    #@56
    .line 576
    :cond_6
    if-eq v0, v7, :cond_7

    #@58
    if-eq v0, v8, :cond_7

    #@5a
    if-eq v0, v6, :cond_7

    #@5c
    .line 577
    new-instance v5, Ljava/io/IOException;

    #@5e
    new-instance v6, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v7, "Incorrect DNS name: "

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@75
    throw v5

    #@76
    .line 579
    :cond_7
    if-ne v0, v8, :cond_3

    #@78
    .line 582
    add-int/lit8 v5, v2, -0x1

    #@7a
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@7d
    move-result v5

    #@7e
    if-ne v5, v7, :cond_8

    #@80
    .line 583
    new-instance v5, Ljava/io/IOException;

    #@82
    new-instance v6, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v7, "Incorrect DNS name: label ends with \'-\': "

    #@8a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v6

    #@8e
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v6

    #@92
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v6

    #@96
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@99
    throw v5

    #@9a
    .line 585
    :cond_8
    const/4 v1, 0x1

    #@9b
    goto :goto_1

    #@9c
    .line 561
    .end local v0    # "ch":C
    :cond_9
    return-void
.end method

.method public static checkURI(Ljava/lang/String;)V
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 596
    :try_start_0
    new-instance v1, Ljava/net/URI;

    #@2
    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@5
    .line 597
    .local v1, "ur":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    if-eqz v2, :cond_0

    #@b
    invoke-virtual {v1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 598
    :cond_0
    new-instance v2, Ljava/io/IOException;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "No scheme or scheme-specific-part in uniformResourceIdentifier: "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 603
    .end local v1    # "ur":Ljava/net/URI;
    :catch_0
    move-exception v0

    #@30
    .line 604
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/io/IOException;

    #@32
    new-instance v3, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v4, "Bad representation of uniformResourceIdentifier: "

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@49
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Ljava/io/IOException;

    #@4f
    throw v2

    #@50
    .line 600
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v1    # "ur":Ljava/net/URI;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    #@53
    move-result v2

    #@54
    if-nez v2, :cond_2

    #@56
    .line 601
    new-instance v2, Ljava/io/IOException;

    #@58
    new-instance v3, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v4, "Relative uniformResourceIdentifier: "

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v2
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    #@70
    .line 594
    :cond_2
    return-void
.end method

.method public static ipBytesToStr([B)Ljava/lang/String;
    .locals 4
    .param p0, "ip"    # [B

    #@0
    .prologue
    .line 665
    const/4 v1, 0x0

    #@1
    :try_start_0
    invoke-static {v1, p0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 666
    :catch_0
    move-exception v0

    #@b
    .line 667
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Unexpected IP address: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method public static ipStrToBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "ip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 652
    invoke-static {p0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 653
    new-instance v0, Ljava/io/IOException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Not an IP address: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 655
    :cond_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public static oidStrToInts(Ljava/lang/String;)[I
    .locals 11
    .param p0, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x2e

    #@2
    .line 613
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    .line 614
    .local v2, "length":I
    add-int/lit8 v8, v2, -0x1

    #@8
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v8

    #@c
    if-ne v8, v10, :cond_0

    #@e
    .line 615
    new-instance v8, Ljava/io/IOException;

    #@10
    new-instance v9, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v10, "Bad OID: "

    #@18
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v9

    #@1c
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v9

    #@20
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v9

    #@24
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@27
    throw v8

    #@28
    .line 617
    :cond_0
    div-int/lit8 v8, v2, 0x2

    #@2a
    add-int/lit8 v8, v8, 0x1

    #@2c
    new-array v6, v8, [I

    #@2e
    .line 618
    .local v6, "result":[I
    const/4 v3, 0x0

    #@2f
    .line 619
    .local v3, "number":I
    const/4 v1, 0x0

    #@30
    .local v1, "i":I
    move v4, v3

    #@31
    .end local v3    # "number":I
    .local v4, "number":I
    :goto_0
    if-ge v1, v2, :cond_7

    #@33
    .line 620
    const/4 v7, 0x0

    #@34
    .line 621
    .local v7, "value":I
    move v5, v1

    #@35
    .line 622
    .local v5, "pos":I
    :goto_1
    if-ge v1, v2, :cond_1

    #@37
    .line 623
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v0

    #@3b
    .line 624
    .local v0, "ch":C
    const/16 v8, 0x30

    #@3d
    if-lt v0, v8, :cond_1

    #@3f
    const/16 v8, 0x39

    #@41
    if-le v0, v8, :cond_2

    #@43
    .line 629
    .end local v0    # "ch":C
    :cond_1
    if-ne v1, v5, :cond_3

    #@45
    .line 631
    new-instance v8, Ljava/io/IOException;

    #@47
    new-instance v9, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v10, "Bad OID: "

    #@4f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v9

    #@53
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v9

    #@57
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v8

    #@5f
    .line 627
    .restart local v0    # "ch":C
    :cond_2
    mul-int/lit8 v8, v7, 0xa

    #@61
    add-int/lit8 v9, v0, -0x30

    #@63
    add-int v7, v8, v9

    #@65
    .line 622
    add-int/lit8 v1, v1, 0x1

    #@67
    goto :goto_1

    #@68
    .line 633
    .end local v0    # "ch":C
    :cond_3
    add-int/lit8 v3, v4, 0x1

    #@6a
    .end local v4    # "number":I
    .restart local v3    # "number":I
    aput v7, v6, v4

    #@6c
    .line 634
    if-ne v1, v2, :cond_4

    #@6e
    .line 642
    .end local v5    # "pos":I
    .end local v7    # "value":I
    :goto_2
    const/4 v8, 0x2

    #@6f
    if-ge v3, v8, :cond_6

    #@71
    .line 643
    new-instance v8, Ljava/io/IOException;

    #@73
    new-instance v9, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v10, "OID should consist of no less than 2 components: "

    #@7b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v9

    #@7f
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v9

    #@83
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v9

    #@87
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v8

    #@8b
    .line 637
    .restart local v5    # "pos":I
    .restart local v7    # "value":I
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@8e
    move-result v0

    #@8f
    .line 638
    .restart local v0    # "ch":C
    if-eq v0, v10, :cond_5

    #@91
    .line 639
    new-instance v8, Ljava/io/IOException;

    #@93
    new-instance v9, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v10, "Bad OID: "

    #@9b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v9

    #@9f
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v9

    #@a3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v9

    #@a7
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v8

    #@ab
    .line 619
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@ad
    move v4, v3

    #@ae
    .end local v3    # "number":I
    .restart local v4    # "number":I
    goto :goto_0

    #@af
    .line 645
    .end local v0    # "ch":C
    .end local v4    # "number":I
    .end local v5    # "pos":I
    .end local v7    # "value":I
    .restart local v3    # "number":I
    :cond_6
    const/4 v8, 0x0

    #@b0
    invoke-static {v6, v8, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    #@b3
    move-result-object v8

    #@b4
    return-object v8

    #@b5
    .end local v3    # "number":I
    .restart local v4    # "number":I
    :cond_7
    move v3, v4

    #@b6
    .end local v4    # "number":I
    .restart local v3    # "number":I
    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 279
    instance-of v1, p1, Lorg/apache/harmony/security/x509/GeneralName;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 280
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 282
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    #@9
    .line 283
    .local v0, "gname":Lorg/apache/harmony/security/x509/GeneralName;
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@b
    iget v2, v0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 284
    return v3

    #@10
    .line 286
    :cond_1
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@12
    packed-switch v1, :pswitch_data_0

    #@15
    .line 305
    return v3

    #@16
    .line 290
    :pswitch_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@18
    check-cast v1, Ljava/lang/String;

    #@1a
    .line 291
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/String;

    #@20
    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v1

    #@24
    return v1

    #@25
    .line 293
    :pswitch_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@27
    check-cast v1, [I

    #@29
    iget-object v2, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@2b
    check-cast v2, [I

    #@2d
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@30
    move-result v1

    #@31
    return v1

    #@32
    .line 296
    :pswitch_2
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@34
    check-cast v1, [B

    #@36
    iget-object v2, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@38
    check-cast v2, [B

    #@3a
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@3d
    move-result v1

    #@3e
    return v1

    #@3f
    .line 301
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    #@46
    move-result-object v2

    #@47
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@4a
    move-result v1

    #@4b
    return v1

    #@4c
    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getAsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 459
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 460
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    .line 461
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@10
    packed-switch v1, :pswitch_data_0

    #@13
    .line 488
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 463
    :pswitch_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@1a
    check-cast v1, Lorg/apache/harmony/security/x509/OtherName;

    #@1c
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/OtherName;->getEncoded()[B

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_0

    #@24
    .line 468
    :pswitch_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_0

    #@2a
    .line 471
    :pswitch_2
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@2c
    check-cast v1, [I

    #@2e
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35
    goto :goto_0

    #@36
    .line 474
    :pswitch_3
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@38
    check-cast v1, Lorg/apache/harmony/security/x509/ORAddress;

    #@3a
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/ORAddress;->getEncoded()[B

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_0

    #@42
    .line 477
    :pswitch_4
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@44
    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    #@46
    const-string/jumbo v2, "RFC2253"

    #@49
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    goto :goto_0

    #@51
    .line 480
    :pswitch_5
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@53
    check-cast v1, Lorg/apache/harmony/security/x509/EDIPartyName;

    #@55
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/EDIPartyName;->getEncoded()[B

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_0

    #@5d
    .line 483
    :pswitch_6
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@5f
    check-cast v1, [B

    #@61
    invoke-static {v1}, Lorg/apache/harmony/security/x509/GeneralName;->ipBytesToStr([B)Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@68
    goto :goto_0

    #@69
    .line 461
    nop

    #@6a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 536
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Choice;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    #@c
    .line 538
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    #@e
    return-object v0
.end method

.method public getEncodedName()[B
    .locals 2

    #@0
    .prologue
    .line 547
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 548
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@8
    aget-object v0, v0, v1

    #@a
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@c
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    #@12
    .line 550
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    #@14
    return-object v0
.end method

.method public getName()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getTag()I
    .locals 1

    #@0
    .prologue
    .line 252
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 309
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 322
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 315
    :pswitch_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@c
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 320
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    #@18
    move-result v0

    #@19
    return v0

    #@1a
    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isAcceptable(Lorg/apache/harmony/security/x509/GeneralName;)Z
    .locals 20
    .param p1, "gname"    # Lorg/apache/harmony/security/x509/GeneralName;

    #@0
    .prologue
    .line 341
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@4
    move/from16 v17, v0

    #@6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    #@9
    move-result v18

    #@a
    move/from16 v0, v17

    #@c
    move/from16 v1, v18

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 342
    const/16 v17, 0x0

    #@12
    return v17

    #@13
    .line 344
    :cond_0
    move-object/from16 v0, p0

    #@15
    iget v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@17
    move/from16 v17, v0

    #@19
    packed-switch v17, :pswitch_data_0

    #@1c
    .line 438
    const/16 v17, 0x1

    #@1e
    return v17

    #@1f
    .line 349
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    #@22
    move-result-object v17

    #@23
    check-cast v17, Ljava/lang/String;

    #@25
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@27
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@2a
    move-result-object v18

    #@2b
    .line 350
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@2f
    move-object/from16 v17, v0

    #@31
    check-cast v17, Ljava/lang/String;

    #@33
    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@35
    move-object/from16 v0, v17

    #@37
    move-object/from16 v1, v19

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@3c
    move-result-object v17

    #@3d
    .line 349
    move-object/from16 v0, v18

    #@3f
    move-object/from16 v1, v17

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@44
    move-result v17

    #@45
    return v17

    #@46
    .line 355
    :pswitch_1
    move-object/from16 v0, p0

    #@48
    iget-object v8, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@4a
    check-cast v8, Ljava/lang/String;

    #@4c
    .line 356
    .local v8, "dns":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    #@4f
    move-result-object v3

    #@50
    check-cast v3, Ljava/lang/String;

    #@52
    .line 357
    .local v3, "_dns":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@55
    move-result v17

    #@56
    if-eqz v17, :cond_1

    #@58
    .line 358
    const/16 v17, 0x1

    #@5a
    return v17

    #@5b
    .line 360
    :cond_1
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@5d
    move-object/from16 v0, v17

    #@5f
    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@62
    move-result-object v17

    #@63
    new-instance v18, Ljava/lang/StringBuilder;

    #@65
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v19, "."

    #@6b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v18

    #@6f
    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@71
    move-object/from16 v0, v19

    #@73
    invoke-virtual {v8, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@76
    move-result-object v19

    #@77
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v18

    #@7b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v18

    #@7f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@82
    move-result v17

    #@83
    return v17

    #@84
    .line 369
    .end local v3    # "_dns":Ljava/lang/String;
    .end local v8    # "dns":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    #@86
    iget-object v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@88
    move-object/from16 v16, v0

    #@8a
    check-cast v16, Ljava/lang/String;

    #@8c
    .line 370
    .local v16, "uri":Ljava/lang/String;
    const-string/jumbo v17, "://"

    #@8f
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@92
    move-result v17

    #@93
    add-int/lit8 v7, v17, 0x3

    #@95
    .line 371
    .local v7, "begin":I
    const/16 v17, 0x2f

    #@97
    move-object/from16 v0, v16

    #@99
    move/from16 v1, v17

    #@9b
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->indexOf(II)I

    #@9e
    move-result v9

    #@9f
    .line 372
    .local v9, "end":I
    const/16 v17, -0x1

    #@a1
    move/from16 v0, v17

    #@a3
    if-ne v9, v0, :cond_2

    #@a5
    .line 373
    move-object/from16 v0, v16

    #@a7
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@aa
    move-result-object v10

    #@ab
    .line 375
    .local v10, "host":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    #@ae
    move-result-object v16

    #@af
    .end local v16    # "uri":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    #@b1
    .line 376
    .restart local v16    # "uri":Ljava/lang/String;
    const-string/jumbo v17, "://"

    #@b4
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b7
    move-result v17

    #@b8
    add-int/lit8 v7, v17, 0x3

    #@ba
    .line 377
    const/16 v17, 0x2f

    #@bc
    move-object/from16 v0, v16

    #@be
    move/from16 v1, v17

    #@c0
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->indexOf(II)I

    #@c3
    move-result v9

    #@c4
    .line 378
    const/16 v17, -0x1

    #@c6
    move/from16 v0, v17

    #@c8
    if-ne v9, v0, :cond_3

    #@ca
    .line 379
    move-object/from16 v0, v16

    #@cc
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@cf
    move-result-object v4

    #@d0
    .line 381
    .local v4, "_host":Ljava/lang/String;
    :goto_1
    const-string/jumbo v17, "."

    #@d3
    move-object/from16 v0, v17

    #@d5
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d8
    move-result v17

    #@d9
    if-eqz v17, :cond_4

    #@db
    .line 382
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@dd
    move-object/from16 v0, v17

    #@df
    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@e2
    move-result-object v17

    #@e3
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@e5
    move-object/from16 v0, v18

    #@e7
    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@ea
    move-result-object v18

    #@eb
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@ee
    move-result v17

    #@ef
    return v17

    #@f0
    .line 374
    .end local v4    # "_host":Ljava/lang/String;
    .end local v10    # "host":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v16

    #@f2
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f5
    move-result-object v10

    #@f6
    .restart local v10    # "host":Ljava/lang/String;
    goto :goto_0

    #@f7
    .line 380
    :cond_3
    move-object/from16 v0, v16

    #@f9
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@fc
    move-result-object v4

    #@fd
    .restart local v4    # "_host":Ljava/lang/String;
    goto :goto_1

    #@fe
    .line 384
    :cond_4
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@101
    move-result v17

    #@102
    return v17

    #@103
    .line 388
    .end local v4    # "_host":Ljava/lang/String;
    .end local v7    # "begin":I
    .end local v9    # "end":I
    .end local v10    # "host":Ljava/lang/String;
    .end local v16    # "uri":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    #@105
    iget-object v6, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@107
    check-cast v6, [B

    #@109
    .line 389
    .local v6, "address":[B
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    #@10c
    move-result-object v2

    #@10d
    check-cast v2, [B

    #@10f
    .line 390
    .local v2, "_address":[B
    array-length v12, v6

    #@110
    .line 401
    .local v12, "length":I
    const/16 v17, 0x4

    #@112
    move/from16 v0, v17

    #@114
    if-eq v12, v0, :cond_5

    #@116
    const/16 v17, 0x8

    #@118
    move/from16 v0, v17

    #@11a
    if-eq v12, v0, :cond_5

    #@11c
    const/16 v17, 0x10

    #@11e
    move/from16 v0, v17

    #@120
    if-eq v12, v0, :cond_5

    #@122
    const/16 v17, 0x20

    #@124
    move/from16 v0, v17

    #@126
    if-eq v12, v0, :cond_5

    #@128
    .line 402
    const/16 v17, 0x0

    #@12a
    return v17

    #@12b
    .line 405
    :cond_5
    array-length v5, v2

    #@12c
    .line 406
    .local v5, "_length":I
    if-ne v12, v5, :cond_6

    #@12e
    .line 407
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@131
    move-result v17

    #@132
    return v17

    #@133
    .line 408
    :cond_6
    mul-int/lit8 v17, v5, 0x2

    #@135
    move/from16 v0, v17

    #@137
    if-ne v12, v0, :cond_a

    #@139
    .line 409
    const/4 v11, 0x0

    #@13a
    .local v11, "i":I
    :goto_2
    array-length v0, v2

    #@13b
    move/from16 v17, v0

    #@13d
    move/from16 v0, v17

    #@13f
    if-ge v11, v0, :cond_9

    #@141
    .line 411
    aget-byte v17, v2, v11

    #@143
    move/from16 v0, v17

    #@145
    and-int/lit16 v15, v0, 0xff

    #@147
    .line 412
    .local v15, "octet":I
    aget-byte v17, v6, v11

    #@149
    move/from16 v0, v17

    #@14b
    and-int/lit16 v14, v0, 0xff

    #@14d
    .line 413
    .local v14, "min":I
    add-int v17, v11, v5

    #@14f
    aget-byte v17, v6, v17

    #@151
    move/from16 v0, v17

    #@153
    and-int/lit16 v13, v0, 0xff

    #@155
    .line 414
    .local v13, "max":I
    if-lt v15, v14, :cond_7

    #@157
    if-le v15, v13, :cond_8

    #@159
    .line 415
    :cond_7
    const/16 v17, 0x0

    #@15b
    return v17

    #@15c
    .line 409
    :cond_8
    add-int/lit8 v11, v11, 0x1

    #@15e
    goto :goto_2

    #@15f
    .line 418
    .end local v13    # "max":I
    .end local v14    # "min":I
    .end local v15    # "octet":I
    :cond_9
    const/16 v17, 0x1

    #@161
    return v17

    #@162
    .line 420
    .end local v11    # "i":I
    :cond_a
    const/16 v17, 0x0

    #@164
    return v17

    #@165
    .line 434
    .end local v2    # "_address":[B
    .end local v5    # "_length":I
    .end local v6    # "address":[B
    .end local v12    # "length":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    #@168
    move-result-object v17

    #@169
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    #@16c
    move-result-object v18

    #@16d
    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->equals([B[B)Z

    #@170
    move-result v17

    #@171
    return v17

    #@172
    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 492
    const-string/jumbo v0, ""

    #@3
    .line 493
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 528
    :goto_0
    return-object v0

    #@9
    .line 495
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "otherName[0]: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 496
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    #@18
    move-result-object v2

    #@19
    invoke-static {v2}, Lorg/apache/harmony/security/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 495
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    goto :goto_0

    #@26
    .line 499
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "rfc822Name[1]: "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    goto :goto_0

    #@3d
    .line 502
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v2, "dNSName[2]: "

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    goto :goto_0

    #@54
    .line 505
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v2, "uniformResourceIdentifier[6]: "

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    goto :goto_0

    #@6b
    .line 508
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v2, "registeredID[8]: "

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@79
    check-cast v1, [I

    #@7b
    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    goto :goto_0

    #@88
    .line 511
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v2, "x400Address[3]: "

    #@90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    .line 512
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    #@97
    move-result-object v2

    #@98
    invoke-static {v2}, Lorg/apache/harmony/security/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    #@9b
    move-result-object v2

    #@9c
    .line 511
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    goto/16 :goto_0

    #@a6
    .line 515
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v2, "directoryName[4]: "

    #@ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    .line 516
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@b4
    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    #@b6
    const-string/jumbo v3, "RFC2253"

    #@b9
    invoke-virtual {v1, v3}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@bc
    move-result-object v1

    #@bd
    .line 515
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v1

    #@c1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v0

    #@c5
    goto/16 :goto_0

    #@c7
    .line 519
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v2, "ediPartyName[5]: "

    #@cf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v1

    #@d3
    .line 520
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    #@d6
    move-result-object v2

    #@d7
    invoke-static {v2}, Lorg/apache/harmony/security/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    #@da
    move-result-object v2

    #@db
    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v0

    #@e3
    goto/16 :goto_0

    #@e5
    .line 523
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v2, "iPAddress[7]: "

    #@ed
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v2

    #@f1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    #@f3
    check-cast v1, [B

    #@f5
    invoke-static {v1}, Lorg/apache/harmony/security/x509/GeneralName;->ipBytesToStr([B)Ljava/lang/String;

    #@f8
    move-result-object v1

    #@f9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v1

    #@fd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v0

    #@101
    goto/16 :goto_0

    #@103
    .line 493
    nop

    #@104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method
