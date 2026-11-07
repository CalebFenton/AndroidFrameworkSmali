.class public Lsun/security/x509/GeneralName;
.super Ljava/lang/Object;
.source "GeneralName.java"


# instance fields
.field private greylist-max-o name:Lsun/security/x509/GeneralNameInterface;


# direct methods
.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "encName"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;Z)V

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;Z)V
    .registers 7
    .param p1, "encName"    # Lsun/security/util/DerValue;
    .param p2, "nameConstraint"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    .line 87
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v0, v0, 0x1f

    int-to-byte v0, v0

    int-to-short v0, v0

    .line 91
    .local v0, "tag":S
    const/16 v1, 0x30

    const/16 v2, 0x16

    packed-switch v0, :pswitch_data_138

    .line 165
    :pswitch_13
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized GeneralName tag, ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :pswitch_32
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 140
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 141
    new-instance v1, Lsun/security/x509/OIDName;

    invoke-direct {v1, p1}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto/16 :goto_12f

    .line 143
    :cond_4b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding of OID name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :pswitch_53
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 131
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 132
    new-instance v1, Lsun/security/x509/IPAddressName;

    invoke-direct {v1, p1}, Lsun/security/x509/IPAddressName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto/16 :goto_12f

    .line 134
    :cond_6c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding of IP address"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :pswitch_74
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_93

    .line 121
    invoke-virtual {p1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 122
    if-eqz p2, :cond_8a

    invoke-static {p1}, Lsun/security/x509/URIName;->nameConstraint(Lsun/security/util/DerValue;)Lsun/security/x509/URIName;

    move-result-object v1

    goto :goto_8f

    .line 123
    :cond_8a
    new-instance v1, Lsun/security/x509/URIName;

    invoke-direct {v1, p1}, Lsun/security/x509/URIName;-><init>(Lsun/security/util/DerValue;)V

    :goto_8f
    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto/16 :goto_12f

    .line 125
    :cond_93
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding of URI"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :pswitch_9b
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 157
    invoke-virtual {p1, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 158
    new-instance v1, Lsun/security/x509/EDIPartyName;

    invoke-direct {v1, p1}, Lsun/security/x509/EDIPartyName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto/16 :goto_12f

    .line 160
    :cond_b3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding of EDI name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :pswitch_bb
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_d3

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 149
    new-instance v1, Lsun/security/x509/X500Name;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto :goto_12f

    .line 151
    :cond_d3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding of Directory name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :pswitch_db
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_f2

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_f2

    .line 112
    invoke-virtual {p1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 113
    new-instance v1, Lsun/security/x509/DNSName;

    invoke-direct {v1, p1}, Lsun/security/x509/DNSName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto :goto_12f

    .line 115
    :cond_f2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding of DNS name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :pswitch_fa
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_111

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_111

    .line 103
    invoke-virtual {p1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 104
    new-instance v1, Lsun/security/x509/RFC822Name;

    invoke-direct {v1, p1}, Lsun/security/x509/RFC822Name;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto :goto_12f

    .line 106
    :cond_111
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding of RFC822 name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :pswitch_119
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v2

    if-eqz v2, :cond_130

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_130

    .line 94
    invoke-virtual {p1, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 95
    new-instance v1, Lsun/security/x509/OtherName;

    invoke-direct {v1, p1}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    .line 168
    :goto_12f
    return-void

    .line 97
    :cond_130
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding of Other-Name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_119
        :pswitch_fa
        :pswitch_db
        :pswitch_13
        :pswitch_bb
        :pswitch_9b
        :pswitch_74
        :pswitch_53
        :pswitch_32
    .end packed-switch
.end method

.method public constructor greylist <init>(Lsun/security/x509/GeneralNameInterface;)V
    .registers 4
    .param p1, "name"    # Lsun/security/x509/GeneralNameInterface;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    .line 64
    if-eqz p1, :cond_b

    .line 67
    iput-object p1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    .line 68
    return-void

    .line 65
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "GeneralName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 7
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 229
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v1, v0}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V

    .line 230
    iget-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v1

    .line 231
    .local v1, "nameType":I
    const/4 v2, 0x1

    const/16 v3, -0x80

    if-eqz v1, :cond_32

    const/4 v4, 0x3

    if-eq v1, v4, :cond_32

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1c

    goto :goto_32

    .line 238
    :cond_1c
    const/4 v4, 0x4

    if-ne v1, v4, :cond_28

    .line 241
    int-to-byte v4, v1

    invoke-static {v3, v2, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {p1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    goto :goto_3a

    .line 245
    :cond_28
    const/4 v2, 0x0

    int-to-byte v4, v1

    invoke-static {v3, v2, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {p1, v2, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    goto :goto_3a

    .line 236
    :cond_32
    :goto_32
    int-to-byte v4, v1

    invoke-static {v3, v2, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {p1, v2, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 248
    :goto_3a
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 199
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 200
    return v0

    .line 202
    :cond_4
    instance-of v1, p1, Lsun/security/x509/GeneralName;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 203
    return v2

    .line 204
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/security/x509/GeneralName;

    iget-object v1, v1, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    .line 206
    .local v1, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    :try_start_f
    iget-object v3, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v3, v1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v3
    :try_end_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f .. :try_end_15} :catch_1a

    if-nez v3, :cond_18

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    return v0

    .line 207
    :catch_1a
    move-exception v0

    .line 208
    .local v0, "ioe":Ljava/lang/UnsupportedOperationException;
    return v2
.end method

.method public greylist getName()Lsun/security/x509/GeneralNameInterface;
    .registers 2

    .line 182
    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    return-object v0
.end method

.method public greylist getType()I
    .registers 2

    .line 174
    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v0}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 218
    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
