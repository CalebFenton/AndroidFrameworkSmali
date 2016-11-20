.class public Lsun/security/x509/AVA;
.super Ljava/lang/Object;
.source "AVA.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field static final DEFAULT:I = 0x1

.field private static final PRESERVE_OLD_DC_ENCODING:Z

.field static final RFC1779:I = 0x2

.field static final RFC2253:I = 0x3

.field private static final debug:Lsun/security/util/Debug;

.field private static final hexDigits:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final specialChars:Ljava/lang/String; = ",+=\n<>#;"

.field private static final specialChars2253:Ljava/lang/String; = ",+\"\\<>;"

.field private static final specialCharsAll:Ljava/lang/String; = ",=\n+<>#;\\\" "


# instance fields
.field final oid:Lsun/security/util/ObjectIdentifier;

.field final value:Lsun/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 64
    const-string/jumbo v0, "x509"

    #@3
    const-string/jumbo v1, "\t[AVA]"

    #@6
    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    #@c
    .line 69
    new-instance v0, Lsun/security/action/GetBooleanAction;

    #@e
    .line 70
    const-string/jumbo v1, "com.sun.security.preserveOldDCEncoding"

    #@11
    .line 69
    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    #@14
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/Boolean;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@1d
    move-result v0

    #@1e
    .line 68
    sput-boolean v0, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    #@20
    .line 62
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;I)V

    #@4
    .line 132
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    #@7
    .line 155
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;ILjava/util/Map;)V
    .locals 5
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p3, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0x20

    #@2
    const/4 v3, 0x3

    #@3
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 186
    .local v1, "temp":Ljava/lang/StringBuilder;
    :goto_0
    const-string/jumbo v2, "Incorrect AVA format"

    #@e
    invoke-static {p1, v2}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    #@11
    move-result v0

    #@12
    .line 187
    .local v0, "c":I
    const/16 v2, 0x3d

    #@14
    if-ne v0, v2, :cond_0

    #@16
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2, p2, p3}, Lsun/security/x509/AVAKeyword;->getOID(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;

    #@1d
    move-result-object v2

    #@1e
    iput-object v2, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    #@20
    .line 200
    const/4 v2, 0x0

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@24
    .line 201
    if-ne p2, v3, :cond_1

    #@26
    .line 203
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    #@29
    move-result v0

    #@2a
    .line 204
    if-ne v0, v4, :cond_2

    #@2c
    .line 205
    new-instance v2, Ljava/io/IOException;

    #@2e
    const-string/jumbo v3, "Incorrect AVA RFC2253 format - leading space must be escaped"

    #@31
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 190
    :cond_0
    int-to-char v2, v0

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    goto :goto_0

    #@3a
    .line 211
    :cond_1
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    #@3d
    move-result v0

    #@3e
    .line 212
    if-eq v0, v4, :cond_1

    #@40
    const/16 v2, 0xa

    #@42
    if-eq v0, v2, :cond_1

    #@44
    .line 214
    :cond_2
    const/4 v2, -0x1

    #@45
    if-ne v0, v2, :cond_3

    #@47
    .line 216
    new-instance v2, Lsun/security/util/DerValue;

    #@49
    const-string/jumbo v3, ""

    #@4c
    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@4f
    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@51
    .line 217
    return-void

    #@52
    .line 220
    :cond_3
    const/16 v2, 0x23

    #@54
    if-ne v0, v2, :cond_4

    #@56
    .line 221
    invoke-static {p1, p2}, Lsun/security/x509/AVA;->parseHexString(Ljava/io/Reader;I)Lsun/security/util/DerValue;

    #@59
    move-result-object v2

    #@5a
    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@5c
    .line 175
    :goto_1
    return-void

    #@5d
    .line 222
    :cond_4
    const/16 v2, 0x22

    #@5f
    if-ne v0, v2, :cond_5

    #@61
    if-eq p2, v3, :cond_5

    #@63
    .line 223
    invoke-direct {p0, p1, v1}, Lsun/security/x509/AVA;->parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;

    #@66
    move-result-object v2

    #@67
    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@69
    goto :goto_1

    #@6a
    .line 225
    :cond_5
    invoke-direct {p0, p1, v0, p2, v1}, Lsun/security/x509/AVA;->parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;

    #@6d
    move-result-object v2

    #@6e
    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@70
    goto :goto_1
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/util/Map;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    #@4
    .line 145
    return-void
.end method

.method constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 633
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/DerValue;)V

    #@7
    .line 632
    return-void
.end method

.method constructor <init>(Lsun/security/util/DerValue;)V
    .locals 3
    .param p1, "derval"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 620
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    #@5
    const/16 v1, 0x30

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 621
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "AVA not a sequence"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 623
    :cond_0
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@14
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    #@1e
    .line 624
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@20
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@26
    .line 626
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@28
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 627
    new-instance v0, Ljava/io/IOException;

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "AVA, extra bytes = "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 628
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@3e
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@41
    move-result v2

    #@42
    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0

    #@4e
    .line 617
    :cond_1
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "type"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "val"    # Lsun/security/util/DerValue;

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 116
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 117
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@c
    throw v0

    #@d
    .line 119
    :cond_1
    iput-object p1, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    #@f
    .line 120
    iput-object p2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@11
    .line 115
    return-void
.end method

.method private static getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;
    .locals 6
    .param p0, "c1"    # I
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x10

    #@2
    .line 533
    const-string/jumbo v3, "0123456789ABCDEF"

    #@5
    int-to-char v4, p0

    #@6
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    #@9
    move-result v4

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v3

    #@e
    if-ltz v3, :cond_1

    #@10
    .line 534
    const-string/jumbo v3, "unexpected EOF - escaped hex value must include two valid digits"

    #@13
    invoke-static {p1, v3}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    #@16
    move-result v0

    #@17
    .line 537
    .local v0, "c2":I
    const-string/jumbo v3, "0123456789ABCDEF"

    #@1a
    int-to-char v4, v0

    #@1b
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    #@1e
    move-result v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    #@22
    move-result v3

    #@23
    if-ltz v3, :cond_0

    #@25
    .line 538
    int-to-char v3, p0

    #@26
    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    #@29
    move-result v1

    #@2a
    .line 539
    .local v1, "hi":I
    int-to-char v3, v0

    #@2b
    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    #@2e
    move-result v2

    #@2f
    .line 540
    .local v2, "lo":I
    new-instance v3, Ljava/lang/Byte;

    #@31
    shl-int/lit8 v4, v1, 0x4

    #@33
    add-int/2addr v4, v2

    #@34
    int-to-byte v4, v4

    #@35
    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    #@38
    return-object v3

    #@39
    .line 542
    .end local v1    # "hi":I
    .end local v2    # "lo":I
    :cond_0
    new-instance v3, Ljava/io/IOException;

    #@3b
    .line 543
    const-string/jumbo v4, "escaped hex value must include two valid digits"

    #@3e
    .line 542
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@41
    throw v3

    #@42
    .line 546
    .end local v0    # "c2":I
    :cond_1
    const/4 v3, 0x0

    #@43
    return-object v3
.end method

