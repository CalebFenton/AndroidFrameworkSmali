.class public final Lorg/apache/harmony/security/x501/Name;
.super Ljava/lang/Object;
.source "Name.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x501/Name$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

.field public static final ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;


# instance fields
.field private canonicalString:Ljava/lang/String;

.field private volatile encoded:[B

.field private rdn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private rfc1779String:Ljava/lang/String;

.field private rfc2253String:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x501/Name;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 235
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@2
    .line 236
    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@4
    .line 235
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@7
    sput-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@9
    .line 238
    new-instance v0, Lorg/apache/harmony/security/x501/Name$1;

    #@b
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@d
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x501/Name$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@10
    sput-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@12
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    new-instance v0, Lorg/apache/harmony/security/x509/DNParser;

    #@5
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/x509/DNParser;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/DNParser;->parse()Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    #@e
    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 88
    .local p1, "rdn":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    iput-object p1, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    #@5
    .line 88
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lorg/apache/harmony/security/x501/Name;)V
    .locals 0
    .param p1, "rdn"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/util/List;)V

    #@3
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    #@5
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    #@8
    .line 69
    .local v0, "in":Lorg/apache/harmony/security/asn1/DerInputStream;
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/DerInputStream;->getEndOffset()I

    #@b
    move-result v1

    #@c
    array-length v2, p1

    #@d
    if-eq v1, v2, :cond_0

    #@f
    .line 70
    new-instance v1, Ljava/io/IOException;

    #@11
    const-string/jumbo v2, "Wrong content length"

    #@14
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 73
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@1a
    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@1d
    .line 75
    iget-object v1, v0, Lorg/apache/harmony/security/asn1/DerInputStream;->content:Ljava/lang/Object;

    #@1f
    check-cast v1, Ljava/util/List;

    #@21
    iput-object v1, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    #@23
    .line 66
    return-void
.end method

.method private getName0(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 172
    .local v5, "name":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    #@7
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@a
    move-result v7

    #@b
    add-int/lit8 v3, v7, -0x1

    #@d
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    #@f
    .line 173
    iget-object v7, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    #@11
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/List;

    #@17
    .line 175
    .local v0, "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    const-string/jumbo v7, "CANONICAL"

    #@1a
    if-ne v7, p1, :cond_0

    #@1c
    .line 176
    new-instance v1, Ljava/util/ArrayList;

    #@1e
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@21
    .line 177
    .end local v0    # "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    .local v1, "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    new-instance v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;

    #@23
    invoke-direct {v7}, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;-><init>()V

    #@26
    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@29
    move-object v0, v1

    #@2a
    .line 181
    .end local v1    # "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    .restart local v0    # "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v4

    #@2e
    .line 182
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_3

    #@34
    .line 183
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    #@3a
    .line 184
    .local v2, "attributeTypeAndValue":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {v2, p1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->appendName(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    #@3d
    .line 185
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_1

    #@43
    .line 187
    const-string/jumbo v7, "RFC1779"

    #@46
    if-ne v7, p1, :cond_2

    #@48
    .line 188
    const-string/jumbo v7, " + "

    #@4b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    goto :goto_1

    #@4f
    .line 190
    :cond_2
    const/16 v7, 0x2b

    #@51
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@54
    goto :goto_1

    #@55
    .line 195
    .end local v2    # "attributeTypeAndValue":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    :cond_3
    if-eqz v3, :cond_4

    #@57
    .line 196
    const/16 v7, 0x2c

    #@59
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c
    .line 197
    const-string/jumbo v7, "RFC1779"

    #@5f
    if-ne p1, v7, :cond_4

    #@61
    .line 198
    const/16 v7, 0x20

    #@63
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@66
    .line 172
    :cond_4
    add-int/lit8 v3, v3, -0x1

    #@68
    goto :goto_0

    #@69
    .line 203
    .end local v0    # "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v6

    #@6d
    .line 204
    .local v6, "sName":Ljava/lang/String;
    const-string/jumbo v7, "CANONICAL"

    #@70
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v7

    #@74
    if-eqz v7, :cond_6

    #@76
    .line 205
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@78
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7b
    move-result-object v6

    #@7c
    .line 207
    :cond_6
    return-object v6
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 217
    sget-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    #@c
    .line 219
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    #@e
    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    const-string/jumbo v0, "RFC1779"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 115
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 116
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    #@13
    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    #@15
    return-object v0

    #@16
    .line 120
    :cond_1
    const-string/jumbo v0, "RFC2253"

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_3

    #@1f
    .line 122
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    #@21
    if-nez v0, :cond_2

    #@23
    .line 123
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    #@29
    .line 125
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    #@2b
    return-object v0

    #@2c
    .line 127
    :cond_3
    const-string/jumbo v0, "CANONICAL"

    #@2f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_5

    #@35
    .line 129
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    #@37
    if-nez v0, :cond_4

    #@39
    .line 130
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    #@3f
    .line 132
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    #@41
    return-object v0

    #@42
    .line 138
    :cond_5
    const-string/jumbo v0, "RFC1779"

    #@45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_7

    #@4b
    .line 140
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    #@4d
    if-nez v0, :cond_6

    #@4f
    .line 141
    const-string/jumbo v0, "RFC1779"

    #@52
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    #@58
    .line 143
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    #@5a
    return-object v0

    #@5b
    .line 145
    :cond_7
    const-string/jumbo v0, "RFC2253"

    #@5e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_9

    #@64
    .line 147
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    #@66
    if-nez v0, :cond_8

    #@68
    .line 148
    const-string/jumbo v0, "RFC2253"

    #@6b
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    #@71
    .line 150
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    #@73
    return-object v0

    #@74
    .line 152
    :cond_9
    const-string/jumbo v0, "CANONICAL"

    #@77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7a
    move-result v0

    #@7b
    if-eqz v0, :cond_b

    #@7d
    .line 154
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    #@7f
    if-nez v0, :cond_a

    #@81
    .line 155
    const-string/jumbo v0, "CANONICAL"

    #@84
    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    #@8a
    .line 157
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    #@8c
    return-object v0

    #@8d
    .line 160
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8f
    new-instance v1, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v2, "Illegal format: "

    #@97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v1

    #@a3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v0
.end method

.method public getX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    #@0
    .prologue
    .line 99
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    #@2
    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@9
    return-object v0
.end method
