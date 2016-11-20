.class public Lsun/security/x509/GeneralName;
.super Ljava/lang/Object;
.source "GeneralName.java"


# instance fields
.field private name:Lsun/security/x509/GeneralNameInterface;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "encName"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;Z)V

    #@4
    .line 75
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;Z)V
    .locals 4
    .param p1, "encName"    # Lsun/security/util/DerValue;
    .param p2, "nameConstraint"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x30

    #@2
    const/16 v2, 0x16

    #@4
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 55
    const/4 v1, 0x0

    #@8
    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@a
    .line 87
    iget-byte v1, p1, Lsun/security/util/DerValue;->tag:B

    #@c
    and-int/lit8 v1, v1, 0x1f

    #@e
    int-to-byte v1, v1

    #@f
    int-to-short v0, v1

    #@10
    .line 91
    .local v0, "tag":S
    packed-switch v0, :pswitch_data_0

    #@13
    .line 165
    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Unrecognized GeneralName tag, ("

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 166
    const-string/jumbo v3, ")"

    #@28
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1

    #@34
    .line 93
    :pswitch_1
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_0

    #@3a
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_0

    #@40
    .line 94
    invoke-virtual {p1, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    #@43
    .line 95
    new-instance v1, Lsun/security/x509/OtherName;

    #@45
    invoke-direct {v1, p1}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/DerValue;)V

    #@48
    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@4a
    .line 86
    :goto_0
    return-void

    #@4b
    .line 97
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@4d
    const-string/jumbo v2, "Invalid encoding of Other-Name"

    #@50
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@53
    throw v1

    #@54
    .line 102
    :pswitch_2
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_1

    #@5a
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@5d
    move-result v1

    #@5e
    if-eqz v1, :cond_2

    #@60
    .line 106
    :cond_1
    new-instance v1, Ljava/io/IOException;

    #@62
    const-string/jumbo v2, "Invalid encoding of RFC822 name"

    #@65
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@68
    throw v1

    #@69
    .line 103
    :cond_2
    invoke-virtual {p1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    #@6c
    .line 104
    new-instance v1, Lsun/security/x509/RFC822Name;

    #@6e
    invoke-direct {v1, p1}, Lsun/security/x509/RFC822Name;-><init>(Lsun/security/util/DerValue;)V

    #@71
    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@73
    goto :goto_0

    #@74
    .line 111
    :pswitch_3
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@77
    move-result v1

    #@78
    if-eqz v1, :cond_3

    #@7a
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_4

    #@80
    .line 115
    :cond_3
    new-instance v1, Ljava/io/IOException;

    #@82
    const-string/jumbo v2, "Invalid encoding of DNS name"

    #@85
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@88
    throw v1

    #@89
    .line 112
    :cond_4
    invoke-virtual {p1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    #@8c
    .line 113
    new-instance v1, Lsun/security/x509/DNSName;

    #@8e
    invoke-direct {v1, p1}, Lsun/security/x509/DNSName;-><init>(Lsun/security/util/DerValue;)V

    #@91
    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@93
    goto :goto_0

    #@94
    .line 120
    :pswitch_4
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@97
    move-result v1

    #@98
    if-eqz v1, :cond_5

    #@9a
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@9d
    move-result v1

    #@9e
    if-eqz v1, :cond_6

    #@a0
    .line 125
    :cond_5
    new-instance v1, Ljava/io/IOException;

    #@a2
    const-string/jumbo v2, "Invalid encoding of URI"

    #@a5
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v1

    #@a9
    .line 121
    :cond_6
    invoke-virtual {p1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    #@ac
    .line 122
    if-eqz p2, :cond_7

    #@ae
    invoke-static {p1}, Lsun/security/x509/URIName;->nameConstraint(Lsun/security/util/DerValue;)Lsun/security/x509/URIName;

    #@b1
    move-result-object v1

    #@b2
    :goto_1
    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@b4
    goto :goto_0

    #@b5
    .line 123
    :cond_7
    new-instance v1, Lsun/security/x509/URIName;

    #@b7
    invoke-direct {v1, p1}, Lsun/security/x509/URIName;-><init>(Lsun/security/util/DerValue;)V

    #@ba
    goto :goto_1

    #@bb
    .line 130
    :pswitch_5
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@be
    move-result v1

    #@bf
    if-eqz v1, :cond_8

    #@c1
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@c4
    move-result v1

    #@c5
    if-eqz v1, :cond_9

    #@c7
    .line 134
    :cond_8
    new-instance v1, Ljava/io/IOException;

    #@c9
    const-string/jumbo v2, "Invalid encoding of IP address"

    #@cc
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@cf
    throw v1

    #@d0
    .line 131
    :cond_9
    const/4 v1, 0x4

    #@d1
    invoke-virtual {p1, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    #@d4
    .line 132
    new-instance v1, Lsun/security/x509/IPAddressName;

    #@d6
    invoke-direct {v1, p1}, Lsun/security/x509/IPAddressName;-><init>(Lsun/security/util/DerValue;)V

    #@d9
    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@db
    goto/16 :goto_0

    #@dd
    .line 139
    :pswitch_6
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@e0
    move-result v1

    #@e1
    if-eqz v1, :cond_a

    #@e3
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@e6
    move-result v1

    #@e7
    if-eqz v1, :cond_b

    #@e9
    .line 143
    :cond_a
    new-instance v1, Ljava/io/IOException;

    #@eb
    const-string/jumbo v2, "Invalid encoding of OID name"

    #@ee
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f1
    throw v1

    #@f2
    .line 140
    :cond_b
    const/4 v1, 0x6

    #@f3
    invoke-virtual {p1, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    #@f6
    .line 141
    new-instance v1, Lsun/security/x509/OIDName;

    #@f8
    invoke-direct {v1, p1}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/DerValue;)V

    #@fb
    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@fd
    goto/16 :goto_0

    #@ff
    .line 148
    :pswitch_7
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@102
    move-result v1

    #@103
    if-eqz v1, :cond_c

    #@105
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@108
    move-result v1

    #@109
    if-eqz v1, :cond_c

    #@10b
    .line 149
    new-instance v1, Lsun/security/x509/X500Name;

    #@10d
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    #@110
    move-result-object v2

    #@111
    invoke-direct {v1, v2}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    #@114
    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@116
    goto/16 :goto_0

    #@118
    .line 151
    :cond_c
    new-instance v1, Ljava/io/IOException;

    #@11a
    const-string/jumbo v2, "Invalid encoding of Directory name"

    #@11d
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@120
    throw v1

    #@121
    .line 156
    :pswitch_8
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@124
    move-result v1

    #@125
    if-eqz v1, :cond_d

    #@127
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@12a
    move-result v1

    #@12b
    if-eqz v1, :cond_d

    #@12d
    .line 157
    invoke-virtual {p1, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    #@130
    .line 158
    new-instance v1, Lsun/security/x509/EDIPartyName;

    #@132
    invoke-direct {v1, p1}, Lsun/security/x509/EDIPartyName;-><init>(Lsun/security/util/DerValue;)V

    #@135
    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@137
    goto/16 :goto_0

    #@139
    .line 160
    :cond_d
    new-instance v1, Ljava/io/IOException;

    #@13b
    const-string/jumbo v2, "Invalid encoding of EDI name"

    #@13e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@141
    throw v1

    #@142
    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNameInterface;)V
    .locals 2
    .param p1, "name"    # Lsun/security/x509/GeneralNameInterface;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 55
    iput-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@6
    .line 64
    if-nez p1, :cond_0

    #@8
    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "GeneralName must not be null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 67
    :cond_0
    iput-object p1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@13
    .line 63
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/16 v3, -0x80

    #@4
    .line 228
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@6
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@9
    .line 229
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@b
    invoke-interface {v2, v1}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V

    #@e
    .line 230
    iget-object v2, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@10
    invoke-interface {v2}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@13
    move-result v0

    #@14
    .line 231
    .local v0, "nameType":I
    if-eqz v0, :cond_0

    #@16
    .line 232
    const/4 v2, 0x3

    #@17
    if-ne v0, v2, :cond_1

    #@19
    .line 237
    :cond_0
    int-to-byte v2, v0

    #@1a
    .line 236
    invoke-static {v3, v5, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@21
    .line 227
    :goto_0
    return-void

    #@22
    .line 233
    :cond_1
    const/4 v2, 0x5

    #@23
    if-eq v0, v2, :cond_0

    #@25
    .line 238
    const/4 v2, 0x4

    #@26
    if-ne v0, v2, :cond_2

    #@28
    .line 242
    int-to-byte v2, v0

    #@29
    .line 241
    invoke-static {v3, v5, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@2c
    move-result v2

    #@2d
    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@30
    goto :goto_0

    #@31
    .line 246
    :cond_2
    int-to-byte v2, v0

    #@32
    .line 245
    invoke-static {v3, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@35
    move-result v2

    #@36
    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@39
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 199
    if-ne p0, p1, :cond_0

    #@4
    .line 200
    return v2

    #@5
    .line 202
    :cond_0
    instance-of v4, p1, Lsun/security/x509/GeneralName;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 203
    return v3

    #@a
    .line 204
    :cond_1
    check-cast p1, Lsun/security/x509/GeneralName;

    #@c
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@e
    .line 206
    .local v1, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    :try_start_0
    iget-object v4, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@10
    invoke-interface {v4, v1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_2

    #@16
    :goto_0
    return v2

    #@17
    :cond_2
    move v2, v3

    #@18
    goto :goto_0

    #@19
    .line 207
    :catch_0
    move-exception v0

    #@1a
    .line 208
    .local v0, "ioe":Ljava/lang/UnsupportedOperationException;
    return v3
.end method

.method public getName()Lsun/security/x509/GeneralNameInterface;
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@2
    invoke-interface {v0}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