.method private static getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 551
    .local p0, "hexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v2

    #@4
    .line 552
    .local v2, "n":I
    new-array v0, v2, [B

    #@6
    .line 553
    .local v0, "hexBytes":[B
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 554
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Ljava/lang/Byte;

    #@f
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    #@12
    move-result v3

    #@13
    aput-byte v3, v0, v1

    #@15
    .line 553
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 556
    :cond_0
    new-instance v3, Ljava/lang/String;

    #@1a
    const-string/jumbo v4, "UTF8"

    #@1d
    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@20
    return-object v3
.end method

.method private static isDerString(Lsun/security/util/DerValue;Z)Z
    .locals 3
    .param p0, "value"    # Lsun/security/util/DerValue;
    .param p1, "canonical"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1027
    if-eqz p1, :cond_0

    #@4
    .line 1028
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@6
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 1033
    return v1

    #@a
    .line 1031
    :sswitch_0
    return v2

    #@b
    .line 1036
    :cond_0
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    #@d
    sparse-switch v0, :sswitch_data_1

    #@10
    .line 1045
    return v1

    #@11
    .line 1043
    :sswitch_1
    return v2

    #@12
    .line 1028
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch

    #@1c
    .line 1036
    :sswitch_data_1
    .sparse-switch
        0xc -> :sswitch_1
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1b -> :sswitch_1
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method private static isTerminator(II)Z
    .locals 3
    .param p0, "ch"    # I
    .param p1, "format"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 560
    sparse-switch p0, :sswitch_data_0

    #@5
    .line 569
    return v1

    #@6
    .line 564
    :sswitch_0
    return v0

    #@7
    .line 567
    :sswitch_1
    const/4 v2, 0x3

    #@8
    if-eq p1, v2, :cond_0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    move v0, v1

    #@c
    goto :goto_0

    #@d
    .line 560
    nop

    #@e
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_1
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private static parseHexString(Ljava/io/Reader;I)Lsun/security/util/DerValue;
    .locals 10
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x20

    #@2
    const/16 v8, 0xa

    #@4
    const/4 v7, 0x1

    #@5
    .line 266
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@7
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@a
    .line 267
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    #@b
    .line 268
    .local v0, "b":B
    const/4 v3, 0x0

    #@c
    .line 270
    .end local v0    # "b":B
    .local v3, "cNdx":I
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    #@f
    move-result v2

    #@10
    .line 272
    .local v2, "c":I
    invoke-static {v2, p1}, Lsun/security/x509/AVA;->isTerminator(II)Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    .line 304
    :cond_0
    if-nez v3, :cond_7

    #@18
    .line 305
    new-instance v5, Ljava/io/IOException;

    #@1a
    const-string/jumbo v6, "AVA parse, zero hex digits"

    #@1d
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@20
    throw v5

    #@21
    .line 277
    :cond_1
    if-eq v2, v9, :cond_2

    #@23
    if-ne v2, v8, :cond_4

    #@25
    .line 279
    :cond_2
    :goto_1
    if-eq v2, v9, :cond_3

    #@27
    if-eq v2, v8, :cond_3

    #@29
    .line 280
    new-instance v5, Ljava/io/IOException;

    #@2b
    new-instance v6, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v7, "AVA parse, invalid hex digit: "

    #@33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    int-to-char v7, v2

    #@38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@43
    throw v5

    #@44
    .line 282
    :cond_3
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    #@47
    move-result v2

    #@48
    .line 283
    invoke-static {v2, p1}, Lsun/security/x509/AVA;->isTerminator(II)Z

    #@4b
    move-result v5

    #@4c
    if-nez v5, :cond_0

    #@4e
    goto :goto_1

    #@4f
    .line 287
    :cond_4
    const-string/jumbo v5, "0123456789ABCDEF"

    #@52
    int-to-char v6, v2

    #@53
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    #@56
    move-result v6

    #@57
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    #@5a
    move-result v4

    #@5b
    .line 289
    .local v4, "cVal":I
    const/4 v5, -0x1

    #@5c
    if-ne v4, v5, :cond_5

    #@5e
    .line 290
    new-instance v5, Ljava/io/IOException;

    #@60
    new-instance v6, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v7, "AVA parse, invalid hex digit: "

    #@68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    .line 291
    int-to-char v7, v2

    #@6d
    .line 290
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v6

    #@75
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@78
    throw v5

    #@79
    .line 294
    :cond_5
    rem-int/lit8 v5, v3, 0x2

    #@7b
    if-ne v5, v7, :cond_6

    #@7d
    .line 295
    mul-int/lit8 v5, v0, 0x10

    #@7f
    int-to-byte v6, v4

    #@80
    add-int/2addr v5, v6

    #@81
    int-to-byte v0, v5

    #@82
    .line 296
    .local v0, "b":B
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@85
    .line 300
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@87
    goto :goto_0

    #@88
    .line 298
    .end local v0    # "b":B
    :cond_6
    int-to-byte v0, v4

    #@89
    .restart local v0    # "b":B
    goto :goto_2

    #@8a
    .line 309
    .end local v0    # "b":B
    .end local v4    # "cVal":I
    :cond_7
    rem-int/lit8 v5, v3, 0x2

    #@8c
    if-ne v5, v7, :cond_8

    #@8e
    .line 310
    new-instance v5, Ljava/io/IOException;

    #@90
    const-string/jumbo v6, "AVA parse, odd number of hex digits"

    #@93
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@96
    throw v5

    #@97
    .line 313
    :cond_8
    new-instance v5, Lsun/security/util/DerValue;

    #@99
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@9c
    move-result-object v6

    #@9d
    invoke-direct {v5, v6}, Lsun/security/util/DerValue;-><init>([B)V

    #@a0
    return-object v5
.end method

.method private parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .locals 9
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "temp"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x5c

    #@2
    const/16 v7, 0x22

    #@4
    .line 324
    const-string/jumbo v5, "Quoted string did not end in quote"

    #@7
    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    .line 326
    .local v0, "c":I
    new-instance v1, Ljava/util/ArrayList;

    #@d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 327
    .local v1, "embeddedHex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v4, 0x1

    #@11
    .line 328
    :goto_0
    if-eq v0, v7, :cond_3

    #@13
    .line 329
    if-ne v0, v8, :cond_1

    #@15
    .line 330
    const-string/jumbo v5, "Quoted string did not end in quote"

    #@18
    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    .line 333
    const/4 v2, 0x0

    #@1d
    .line 334
    .local v2, "hexByte":Ljava/lang/Byte;
    invoke-static {v0, p1}, Lsun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    #@20
    move-result-object v2

    #@21
    .local v2, "hexByte":Ljava/lang/Byte;
    if-eqz v2, :cond_0

    #@23
    .line 337
    const/4 v4, 0x0

    #@24
    .line 341
    .local v4, "isPrintableString":Z
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    .line 342
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    #@2a
    move-result v0

    #@2b
    goto :goto_0

    #@2c
    .line 346
    .end local v4    # "isPrintableString":Z
    :cond_0
    if-eq v0, v8, :cond_1

    #@2e
    if-eq v0, v7, :cond_1

    #@30
    .line 347
    const-string/jumbo v5, ",+=\n<>#;"

    #@33
    int-to-char v6, v0

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    #@37
    move-result v5

    #@38
    if-gez v5, :cond_1

    #@3a
    .line 348
    new-instance v5, Ljava/io/IOException;

    #@3c
    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v7, "Invalid escaped character in AVA: "

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    .line 350
    int-to-char v7, v0

    #@49
    .line 349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    .line 348
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@54
    throw v5

    #@55
    .line 355
    .end local v2    # "hexByte":Ljava/lang/Byte;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@58
    move-result v5

    #@59
    if-lez v5, :cond_2

    #@5b
    .line 356
    invoke-static {v1}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    .line 357
    .local v3, "hexString":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 358
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@65
    .line 362
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_2
    int-to-char v5, v0

    #@66
    invoke-static {v5}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    #@69
    move-result v5

    #@6a
    and-int/2addr v4, v5

    #@6b
    .line 363
    .local v4, "isPrintableString":Z
    int-to-char v5, v0

    #@6c
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6f
    .line 364
    const-string/jumbo v5, "Quoted string did not end in quote"

    #@72
    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    #@75
    move-result v0

    #@76
    goto :goto_0

    #@77
    .line 368
    .end local v4    # "isPrintableString":Z
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7a
    move-result v5

    #@7b
    if-lez v5, :cond_4

    #@7d
    .line 369
    invoke-static {v1}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    .line 370
    .restart local v3    # "hexString":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    .line 371
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@87
    .line 375
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    #@8a
    move-result v0

    #@8b
    .line 376
    const/16 v5, 0xa

    #@8d
    if-eq v0, v5, :cond_4

    #@8f
    const/16 v5, 0x20

    #@91
    if-eq v0, v5, :cond_4

    #@93
    .line 377
    const/4 v5, -0x1

    #@94
    if-eq v0, v5, :cond_5

    #@96
    .line 378
    new-instance v5, Ljava/io/IOException;

    #@98
    const-string/jumbo v6, "AVA had characters other than whitespace after terminating quote"

    #@9b
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v5

    #@9f
    .line 384
    :cond_5
    iget-object v5, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    #@a1
    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    #@a3
    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@a6
    move-result v5

    #@a7
    if-nez v5, :cond_6

    #@a9
    .line 385
    iget-object v5, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    #@ab
    sget-object v6, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    #@ad
    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@b0
    move-result v5

    #@b1
    if-eqz v5, :cond_7

    #@b3
    .line 386
    sget-boolean v5, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    #@b5
    if-nez v5, :cond_7

    #@b7
    .line 388
    :cond_6
    new-instance v5, Lsun/security/util/DerValue;

    #@b9
    .line 389
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v6

    #@bd
    .line 388
    const/16 v7, 0x16

    #@bf
    invoke-direct {v5, v7, v6}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    #@c2
    return-object v5

    #@c3
    .line 390
    :cond_7
    if-eqz v4, :cond_8

    #@c5
    .line 391
    new-instance v5, Lsun/security/util/DerValue;

    #@c7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v6

    #@cb
    invoke-direct {v5, v6}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@ce
    return-object v5

    #@cf
    .line 393
    :cond_8
    new-instance v5, Lsun/security/util/DerValue;

    #@d1
    .line 394
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v6

    #@d5
    .line 393
    const/16 v7, 0xc

    #@d7
    invoke-direct {v5, v7, v6}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    #@da
    return-object v5
.end method

.method private parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .locals 11
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "c"    # I
    .param p3, "format"    # I
    .param p4, "temp"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 401
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 402
    .local v0, "embeddedHex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v5, 0x1

    #@6
    .line 403
    .local v5, "isPrintableString":Z
    const/4 v1, 0x0

    #@7
    .line 404
    .local v1, "escape":Z
    const/4 v6, 0x1

    #@8
    .line 405
    .local v6, "leadingChar":Z
    const/4 v7, 0x0

    #@9
    .line 407
    .end local v5    # "isPrintableString":Z
    .local v7, "spaceCount":I
    :cond_0
    const/4 v1, 0x0

    #@a
    .line 408
    const/16 v8, 0x5c

    #@c
    if-ne p2, v8, :cond_9

    #@e
    .line 409
    const/4 v1, 0x1

    #@f
    .line 410
    const-string/jumbo v8, "Invalid trailing backslash"

    #@12
    invoke-static {p1, v8}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    #@15
    move-result p2

    #@16
    .line 413
    const/4 v2, 0x0

    #@17
    .line 414
    .local v2, "hexByte":Ljava/lang/Byte;
    invoke-static {p2, p1}, Lsun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    #@1a
    move-result-object v2

    #@1b
    .local v2, "hexByte":Ljava/lang/Byte;
    if-eqz v2, :cond_1

    #@1d
    .line 417
    const/4 v5, 0x0

    #@1e
    .line 421
    .restart local v5    # "isPrintableString":Z
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    .line 422
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    #@24
    move-result p2

    #@25
    .line 423
    const/4 v6, 0x0

    #@26
    .line 502
    .end local v2    # "hexByte":Ljava/lang/Byte;
    .end local v5    # "isPrintableString":Z
    :goto_0
    invoke-static {p2, p3}, Lsun/security/x509/AVA;->isTerminator(II)Z

    #@29
    move-result v8

    #@2a
    if-eqz v8, :cond_0

    #@2c
    .line 504
    const/4 v8, 0x3

    #@2d
    if-ne p3, v8, :cond_e

    #@2f
    if-lez v7, :cond_e

    #@31
    .line 505
    new-instance v8, Ljava/io/IOException;

    #@33
    const-string/jumbo v9, "Incorrect AVA RFC2253 format - trailing space must be escaped"

    #@36
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@39
    throw v8

    #@3a
    .line 428
    .restart local v2    # "hexByte":Ljava/lang/Byte;
    :cond_1
    const/4 v8, 0x1

    #@3b
    if-ne p3, v8, :cond_3

    #@3d
    .line 429
    const-string/jumbo v8, ",=\n+<>#;\\\" "

    #@40
    int-to-char v9, p2

    #@41
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    #@44
    move-result v8

    #@45
    const/4 v9, -0x1

    #@46
    if-ne v8, v9, :cond_3

    #@48
    .line 434
    :cond_2
    new-instance v8, Ljava/io/IOException;

    #@4a
    .line 435
    new-instance v9, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v10, "Invalid escaped character in AVA: \'"

    #@52
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v9

    #@56
    .line 436
    int-to-char v10, p2

    #@57
    .line 435
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v9

    #@5b
    .line 436
    const-string/jumbo v10, "\'"

    #@5e
    .line 435
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    .line 434
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@69
    throw v8

    #@6a
    .line 430
    :cond_3
    const/4 v8, 0x2

    #@6b
    if-ne p3, v8, :cond_4

    #@6d
    .line 431
    const-string/jumbo v8, ",+=\n<>#;"

    #@70
    int-to-char v9, p2

    #@71
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    #@74
    move-result v8

    #@75
    const/4 v9, -0x1

    #@76
    if-ne v8, v9, :cond_4

    #@78
    .line 432
    const/16 v8, 0x5c

    #@7a
    if-eq p2, v8, :cond_4

    #@7c
    const/16 v8, 0x22

    #@7e
    if-ne p2, v8, :cond_2

    #@80
    .line 438
    :cond_4
    const/4 v8, 0x3

    #@81
    if-ne p3, v8, :cond_5

    #@83
    .line 439
    const/16 v8, 0x20

    #@85
    if-ne p2, v8, :cond_7

    #@87
    .line 441
    if-nez v6, :cond_5

    #@89
    invoke-static {p1}, Lsun/security/x509/AVA;->trailingSpace(Ljava/io/Reader;)Z

    #@8c
    move-result v8

    #@8d
    if-eqz v8, :cond_6

    #@8f
    .line 474
    .end local v2    # "hexByte":Ljava/lang/Byte;
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@92
    move-result v8

    #@93
    if-lez v8, :cond_b

    #@95
    .line 476
    const/4 v4, 0x0

    #@96
    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_a

    #@98
    .line 477
    const-string/jumbo v8, " "

    #@9b
    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    .line 476
    add-int/lit8 v4, v4, 0x1

    #@a0
    goto :goto_1

    #@a1
    .line 442
    .end local v4    # "i":I
    .restart local v2    # "hexByte":Ljava/lang/Byte;
    :cond_6
    new-instance v8, Ljava/io/IOException;

    #@a3
    .line 443
    const-string/jumbo v9, "Invalid escaped space character in AVA.  Only a leading or trailing space character can be escaped."

    #@a6
    .line 442
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v8

    #@aa
    .line 447
    :cond_7
    const/16 v8, 0x23

    #@ac
    if-ne p2, v8, :cond_8

    #@ae
    .line 449
    if-nez v6, :cond_5

    #@b0
    .line 450
    new-instance v8, Ljava/io/IOException;

    #@b2
    .line 451
    const-string/jumbo v9, "Invalid escaped \'#\' character in AVA.  Only a leading \'#\' can be escaped."

    #@b5
    .line 450
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b8
    throw v8

    #@b9
    .line 454
    :cond_8
    const-string/jumbo v8, ",+\"\\<>;"

    #@bc
    int-to-char v9, p2

    #@bd
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    #@c0
    move-result v8

    #@c1
    const/4 v9, -0x1

    #@c2
    if-ne v8, v9, :cond_5

    #@c4
    .line 455
    new-instance v8, Ljava/io/IOException;

    #@c6
    .line 456
    new-instance v9, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v10, "Invalid escaped character in AVA: \'"

    #@ce
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v9

    #@d2
    .line 457
    int-to-char v10, p2

    #@d3
    .line 456
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v9

    #@d7
    .line 457
    const-string/jumbo v10, "\'"

    #@da
    .line 456
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v9

    #@de
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v9

    #@e2
    .line 455
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e5
    throw v8

    #@e6
    .line 464
    .end local v2    # "hexByte":Ljava/lang/Byte;
    :cond_9
    const/4 v8, 0x3

    #@e7
    if-ne p3, v8, :cond_5

    #@e9
    .line 465
    const-string/jumbo v8, ",+\"\\<>;"

    #@ec
    int-to-char v9, p2

    #@ed
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    #@f0
    move-result v8

    #@f1
    const/4 v9, -0x1

    #@f2
    if-eq v8, v9, :cond_5

    #@f4
    .line 466
    new-instance v8, Ljava/io/IOException;

    #@f6
    .line 467
    new-instance v9, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v10, "Character \'"

    #@fe
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v9

    #@102
    int-to-char v10, p2

    #@103
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@106
    move-result-object v9

    #@107
    .line 468
    const-string/jumbo v10, "\' in AVA appears without escape"

    #@10a
    .line 467
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v9

    #@10e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v9

    #@112
    .line 466
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@115
    throw v8

    #@116
    .line 479
    .restart local v4    # "i":I
    :cond_a
    const/4 v7, 0x0

    #@117
    .line 481
    invoke-static {v0}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    #@11a
    move-result-object v3

    #@11b
    .line 482
    .local v3, "hexString":Ljava/lang/String;
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    .line 483
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@121
    .line 487
    .end local v3    # "hexString":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_b
    int-to-char v8, p2

    #@122
    invoke-static {v8}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    #@125
    move-result v8

    #@126
    and-int/2addr v5, v8

    #@127
    .line 488
    .local v5, "isPrintableString":Z
    const/16 v8, 0x20

    #@129
    if-ne p2, v8, :cond_c

    #@12b
    if-nez v1, :cond_c

    #@12d
    .line 491
    add-int/lit8 v7, v7, 0x1

    #@12f
    .line 500
    :goto_2
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    #@132
    move-result p2

    #@133
    .line 501
    const/4 v6, 0x0

    #@134
    goto/16 :goto_0

    #@136
    .line 494
    :cond_c
    const/4 v4, 0x0

    #@137
    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v7, :cond_d

    #@139
    .line 495
    const-string/jumbo v8, " "

    #@13c
    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    .line 494
    add-int/lit8 v4, v4, 0x1

    #@141
    goto :goto_3

    #@142
    .line 497
    :cond_d
    const/4 v7, 0x0

    #@143
    .line 498
    int-to-char v8, p2

    #@144
    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@147
    goto :goto_2

    #@148
    .line 510
    .end local v4    # "i":I
    .end local v5    # "isPrintableString":Z
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@14b
    move-result v8

    #@14c
    if-lez v8, :cond_f

    #@14e
    .line 511
    invoke-static {v0}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    #@151
    move-result-object v3

    #@152
    .line 512
    .restart local v3    # "hexString":Ljava/lang/String;
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    .line 513
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@158
    .line 518
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_f
    iget-object v8, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    #@15a
    sget-object v9, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    #@15c
    invoke-virtual {v8, v9}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@15f
    move-result v8

    #@160
    if-nez v8, :cond_10

    #@162
    .line 519
    iget-object v8, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    #@164
    sget-object v9, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    #@166
    invoke-virtual {v8, v9}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@169
    move-result v8

    #@16a
    if-eqz v8, :cond_11

    #@16c
    .line 520
    sget-boolean v8, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    #@16e
    if-nez v8, :cond_11

    #@170
    .line 522
    :cond_10
    new-instance v8, Lsun/security/util/DerValue;

    #@172
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v9

    #@176
    const/16 v10, 0x16

    #@178
    invoke-direct {v8, v10, v9}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    #@17b
    return-object v8

    #@17c
    .line 523
    :cond_11
    if-eqz v5, :cond_12

    #@17e
    .line 524
    new-instance v8, Lsun/security/util/DerValue;

    #@180
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@183
    move-result-object v9

    #@184
    invoke-direct {v8, v9}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    #@187
    return-object v8

    #@188
    .line 526
    :cond_12
    new-instance v8, Lsun/security/util/DerValue;

    #@18a
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18d
    move-result-object v9

    #@18e
    const/16 v10, 0xc

    #@190
    invoke-direct {v8, v10, v9}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    #@193
    return-object v8
.end method

.method private static readChar(Ljava/io/Reader;Ljava/lang/String;)I
    .locals 2
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 574
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    #@3
    move-result v0

    #@4
    .line 575
    .local v0, "c":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 576
    new-instance v1, Ljava/io/IOException;

    #@9
    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 578
    :cond_0
    return v0
.end method

.method private toKeyword(ILjava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 684
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-static {v0, p1, p2}, Lsun/security/x509/AVAKeyword;->getKeyword(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "keyword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1060
    new-instance v13, Ljava/lang/StringBuilder;

    #@2
    const/16 v18, 0x28

    #@4
    move/from16 v0, v18

    #@6
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 1062
    .local v13, "retval":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    #@b
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 1063
    const-string/jumbo v18, "="

    #@11
    move-object/from16 v0, v18

    #@13
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 1066
    :try_start_0
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@1a
    move-object/from16 v18, v0

    #@1c
    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    #@1f
    move-result-object v16

    #@20
    .line 1068
    .local v16, "valStr":Ljava/lang/String;
    if-nez v16, :cond_0

    #@22
    .line 1075
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@26
    move-object/from16 v18, v0

    #@28
    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->toByteArray()[B

    #@2b
    move-result-object v4

    #@2c
    .line 1077
    .local v4, "data":[B
    const/16 v18, 0x23

    #@2e
    move/from16 v0, v18

    #@30
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 1078
    const/4 v8, 0x0

    #@34
    .local v8, "i":I
    :goto_0
    array-length v0, v4

    #@35
    move/from16 v18, v0

    #@37
    move/from16 v0, v18

    #@39
    if-ge v8, v0, :cond_13

    #@3b
    .line 1079
    const-string/jumbo v18, "0123456789ABCDEF"

    #@3e
    aget-byte v19, v4, v8

    #@40
    shr-int/lit8 v19, v19, 0x4

    #@42
    and-int/lit8 v19, v19, 0xf

    #@44
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    #@47
    move-result v18

    #@48
    move/from16 v0, v18

    #@4a
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d
    .line 1080
    const-string/jumbo v18, "0123456789ABCDEF"

    #@50
    aget-byte v19, v4, v8

    #@52
    and-int/lit8 v19, v19, 0xf

    #@54
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    #@57
    move-result v18

    #@58
    move/from16 v0, v18

    #@5a
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5d
    .line 1078
    add-int/lit8 v8, v8, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 1085
    .end local v4    # "data":[B
    .end local v8    # "i":I
    :cond_0
    const/4 v12, 0x0

    #@61
    .line 1086
    .local v12, "quoteNeeded":Z
    new-instance v14, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    .line 1087
    .local v14, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    #@67
    .line 1088
    .local v11, "previousWhite":Z
    const-string/jumbo v6, ",+=\n<>#;\\\""

    #@6a
    .line 1095
    .local v6, "escapees":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@6d
    move-result v10

    #@6e
    .line 1097
    .local v10, "length":I
    const/16 v18, 0x1

    #@70
    move/from16 v0, v18

    #@72
    if-le v10, v0, :cond_4

    #@74
    const/16 v18, 0x0

    #@76
    move-object/from16 v0, v16

    #@78
    move/from16 v1, v18

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@7d
    move-result v18

    #@7e
    const/16 v19, 0x22

    #@80
    move/from16 v0, v18

    #@82
    move/from16 v1, v19

    #@84
    if-ne v0, v1, :cond_4

    #@86
    .line 1098
    add-int/lit8 v18, v10, -0x1

    #@88
    move-object/from16 v0, v16

    #@8a
    move/from16 v1, v18

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@8f
    move-result v18

    #@90
    const/16 v19, 0x22

    #@92
    move/from16 v0, v18

    #@94
    move/from16 v1, v19

    #@96
    if-ne v0, v1, :cond_3

    #@98
    const/4 v2, 0x1

    #@99
    .line 1100
    .local v2, "alreadyQuoted":Z
    :goto_1
    const/4 v8, 0x0

    #@9a
    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v10, :cond_10

    #@9c
    .line 1101
    move-object/from16 v0, v16

    #@9e
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@a1
    move-result v3

    #@a2
    .line 1102
    .local v3, "c":C
    if-eqz v2, :cond_5

    #@a4
    if-eqz v8, :cond_1

    #@a6
    add-int/lit8 v18, v10, -0x1

    #@a8
    move/from16 v0, v18

    #@aa
    if-ne v8, v0, :cond_5

    #@ac
    .line 1103
    :cond_1
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@af
    .line 1100
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    #@b1
    goto :goto_2

    #@b2
    .line 1098
    .end local v2    # "alreadyQuoted":Z
    .end local v3    # "c":C
    .end local v8    # "i":I
    :cond_3
    const/4 v2, 0x0

    #@b3
    .restart local v2    # "alreadyQuoted":Z
    goto :goto_1

    #@b4
    .line 1097
    .end local v2    # "alreadyQuoted":Z
    :cond_4
    const/4 v2, 0x0

    #@b5
    .restart local v2    # "alreadyQuoted":Z
    goto :goto_1

    #@b6
    .line 1106
    .restart local v3    # "c":C
    .restart local v8    # "i":I
    :cond_5
    invoke-static {v3}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    #@b9
    move-result v18

    #@ba
    if-nez v18, :cond_6

    #@bc
    .line 1107
    const-string/jumbo v18, ",+=\n<>#;\\\""

    #@bf
    move-object/from16 v0, v18

    #@c1
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    #@c4
    move-result v18

    #@c5
    if-ltz v18, :cond_e

    #@c7
    .line 1110
    :cond_6
    if-nez v12, :cond_8

    #@c9
    .line 1111
    if-nez v8, :cond_b

    #@cb
    const/16 v18, 0x20

    #@cd
    move/from16 v0, v18

    #@cf
    if-eq v3, v0, :cond_7

    #@d1
    const/16 v18, 0xa

    #@d3
    move/from16 v0, v18

    #@d5
    if-ne v3, v0, :cond_b

    #@d7
    .line 1113
    :cond_7
    :goto_4
    const/4 v12, 0x1

    #@d8
    .line 1117
    :cond_8
    const/16 v18, 0x20

    #@da
    move/from16 v0, v18

    #@dc
    if-eq v3, v0, :cond_c

    #@de
    const/16 v18, 0xa

    #@e0
    move/from16 v0, v18

    #@e2
    if-eq v3, v0, :cond_c

    #@e4
    .line 1119
    const/16 v18, 0x22

    #@e6
    move/from16 v0, v18

    #@e8
    if-eq v3, v0, :cond_9

    #@ea
    const/16 v18, 0x5c

    #@ec
    move/from16 v0, v18

    #@ee
    if-ne v3, v0, :cond_a

    #@f0
    .line 1120
    :cond_9
    const/16 v18, 0x5c

    #@f2
    move/from16 v0, v18

    #@f4
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f7
    .line 1122
    :cond_a
    const/4 v11, 0x0

    #@f8
    .line 1130
    :goto_5
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@fb
    goto :goto_3

    #@fc
    .line 1176
    .end local v2    # "alreadyQuoted":Z
    .end local v3    # "c":C
    .end local v6    # "escapees":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "length":I
    .end local v11    # "previousWhite":Z
    .end local v12    # "quoteNeeded":Z
    .end local v14    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v16    # "valStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@fd
    .line 1177
    .local v5, "e":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@ff
    const-string/jumbo v19, "DER Value conversion"

    #@102
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@105
    throw v18

    #@106
    .line 1112
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "alreadyQuoted":Z
    .restart local v3    # "c":C
    .restart local v6    # "escapees":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v10    # "length":I
    .restart local v11    # "previousWhite":Z
    .restart local v12    # "quoteNeeded":Z
    .restart local v14    # "sbuffer":Ljava/lang/StringBuilder;
    .restart local v16    # "valStr":Ljava/lang/String;
    :cond_b
    :try_start_1
    const-string/jumbo v18, ",+=\n<>#;\\\""

    #@109
    move-object/from16 v0, v18

    #@10b
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    #@10e
    move-result v18

    #@10f
    if-ltz v18, :cond_8

    #@111
    goto :goto_4

    #@112
    .line 1124
    :cond_c
    if-nez v12, :cond_d

    #@114
    if-eqz v11, :cond_d

    #@116
    .line 1125
    const/4 v12, 0x1

    #@117
    .line 1127
    :cond_d
    const/4 v11, 0x1

    #@118
    goto :goto_5

    #@119
    .line 1132
    :cond_e
    sget-object v18, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    #@11b
    if-eqz v18, :cond_f

    #@11d
    const-string/jumbo v18, "ava"

    #@120
    invoke-static/range {v18 .. v18}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    #@123
    move-result v18

    #@124
    if-eqz v18, :cond_f

    #@126
    .line 1137
    const/4 v11, 0x0

    #@127
    .line 1141
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@12a
    move-result-object v18

    #@12b
    const-string/jumbo v19, "UTF8"

    #@12e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@131
    move-result-object v17

    #@132
    .line 1142
    .local v17, "valueBytes":[B
    const/4 v9, 0x0

    #@133
    .local v9, "j":I
    :goto_6
    move-object/from16 v0, v17

    #@135
    array-length v0, v0

    #@136
    move/from16 v18, v0

    #@138
    move/from16 v0, v18

    #@13a
    if-ge v9, v0, :cond_2

    #@13c
    .line 1143
    const/16 v18, 0x5c

    #@13e
    move/from16 v0, v18

    #@140
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@143
    .line 1145
    aget-byte v18, v17, v9

    #@145
    ushr-int/lit8 v18, v18, 0x4

    #@147
    and-int/lit8 v18, v18, 0xf

    #@149
    const/16 v19, 0x10

    #@14b
    .line 1144
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    #@14e
    move-result v7

    #@14f
    .line 1146
    .local v7, "hexChar":C
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    #@152
    move-result v18

    #@153
    move/from16 v0, v18

    #@155
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@158
    .line 1148
    aget-byte v18, v17, v9

    #@15a
    and-int/lit8 v18, v18, 0xf

    #@15c
    const/16 v19, 0x10

    #@15e
    .line 1147
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    #@161
    move-result v7

    #@162
    .line 1149
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    #@165
    move-result v18

    #@166
    move/from16 v0, v18

    #@168
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16b
    .line 1142
    add-int/lit8 v9, v9, 0x1

    #@16d
    goto :goto_6

    #@16e
    .line 1155
    .end local v7    # "hexChar":C
    .end local v9    # "j":I
    .end local v17    # "valueBytes":[B
    :cond_f
    const/4 v11, 0x0

    #@16f
    .line 1156
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@172
    goto/16 :goto_3

    #@174
    .line 1161
    .end local v3    # "c":C
    :cond_10
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    #@177
    move-result v18

    #@178
    if-lez v18, :cond_12

    #@17a
    .line 1162
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    #@17d
    move-result v18

    #@17e
    add-int/lit8 v18, v18, -0x1

    #@180
    move/from16 v0, v18

    #@182
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@185
    move-result v15

    #@186
    .line 1163
    .local v15, "trailChar":C
    const/16 v18, 0x20

    #@188
    move/from16 v0, v18

    #@18a
    if-eq v15, v0, :cond_11

    #@18c
    const/16 v18, 0xa

    #@18e
    move/from16 v0, v18

    #@190
    if-ne v15, v0, :cond_12

    #@192
    .line 1164
    :cond_11
    const/4 v12, 0x1

    #@193
    .line 1170
    .end local v15    # "trailChar":C
    :cond_12
    if-nez v2, :cond_14

    #@195
    if-eqz v12, :cond_14

    #@197
    .line 1171
    const-string/jumbo v18, "\""

    #@19a
    move-object/from16 v0, v18

    #@19c
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v18

    #@1a0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a3
    move-result-object v19

    #@1a4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v18

    #@1a8
    const-string/jumbo v19, "\""

    #@1ab
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@1ae
    .line 1180
    .end local v2    # "alreadyQuoted":Z
    .end local v6    # "escapees":Ljava/lang/String;
    .end local v10    # "length":I
    .end local v11    # "previousWhite":Z
    .end local v12    # "quoteNeeded":Z
    .end local v14    # "sbuffer":Ljava/lang/StringBuilder;
    :cond_13
    :goto_7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b1
    move-result-object v18

    #@1b2
    return-object v18

    #@1b3
    .line 1173
    .restart local v2    # "alreadyQuoted":Z
    .restart local v6    # "escapees":Ljava/lang/String;
    .restart local v10    # "length":I
    .restart local v11    # "previousWhite":Z
    .restart local v12    # "quoteNeeded":Z
    .restart local v14    # "sbuffer":Ljava/lang/StringBuilder;
    :cond_14
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v18

    #@1b7
    move-object/from16 v0, v18

    #@1b9
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@1bc
    goto :goto_7
.end method

.method private static trailingSpace(Ljava/io/Reader;)Z
    .locals 5
    .param p0, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    .line 583
    const/4 v2, 0x0

    #@3
    .line 585
    .local v2, "trailing":Z
    invoke-virtual {p0}, Ljava/io/Reader;->markSupported()Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 587
    const/4 v3, 0x1

    #@a
    return v3

    #@b
    .line 592
    :cond_0
    const/16 v3, 0x270f

    #@d
    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    #@10
    .line 594
    :cond_1
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    #@13
    move-result v1

    #@14
    .line 595
    .local v1, "nextChar":I
    const/4 v3, -0x1

    #@15
    if-ne v1, v3, :cond_2

    #@17
    .line 596
    const/4 v2, 0x1

    #@18
    .line 612
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    #@1b
    .line 613
    return v2

    #@1c
    .line 598
    :cond_2
    if-eq v1, v4, :cond_1

    #@1e
    .line 600
    const/16 v3, 0x5c

    #@20
    if-ne v1, v3, :cond_3

    #@22
    .line 601
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    #@25
    move-result v0

    #@26
    .line 602
    .local v0, "followingChar":I
    if-eq v0, v4, :cond_1

    #@28
    .line 603
    const/4 v2, 0x0

    #@29
    .line 604
    goto :goto_0

    #@2a
    .line 607
    .end local v0    # "followingChar":I
    :cond_3
    const/4 v2, 0x0

    #@2b
    .line 608
    goto :goto_0
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 674
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 675
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@7
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@a
    .line 677
    .local v1, "tmp2":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    #@c
    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@f
    .line 678
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@11
    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    #@14
    .line 679
    const/16 v2, 0x30

    #@16
    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@19
    .line 680
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@20
    .line 673
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lsun/security/x509/AVA;->derEncode(Ljava/io/OutputStream;)V

    #@3
    .line 660
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 637
    if-ne p0, p1, :cond_0

    #@2
    .line 638
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 640
    :cond_0
    instance-of v1, p1, Lsun/security/x509/AVA;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 641
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 643
    check-cast v0, Lsun/security/x509/AVA;

    #@d
    .line 644
    .local v0, "other":Lsun/security/x509/AVA;
    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 645
    invoke-virtual {v0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public getDerValue()Lsun/security/util/DerValue;
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@2
    return-object v0
.end method

.method public getObjectIdentifier()Lsun/security/util/ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 251
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@2
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 252
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    #@8
    .line 253
    new-instance v2, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v3, "AVA string is null"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 256
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@12
    .line 258
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "AVA error: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2b
    throw v2

    #@2c
    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "s":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method hasRFC2253Keyword()Z
    .locals 2

    #@0
    .prologue
    .line 1051
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-static {v0, v1}, Lsun/security/x509/AVAKeyword;->hasKeyword(Lsun/security/util/ObjectIdentifier;I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 654
    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public toRFC1779String()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 702
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lsun/security/x509/AVA;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toRFC1779String(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 712
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public toRFC2253CanonicalString()Ljava/lang/String;
    .locals 15

    #@0
    .prologue
    .line 890
    new-instance v10, Ljava/lang/StringBuilder;

    #@2
    const/16 v13, 0x28

    #@4
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 892
    .local v10, "typeAndValue":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@a
    move-result-object v13

    #@b
    const/4 v14, 0x3

    #@c
    invoke-direct {p0, v14, v13}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    #@f
    move-result-object v13

    #@10
    .line 891
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 893
    const/16 v13, 0x3d

    #@15
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 904
    const/4 v13, 0x0

    #@19
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    #@1c
    move-result v13

    #@1d
    const/16 v14, 0x30

    #@1f
    if-lt v13, v14, :cond_1

    #@21
    const/4 v13, 0x0

    #@22
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    #@25
    move-result v13

    #@26
    const/16 v14, 0x39

    #@28
    if-gt v13, v14, :cond_1

    #@2a
    .line 907
    :cond_0
    const/4 v3, 0x0

    #@2b
    .line 909
    .local v3, "data":[B
    :try_start_0
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@2d
    invoke-virtual {v13}, Lsun/security/util/DerValue;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result-object v3

    #@31
    .line 913
    .local v3, "data":[B
    const/16 v13, 0x23

    #@33
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    .line 914
    const/4 v7, 0x0

    #@37
    .local v7, "j":I
    :goto_0
    array-length v13, v3

    #@38
    if-ge v7, v13, :cond_c

    #@3a
    .line 915
    aget-byte v0, v3, v7

    #@3c
    .line 916
    .local v0, "b":B
    ushr-int/lit8 v13, v0, 0x4

    #@3e
    and-int/lit8 v13, v13, 0xf

    #@40
    const/16 v14, 0x10

    #@42
    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    #@45
    move-result v13

    #@46
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    .line 917
    and-int/lit8 v13, v0, 0xf

    #@4b
    const/16 v14, 0x10

    #@4d
    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    #@50
    move-result v13

    #@51
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@54
    .line 914
    add-int/lit8 v7, v7, 0x1

    #@56
    goto :goto_0

    #@57
    .line 905
    .end local v0    # "b":B
    .end local v3    # "data":[B
    .end local v7    # "j":I
    :cond_1
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@59
    const/4 v14, 0x1

    #@5a
    invoke-static {v13, v14}, Lsun/security/x509/AVA;->isDerString(Lsun/security/util/DerValue;Z)Z

    #@5d
    move-result v13

    #@5e
    if-nez v13, :cond_2

    #@60
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@62
    iget-byte v13, v13, Lsun/security/util/DerValue;->tag:B

    #@64
    const/16 v14, 0x14

    #@66
    if-ne v13, v14, :cond_0

    #@68
    .line 928
    :cond_2
    const/4 v11, 0x0

    #@69
    .line 930
    .local v11, "valStr":Ljava/lang/String;
    :try_start_1
    new-instance v11, Ljava/lang/String;

    #@6b
    .end local v11    # "valStr":Ljava/lang/String;
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@6d
    invoke-virtual {v13}, Lsun/security/util/DerValue;->getDataBytes()[B

    #@70
    move-result-object v13

    #@71
    const-string/jumbo v14, "UTF8"

    #@74
    invoke-direct {v11, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@77
    .line 953
    .local v11, "valStr":Ljava/lang/String;
    const-string/jumbo v4, ",+<>;\"\\"

    #@7a
    .line 954
    .local v4, "escapees":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    .line 955
    .local v9, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    #@80
    .line 957
    .local v8, "previousWhite":Z
    const/4 v5, 0x0

    #@81
    .local v5, "i":I
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@84
    move-result v13

    #@85
    if-ge v5, v13, :cond_b

    #@87
    .line 958
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    #@8a
    move-result v1

    #@8b
    .line 960
    .local v1, "c":C
    invoke-static {v1}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    #@8e
    move-result v13

    #@8f
    if-nez v13, :cond_3

    #@91
    .line 961
    const-string/jumbo v13, ",+<>;\"\\"

    #@94
    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    #@97
    move-result v13

    #@98
    if-ltz v13, :cond_6

    #@9a
    .line 965
    :cond_3
    if-nez v5, :cond_8

    #@9c
    const/16 v13, 0x23

    #@9e
    if-ne v1, v13, :cond_8

    #@a0
    .line 966
    :goto_2
    const/16 v13, 0x5c

    #@a2
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a5
    .line 970
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@a8
    move-result v13

    #@a9
    if-nez v13, :cond_9

    #@ab
    .line 971
    const/4 v8, 0x0

    #@ac
    .line 972
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@af
    .line 957
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    #@b1
    goto :goto_1

    #@b2
    .line 910
    .end local v1    # "c":C
    .end local v4    # "escapees":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "previousWhite":Z
    .end local v9    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v11    # "valStr":Ljava/lang/String;
    .local v3, "data":[B
    :catch_0
    move-exception v6

    #@b3
    .line 911
    .local v6, "ie":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@b5
    const-string/jumbo v14, "DER Value conversion"

    #@b8
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v13

    #@bc
    .line 931
    .end local v3    # "data":[B
    .end local v6    # "ie":Ljava/io/IOException;
    :catch_1
    move-exception v6

    #@bd
    .line 932
    .restart local v6    # "ie":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@bf
    const-string/jumbo v14, "DER Value conversion"

    #@c2
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v13

    #@c6
    .line 962
    .end local v6    # "ie":Ljava/io/IOException;
    .restart local v1    # "c":C
    .restart local v4    # "escapees":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v8    # "previousWhite":Z
    .restart local v9    # "sbuffer":Ljava/lang/StringBuilder;
    .restart local v11    # "valStr":Ljava/lang/String;
    :cond_6
    if-nez v5, :cond_7

    #@c8
    const/16 v13, 0x23

    #@ca
    if-eq v1, v13, :cond_3

    #@cc
    .line 984
    :cond_7
    sget-object v13, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    #@ce
    if-eqz v13, :cond_a

    #@d0
    const-string/jumbo v13, "ava"

    #@d3
    invoke-static {v13}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    #@d6
    move-result v13

    #@d7
    if-eqz v13, :cond_a

    #@d9
    .line 989
    const/4 v8, 0x0

    #@da
    .line 991
    const/4 v12, 0x0

    #@db
    .line 993
    .local v12, "valueBytes":[B
    :try_start_2
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@de
    move-result-object v13

    #@df
    const-string/jumbo v14, "UTF8"

    #@e2
    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@e5
    move-result-object v12

    #@e6
    .line 998
    .local v12, "valueBytes":[B
    const/4 v7, 0x0

    #@e7
    .restart local v7    # "j":I
    :goto_4
    array-length v13, v12

    #@e8
    if-ge v7, v13, :cond_5

    #@ea
    .line 999
    const/16 v13, 0x5c

    #@ec
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ef
    .line 1001
    aget-byte v13, v12, v7

    #@f1
    ushr-int/lit8 v13, v13, 0x4

    #@f3
    and-int/lit8 v13, v13, 0xf

    #@f5
    const/16 v14, 0x10

    #@f7
    .line 1000
    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    #@fa
    move-result v13

    #@fb
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@fe
    .line 1003
    aget-byte v13, v12, v7

    #@100
    and-int/lit8 v13, v13, 0xf

    #@102
    const/16 v14, 0x10

    #@104
    .line 1002
    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    #@107
    move-result v13

    #@108
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10b
    .line 998
    add-int/lit8 v7, v7, 0x1

    #@10d
    goto :goto_4

    #@10e
    .line 965
    .end local v7    # "j":I
    .end local v12    # "valueBytes":[B
    :cond_8
    const-string/jumbo v13, ",+<>;\"\\"

    #@111
    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    #@114
    move-result v13

    #@115
    if-ltz v13, :cond_4

    #@117
    goto :goto_2

    #@118
    .line 974
    :cond_9
    if-nez v8, :cond_5

    #@11a
    .line 976
    const/4 v8, 0x1

    #@11b
    .line 977
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11e
    goto :goto_3

    #@11f
    .line 994
    .local v12, "valueBytes":[B
    :catch_2
    move-exception v6

    #@120
    .line 995
    .restart local v6    # "ie":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@122
    .line 996
    const-string/jumbo v14, "DER Value conversion"

    #@125
    .line 995
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@128
    throw v13

    #@129
    .line 1009
    .end local v6    # "ie":Ljava/io/IOException;
    .end local v12    # "valueBytes":[B
    :cond_a
    const/4 v8, 0x0

    #@12a
    .line 1010
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12d
    goto :goto_3

    #@12e
    .line 1015
    .end local v1    # "c":C
    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v13

    #@132
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@135
    move-result-object v13

    #@136
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    .line 1018
    .end local v4    # "escapees":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "previousWhite":Z
    .end local v9    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v11    # "valStr":Ljava/lang/String;
    :cond_c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v2

    #@13d
    .line 1019
    .local v2, "canon":Ljava/lang/String;
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@13f
    invoke-virtual {v2, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@142
    move-result-object v13

    #@143
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@145
    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@148
    move-result-object v2

    #@149
    .line 1020
    sget-object v13, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    #@14b
    invoke-static {v2, v13}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    #@14e
    move-result-object v13

    #@14f
    return-object v13
.end method

.method public toRFC2253String()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 721
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lsun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toRFC2253String(Ljava/util/Map;)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 738
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    #@2
    const/16 v18, 0x64

    #@4
    move/from16 v0, v18

    #@6
    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 739
    .local v15, "typeAndValue":Ljava/lang/StringBuilder;
    const/16 v18, 0x3

    #@b
    move-object/from16 v0, p0

    #@d
    move/from16 v1, v18

    #@f
    move-object/from16 v2, p1

    #@11
    invoke-direct {v0, v1, v2}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    #@14
    move-result-object v18

    #@15
    move-object/from16 v0, v18

    #@17
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 740
    const/16 v18, 0x3d

    #@1c
    move/from16 v0, v18

    #@1e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 751
    const/16 v18, 0x0

    #@23
    move/from16 v0, v18

    #@25
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@28
    move-result v18

    #@29
    const/16 v19, 0x30

    #@2b
    move/from16 v0, v18

    #@2d
    move/from16 v1, v19

    #@2f
    if-lt v0, v1, :cond_1

    #@31
    const/16 v18, 0x0

    #@33
    move/from16 v0, v18

    #@35
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@38
    move-result v18

    #@39
    const/16 v19, 0x39

    #@3b
    move/from16 v0, v18

    #@3d
    move/from16 v1, v19

    #@3f
    if-gt v0, v1, :cond_1

    #@41
    .line 754
    :cond_0
    const/4 v6, 0x0

    #@42
    .line 756
    .local v6, "data":[B
    :try_start_0
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@46
    move-object/from16 v18, v0

    #@48
    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    move-result-object v6

    #@4c
    .line 760
    .local v6, "data":[B
    const/16 v18, 0x23

    #@4e
    move/from16 v0, v18

    #@50
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@53
    .line 761
    const/4 v11, 0x0

    #@54
    .local v11, "j":I
    :goto_0
    array-length v0, v6

    #@55
    move/from16 v18, v0

    #@57
    move/from16 v0, v18

    #@59
    if-ge v11, v0, :cond_10

    #@5b
    .line 762
    aget-byte v3, v6, v11

    #@5d
    .line 763
    .local v3, "b":B
    ushr-int/lit8 v18, v3, 0x4

    #@5f
    and-int/lit8 v18, v18, 0xf

    #@61
    const/16 v19, 0x10

    #@63
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    #@66
    move-result v18

    #@67
    move/from16 v0, v18

    #@69
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6c
    .line 764
    and-int/lit8 v18, v3, 0xf

    #@6e
    const/16 v19, 0x10

    #@70
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    #@73
    move-result v18

    #@74
    move/from16 v0, v18

    #@76
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@79
    .line 761
    add-int/lit8 v11, v11, 0x1

    #@7b
    goto :goto_0

    #@7c
    .line 752
    .end local v3    # "b":B
    .end local v6    # "data":[B
    .end local v11    # "j":I
    :cond_1
    move-object/from16 v0, p0

    #@7e
    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@80
    move-object/from16 v18, v0

    #@82
    const/16 v19, 0x0

    #@84
    invoke-static/range {v18 .. v19}, Lsun/security/x509/AVA;->isDerString(Lsun/security/util/DerValue;Z)Z

    #@87
    move-result v18

    #@88
    if-eqz v18, :cond_0

    #@8a
    .line 775
    const/16 v16, 0x0

    #@8c
    .line 777
    .local v16, "valStr":Ljava/lang/String;
    :try_start_1
    new-instance v16, Ljava/lang/String;

    #@8e
    .end local v16    # "valStr":Ljava/lang/String;
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    #@92
    move-object/from16 v18, v0

    #@94
    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->getDataBytes()[B

    #@97
    move-result-object v18

    #@98
    const-string/jumbo v19, "UTF8"

    #@9b
    move-object/from16 v0, v16

    #@9d
    move-object/from16 v1, v18

    #@9f
    move-object/from16 v2, v19

    #@a1
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@a4
    .line 805
    .local v16, "valStr":Ljava/lang/String;
    const-string/jumbo v7, ",=+<>#;\"\\"

    #@a7
    .line 806
    .local v7, "escapees":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    .line 808
    .local v13, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    #@ad
    .local v9, "i":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@b0
    move-result v18

    #@b1
    move/from16 v0, v18

    #@b3
    if-ge v9, v0, :cond_8

    #@b5
    .line 809
    move-object/from16 v0, v16

    #@b7
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    #@ba
    move-result v4

    #@bb
    .line 810
    .local v4, "c":C
    invoke-static {v4}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    #@be
    move-result v18

    #@bf
    if-nez v18, :cond_2

    #@c1
    .line 811
    const-string/jumbo v18, ",=+<>#;\"\\"

    #@c4
    move-object/from16 v0, v18

    #@c6
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    #@c9
    move-result v18

    #@ca
    if-ltz v18, :cond_5

    #@cc
    .line 814
    :cond_2
    const-string/jumbo v18, ",=+<>#;\"\\"

    #@cf
    move-object/from16 v0, v18

    #@d1
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    #@d4
    move-result v18

    #@d5
    if-ltz v18, :cond_3

    #@d7
    .line 815
    const/16 v18, 0x5c

    #@d9
    move/from16 v0, v18

    #@db
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@de
    .line 819
    :cond_3
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e1
    .line 808
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    #@e3
    goto :goto_1

    #@e4
    .line 757
    .end local v4    # "c":C
    .end local v7    # "escapees":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v13    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v16    # "valStr":Ljava/lang/String;
    .local v6, "data":[B
    :catch_0
    move-exception v10

    #@e5
    .line 758
    .local v10, "ie":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@e7
    const-string/jumbo v19, "DER Value conversion"

    #@ea
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ed
    throw v18

    #@ee
    .line 778
    .end local v6    # "data":[B
    .end local v10    # "ie":Ljava/io/IOException;
    :catch_1
    move-exception v10

    #@ef
    .line 779
    .restart local v10    # "ie":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@f1
    const-string/jumbo v19, "DER Value conversion"

    #@f4
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f7
    throw v18

    #@f8
    .line 821
    .end local v10    # "ie":Ljava/io/IOException;
    .restart local v4    # "c":C
    .restart local v7    # "escapees":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v13    # "sbuffer":Ljava/lang/StringBuilder;
    .restart local v16    # "valStr":Ljava/lang/String;
    :cond_5
    if-nez v4, :cond_6

    #@fa
    .line 823
    const-string/jumbo v18, "\\00"

    #@fd
    move-object/from16 v0, v18

    #@ff
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    goto :goto_2

    #@103
    .line 825
    :cond_6
    sget-object v18, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    #@105
    if-eqz v18, :cond_7

    #@107
    const-string/jumbo v18, "ava"

    #@10a
    invoke-static/range {v18 .. v18}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    #@10d
    move-result v18

    #@10e
    if-eqz v18, :cond_7

    #@110
    .line 829
    const/16 v17, 0x0

    #@112
    .line 831
    .local v17, "valueBytes":[B
    :try_start_2
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@115
    move-result-object v18

    #@116
    const-string/jumbo v19, "UTF8"

    #@119
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@11c
    move-result-object v17

    #@11d
    .line 836
    .local v17, "valueBytes":[B
    const/4 v11, 0x0

    #@11e
    .restart local v11    # "j":I
    :goto_3
    move-object/from16 v0, v17

    #@120
    array-length v0, v0

    #@121
    move/from16 v18, v0

    #@123
    move/from16 v0, v18

    #@125
    if-ge v11, v0, :cond_4

    #@127
    .line 837
    const/16 v18, 0x5c

    #@129
    move/from16 v0, v18

    #@12b
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12e
    .line 839
    aget-byte v18, v17, v11

    #@130
    ushr-int/lit8 v18, v18, 0x4

    #@132
    and-int/lit8 v18, v18, 0xf

    #@134
    const/16 v19, 0x10

    #@136
    .line 838
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    #@139
    move-result v8

    #@13a
    .line 840
    .local v8, "hexChar":C
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    #@13d
    move-result v18

    #@13e
    move/from16 v0, v18

    #@140
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@143
    .line 842
    aget-byte v18, v17, v11

    #@145
    and-int/lit8 v18, v18, 0xf

    #@147
    const/16 v19, 0x10

    #@149
    .line 841
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    #@14c
    move-result v8

    #@14d
    .line 843
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    #@150
    move-result v18

    #@151
    move/from16 v0, v18

    #@153
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@156
    .line 836
    add-int/lit8 v11, v11, 0x1

    #@158
    goto :goto_3

    #@159
    .line 832
    .end local v8    # "hexChar":C
    .end local v11    # "j":I
    .local v17, "valueBytes":[B
    :catch_2
    move-exception v10

    #@15a
    .line 833
    .restart local v10    # "ie":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@15c
    .line 834
    const-string/jumbo v19, "DER Value conversion"

    #@15f
    .line 833
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@162
    throw v18

    #@163
    .line 848
    .end local v10    # "ie":Ljava/io/IOException;
    .end local v17    # "valueBytes":[B
    :cond_7
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@166
    goto/16 :goto_2

    #@168
    .line 852
    .end local v4    # "c":C
    :cond_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v18

    #@16c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    #@16f
    move-result-object v5

    #@170
    .line 853
    .local v5, "chars":[C
    new-instance v13, Ljava/lang/StringBuilder;

    #@172
    .end local v13    # "sbuffer":Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@175
    .line 857
    .restart local v13    # "sbuffer":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    #@176
    .local v12, "lead":I
    :goto_4
    array-length v0, v5

    #@177
    move/from16 v18, v0

    #@179
    move/from16 v0, v18

    #@17b
    if-ge v12, v0, :cond_9

    #@17d
    .line 858
    aget-char v18, v5, v12

    #@17f
    const/16 v19, 0x20

    #@181
    move/from16 v0, v18

    #@183
    move/from16 v1, v19

    #@185
    if-eq v0, v1, :cond_d

    #@187
    aget-char v18, v5, v12

    #@189
    const/16 v19, 0xd

    #@18b
    move/from16 v0, v18

    #@18d
    move/from16 v1, v19

    #@18f
    if-eq v0, v1, :cond_d

    #@191
    .line 863
    :cond_9
    array-length v0, v5

    #@192
    move/from16 v18, v0

    #@194
    add-int/lit8 v14, v18, -0x1

    #@196
    .local v14, "trail":I
    :goto_5
    if-ltz v14, :cond_a

    #@198
    .line 864
    aget-char v18, v5, v14

    #@19a
    const/16 v19, 0x20

    #@19c
    move/from16 v0, v18

    #@19e
    move/from16 v1, v19

    #@1a0
    if-eq v0, v1, :cond_e

    #@1a2
    aget-char v18, v5, v14

    #@1a4
    const/16 v19, 0xd

    #@1a6
    move/from16 v0, v18

    #@1a8
    move/from16 v1, v19

    #@1aa
    if-eq v0, v1, :cond_e

    #@1ac
    .line 870
    :cond_a
    const/4 v9, 0x0

    #@1ad
    :goto_6
    array-length v0, v5

    #@1ae
    move/from16 v18, v0

    #@1b0
    move/from16 v0, v18

    #@1b2
    if-ge v9, v0, :cond_f

    #@1b4
    .line 871
    aget-char v4, v5, v9

    #@1b6
    .line 872
    .restart local v4    # "c":C
    if-lt v9, v12, :cond_b

    #@1b8
    if-le v9, v14, :cond_c

    #@1ba
    .line 873
    :cond_b
    const/16 v18, 0x5c

    #@1bc
    move/from16 v0, v18

    #@1be
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c1
    .line 875
    :cond_c
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c4
    .line 870
    add-int/lit8 v9, v9, 0x1

    #@1c6
    goto :goto_6

    #@1c7
    .line 857
    .end local v4    # "c":C
    .end local v14    # "trail":I
    :cond_d
    add-int/lit8 v12, v12, 0x1

    #@1c9
    goto :goto_4

    #@1ca
    .line 863
    .restart local v14    # "trail":I
    :cond_e
    add-int/lit8 v14, v14, -0x1

    #@1cc
    goto :goto_5

    #@1cd
    .line 877
    :cond_f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d0
    move-result-object v18

    #@1d1
    move-object/from16 v0, v18

    #@1d3
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    .line 879
    .end local v5    # "chars":[C
    .end local v7    # "escapees":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v12    # "lead":I
    .end local v13    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v14    # "trail":I
    .end local v16    # "valStr":Ljava/lang/String;
    :cond_10
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d9
    move-result-object v18

    #@1da
    return-object v18
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 693
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v1, v0}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 692
    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
