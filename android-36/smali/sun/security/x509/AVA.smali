.class public Lsun/security/x509/AVA;
.super Ljava/lang/Object;
.source "AVA.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field static final greylist-max-o DEFAULT:I = 0x1

.field private static final greylist-max-o PRESERVE_OLD_DC_ENCODING:Z

.field static final greylist-max-o RFC1779:I = 0x2

.field static final greylist-max-o RFC2253:I = 0x3

.field private static final greylist-max-o debug:Lsun/security/util/Debug;

.field private static final greylist-max-o escapedDefault:Ljava/lang/String; = ",+<>;\""

.field private static final greylist-max-o hexDigits:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final greylist-max-o specialChars1779:Ljava/lang/String; = ",=\n+<>#;\\\""

.field private static final greylist-max-o specialChars2253:Ljava/lang/String; = ",=+<>#;\\\""

.field private static final greylist-max-o specialCharsDefault:Ljava/lang/String; = ",=\n+<>#;\\\" "


# instance fields
.field final greylist-max-o oid:Lsun/security/util/ObjectIdentifier;

.field final greylist-max-o value:Lsun/security/util/DerValue;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 64
    const-string v0, "x509"

    const-string v1, "\t[AVA]"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    .line 68
    new-instance v0, Lsun/security/action/GetBooleanAction;

    const-string v1, "com.sun.security.preserveOldDCEncoding"

    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    .line 68
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;I)V

    .line 136
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/io/Reader;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    .line 156
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/io/Reader;ILjava/util/Map;)V
    .registers 9
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "I",
            "Ljava/util/Map<",
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

    .line 171
    .local p3, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "temp":Ljava/lang/StringBuilder;
    :goto_8
    const-string v1, "Incorrect AVA format"

    invoke-static {p1, v1}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, "c":I
    const/16 v2, 0x3d

    if-ne v1, v2, :cond_6b

    .line 184
    nop

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lsun/security/x509/AVAKeyword;->getOID(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    .line 196
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 197
    const/16 v2, 0x20

    const/4 v3, 0x3

    if-ne p2, v3, :cond_35

    .line 199
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 200
    if-eq v1, v2, :cond_2d

    goto :goto_3f

    .line 201
    :cond_2d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Incorrect AVA RFC2253 format - leading space must be escaped"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_35
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 208
    if-eq v1, v2, :cond_35

    const/16 v4, 0xa

    if-eq v1, v4, :cond_35

    .line 210
    :goto_3f
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4c

    .line 212
    new-instance v2, Lsun/security/util/DerValue;

    const-string v3, ""

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 213
    return-void

    .line 216
    :cond_4c
    const/16 v2, 0x23

    if-ne v1, v2, :cond_57

    .line 217
    invoke-static {p1, p2}, Lsun/security/x509/AVA;->parseHexString(Ljava/io/Reader;I)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    goto :goto_6a

    .line 218
    :cond_57
    const/16 v2, 0x22

    if-ne v1, v2, :cond_64

    if-eq p2, v3, :cond_64

    .line 219
    invoke-direct {p0, p1, v0}, Lsun/security/x509/AVA;->parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    goto :goto_6a

    .line 221
    :cond_64
    invoke-direct {p0, p1, v1, p2, v0}, Lsun/security/x509/AVA;->parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 223
    :goto_6a
    return-void

    .line 186
    :cond_6b
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method constructor greylist-max-o <init>(Ljava/io/Reader;Ljava/util/Map;)V
    .registers 4
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map<",
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

    .line 148
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    .line 149
    return-void
.end method

.method constructor greylist-max-o <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/DerValue;)V

    .line 635
    return-void
.end method

.method constructor greylist-max-o <init>(Lsun/security/util/DerValue;)V
    .registers 5
    .param p1, "derval"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_45

    .line 624
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    .line 625
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 627
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_26

    .line 631
    return-void

    .line 628
    :cond_26
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AVA, extra bytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 629
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AVA not a sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .registers 4
    .param p1, "type"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "val"    # Lsun/security/util/DerValue;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 121
    iput-object p1, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    .line 122
    iput-object p2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 123
    return-void

    .line 119
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;
    .registers 7
    .param p0, "c1"    # I
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3c

    .line 536
    const-string v0, "unexpected EOF - escaped hex value must include two valid digits"

    invoke-static {p1, v0}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 539
    .local v0, "c2":I
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_34

    .line 540
    int-to-char v1, p0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 541
    .local v1, "hi":I
    int-to-char v3, v0

    invoke-static {v3, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 542
    .local v2, "lo":I
    new-instance v3, Ljava/lang/Byte;

    shl-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v2

    int-to-byte v4, v4

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    return-object v3

    .line 544
    .end local v1    # "hi":I
    .end local v2    # "lo":I
    :cond_34
    new-instance v1, Ljava/io/IOException;

    const-string v2, "escaped hex value must include two valid digits"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    .end local v0    # "c2":I
    :cond_3c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    .line 553
    .local p0, "hexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 554
    .local v0, "n":I
    new-array v1, v0, [B

    .line 555
    .local v1, "hexBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 556
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 558
    .end local v2    # "i":I
    :cond_18
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private static greylist-max-o isDerString(Lsun/security/util/DerValue;Z)Z
    .registers 5
    .param p0, "value"    # Lsun/security/util/DerValue;
    .param p1, "canonical"    # Z

    .line 1030
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    .line 1031
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    sparse-switch v2, :sswitch_data_12

    .line 1036
    return v0

    .line 1034
    :sswitch_a
    return v1

    .line 1039
    :cond_b
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    sparse-switch v2, :sswitch_data_1c

    .line 1048
    return v0

    .line 1046
    :sswitch_11
    return v1

    :sswitch_data_12
    .sparse-switch
        0xc -> :sswitch_a
        0x13 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_1c
    .sparse-switch
        0xc -> :sswitch_11
        0x13 -> :sswitch_11
        0x14 -> :sswitch_11
        0x16 -> :sswitch_11
        0x1b -> :sswitch_11
        0x1e -> :sswitch_11
    .end sparse-switch
.end method

.method private static greylist-max-o isTerminator(II)Z
    .registers 5
    .param p0, "ch"    # I
    .param p1, "format"    # I

    .line 562
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p0, :sswitch_data_c

    .line 570
    return v0

    .line 568
    :sswitch_6
    const/4 v2, 0x3

    if-eq p1, v2, :cond_a

    move v0, v1

    :cond_a
    return v0

    .line 566
    :sswitch_b
    return v1

    :sswitch_data_c
    .sparse-switch
        -0x1 -> :sswitch_b
        0x2b -> :sswitch_b
        0x2c -> :sswitch_b
        0x3b -> :sswitch_6
    .end sparse-switch
.end method

.method private static greylist-max-o parseHexString(Ljava/io/Reader;I)Lsun/security/util/DerValue;
    .registers 11
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 263
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 264
    .local v1, "b":B
    const/4 v2, 0x0

    .line 266
    .local v2, "cNdx":I
    :goto_7
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v3

    .line 268
    .local v3, "c":I
    invoke-static {v3, p1}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_13

    .line 269
    goto :goto_7e

    .line 273
    :cond_13
    const-string v4, "AVA parse, invalid hex digit: "

    const/16 v6, 0xa

    const/16 v7, 0x20

    if-eq v3, v7, :cond_56

    if-ne v3, v6, :cond_1e

    goto :goto_56

    .line 283
    :cond_1e
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    const-string v7, "0123456789ABCDEF"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 285
    .local v6, "cVal":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_3e

    .line 290
    rem-int/lit8 v4, v2, 0x2

    if-ne v4, v5, :cond_39

    .line 291
    mul-int/lit8 v4, v1, 0x10

    int-to-byte v5, v6

    add-int/2addr v4, v5

    int-to-byte v1, v4

    .line 292
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3a

    .line 294
    :cond_39
    int-to-byte v1, v6

    .line 296
    :goto_3a
    nop

    .end local v6    # "cVal":I
    add-int/lit8 v2, v2, 0x1

    .line 297
    goto :goto_7

    .line 286
    .restart local v6    # "cVal":I
    :cond_3e
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v7, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 275
    .end local v6    # "cVal":I
    :cond_56
    :goto_56
    if-eq v3, v7, :cond_73

    if-ne v3, v6, :cond_5b

    goto :goto_73

    .line 276
    :cond_5b
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 278
    :cond_73
    :goto_73
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v3

    .line 279
    invoke-static {v3, p1}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 280
    nop

    .line 300
    :goto_7e
    if-eqz v2, :cond_96

    .line 305
    rem-int/lit8 v4, v2, 0x2

    if-eq v4, v5, :cond_8e

    .line 309
    new-instance v4, Lsun/security/util/DerValue;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/util/DerValue;-><init>([B)V

    return-object v4

    .line 306
    :cond_8e
    new-instance v4, Ljava/io/IOException;

    const-string v5, "AVA parse, odd number of hex digits"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 301
    :cond_96
    new-instance v4, Ljava/io/IOException;

    const-string v5, "AVA parse, zero hex digits"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private greylist-max-o parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .registers 10
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "temp"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    const-string v0, "Quoted string did not end in quote"

    invoke-static {p1, v0}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v1

    .line 322
    .local v1, "c":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v2, "embeddedHex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v3, 0x1

    .line 324
    .local v3, "isPrintableString":Z
    :goto_c
    const/16 v4, 0x22

    if-eq v1, v4, :cond_6c

    .line 325
    const/16 v4, 0x5c

    if-ne v1, v4, :cond_4d

    .line 326
    invoke-static {p1, v0}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v1

    .line 329
    const/4 v4, 0x0

    .line 330
    .local v4, "hexByte":Ljava/lang/Byte;
    invoke-static {v1, p1}, Lsun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_29

    .line 333
    const/4 v3, 0x0

    .line 337
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 339
    goto :goto_c

    .line 342
    :cond_29
    const-string v5, ",=\n+<>#;\\\""

    int-to-char v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_33

    goto :goto_4d

    .line 343
    :cond_33
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid escaped character in AVA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    .end local v4    # "hexByte":Ljava/lang/Byte;
    :cond_4d
    :goto_4d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5d

    .line 351
    invoke-static {v2}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "hexString":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 357
    .end local v4    # "hexString":Ljava/lang/String;
    :cond_5d
    int-to-char v4, v1

    invoke-static {v4}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v4

    and-int/2addr v3, v4

    .line 358
    int-to-char v4, v1

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    invoke-static {p1, v0}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v1

    goto :goto_c

    .line 363
    :cond_6c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7c

    .line 364
    invoke-static {v2}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "hexString":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 370
    .end local v0    # "hexString":Ljava/lang/String;
    :cond_7c
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 371
    const/16 v0, 0xa

    if-eq v1, v0, :cond_7c

    const/16 v0, 0x20

    if-eq v1, v0, :cond_7c

    .line 372
    const/4 v0, -0x1

    if-ne v1, v0, :cond_c8

    .line 379
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v4}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v4, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    .line 380
    invoke-virtual {v0, v4}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    sget-boolean v0, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    if-nez v0, :cond_a4

    goto :goto_bc

    .line 387
    :cond_a4
    if-eqz v3, :cond_b0

    .line 390
    new-instance v0, Lsun/security/util/DerValue;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 392
    :cond_b0
    new-instance v0, Lsun/security/util/DerValue;

    .line 395
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    invoke-direct {v0, v5, v4}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    .line 392
    return-object v0

    .line 383
    :cond_bc
    :goto_bc
    new-instance v0, Lsun/security/util/DerValue;

    .line 386
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x16

    invoke-direct {v0, v5, v4}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    .line 383
    return-object v0

    .line 373
    :cond_c8
    new-instance v0, Ljava/io/IOException;

    const-string v4, "AVA had characters other than whitespace after terminating quote"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .registers 21
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "c"    # I
    .param p3, "format"    # I
    .param p4, "temp"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v4, "embeddedHex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v5, 0x1

    .line 404
    .local v5, "isPrintableString":Z
    const/4 v6, 0x0

    .line 405
    .local v6, "escape":Z
    const/4 v7, 0x1

    .line 406
    .local v7, "leadingChar":Z
    const/4 v8, 0x0

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move/from16 v5, p2

    .line 408
    .end local p2    # "c":I
    .local v5, "c":I
    .local v6, "isPrintableString":Z
    .local v7, "escape":Z
    .local v8, "leadingChar":Z
    .local v9, "spaceCount":I
    :goto_17
    const/4 v7, 0x0

    .line 409
    const/16 v10, 0x5c

    const-string v12, ",=+<>#;\\\""

    const/4 v13, -0x1

    if-ne v5, v10, :cond_b2

    .line 410
    const/4 v7, 0x1

    .line 411
    const-string v10, "Invalid trailing backslash"

    invoke-static {v1, v10}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v5

    .line 414
    const/4 v10, 0x0

    .line 415
    .local v10, "hexByte":Ljava/lang/Byte;
    invoke-static {v5, v1}, Lsun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v15

    move-object v10, v15

    if-eqz v15, :cond_39

    .line 418
    const/4 v6, 0x0

    .line 422
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v5

    .line 424
    const/4 v8, 0x0

    .line 425
    goto/16 :goto_11d

    .line 429
    :cond_39
    const-string v15, "\'"

    const-string v11, "Invalid escaped character in AVA: \'"

    const/4 v14, 0x1

    if-ne v2, v14, :cond_66

    int-to-char v14, v5

    .line 430
    const-string v1, ",=\n+<>#;\\\" "

    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v13, :cond_4a

    goto :goto_66

    .line 431
    :cond_4a
    new-instance v1, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    int-to-char v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_66
    :goto_66
    const/4 v1, 0x3

    if-ne v2, v1, :cond_b1

    .line 435
    const/16 v1, 0x20

    if-ne v5, v1, :cond_7e

    .line 437
    if-nez v8, :cond_b1

    invoke-static/range {p1 .. p1}, Lsun/security/x509/AVA;->trailingSpace(Ljava/io/Reader;)Z

    move-result v1

    if-eqz v1, :cond_76

    goto :goto_b1

    .line 438
    :cond_76
    new-instance v1, Ljava/io/IOException;

    const-string v11, "Invalid escaped space character in AVA.  Only a leading or trailing space character can be escaped."

    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_7e
    const/16 v1, 0x23

    if-ne v5, v1, :cond_8d

    .line 445
    if-eqz v8, :cond_85

    goto :goto_b1

    .line 446
    :cond_85
    new-instance v1, Ljava/io/IOException;

    const-string v11, "Invalid escaped \'#\' character in AVA.  Only a leading \'#\' can be escaped."

    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_8d
    int-to-char v1, v5

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v13, :cond_95

    goto :goto_b1

    .line 451
    :cond_95
    new-instance v1, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    int-to-char v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    .end local v10    # "hexByte":Ljava/lang/Byte;
    :cond_b1
    :goto_b1
    goto :goto_dd

    .line 458
    :cond_b2
    const/4 v1, 0x3

    if-ne v2, v1, :cond_dd

    .line 459
    int-to-char v1, v5

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v13, :cond_bd

    goto :goto_dd

    .line 460
    :cond_bd
    new-instance v1, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Character \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    int-to-char v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' in AVA appears without escape"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :cond_dd
    :goto_dd
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const-string v10, " "

    if-lez v1, :cond_f9

    .line 478
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e6
    if-ge v1, v9, :cond_ee

    .line 479
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_e6

    .line 481
    .end local v1    # "i":I
    :cond_ee
    const/4 v9, 0x0

    .line 483
    invoke-static {v4}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "hexString":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 489
    .end local v1    # "hexString":Ljava/lang/String;
    :cond_f9
    int-to-char v1, v5

    invoke-static {v1}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v1

    and-int/2addr v1, v6

    .line 490
    .end local v6    # "isPrintableString":Z
    .local v1, "isPrintableString":Z
    const/16 v6, 0x20

    if-ne v5, v6, :cond_108

    if-nez v7, :cond_108

    .line 493
    add-int/lit8 v9, v9, 0x1

    goto :goto_116

    .line 496
    :cond_108
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_109
    if-ge v6, v9, :cond_111

    .line 497
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    add-int/lit8 v6, v6, 0x1

    goto :goto_109

    .line 499
    .end local v6    # "i":I
    :cond_111
    const/4 v9, 0x0

    .line 500
    int-to-char v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    :goto_116
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->read()I

    move-result v5

    .line 503
    const/4 v6, 0x0

    move v8, v6

    move v6, v1

    .line 504
    .end local v1    # "isPrintableString":Z
    .local v6, "isPrintableString":Z
    :goto_11d
    invoke-static {v5, v2}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 506
    const/4 v1, 0x3

    if-ne v2, v1, :cond_131

    if-gtz v9, :cond_129

    goto :goto_131

    .line 507
    :cond_129
    new-instance v1, Ljava/io/IOException;

    const-string v10, "Incorrect AVA RFC2253 format - trailing space must be escaped"

    invoke-direct {v1, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    :cond_131
    :goto_131
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_141

    .line 513
    invoke-static {v4}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "hexString":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 520
    .end local v1    # "hexString":Ljava/lang/String;
    :cond_141
    iget-object v1, v0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v10, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v10}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_172

    iget-object v1, v0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v10, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    .line 521
    invoke-virtual {v1, v10}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15a

    sget-boolean v1, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    if-nez v1, :cond_15a

    goto :goto_172

    .line 525
    :cond_15a
    if-eqz v6, :cond_166

    .line 526
    new-instance v1, Lsun/security/util/DerValue;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 528
    :cond_166
    new-instance v1, Lsun/security/util/DerValue;

    const/16 v10, 0xc

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v1

    .line 524
    :cond_172
    :goto_172
    new-instance v1, Lsun/security/util/DerValue;

    const/16 v10, 0x16

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v1

    .line 504
    :cond_17e
    move-object/from16 v1, p1

    goto/16 :goto_17
.end method

.method private static greylist-max-o readChar(Ljava/io/Reader;Ljava/lang/String;)I
    .registers 4
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 576
    .local v0, "c":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 579
    return v0

    .line 577
    :cond_8
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o toKeyword(ILjava/util/Map;)Ljava/lang/String;
    .registers 4
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 685
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-static {v0, p1, p2}, Lsun/security/x509/AVAKeyword;->getKeyword(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;
    .registers 23
    .param p1, "keyword"    # Ljava/lang/String;

    .line 1063
    move-object/from16 v1, p0

    const-string v0, "\""

    const-string v2, "0123456789ABCDEF"

    const-string v3, ",+=\n<>#;\\\""

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1065
    .local v4, "retval":Ljava/lang/StringBuilder;
    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :try_start_19
    iget-object v6, v1, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v6}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 1071
    .local v6, "valStr":Ljava/lang/String;
    if-nez v6, :cond_4d

    .line 1078
    iget-object v0, v1, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    .line 1080
    .local v0, "data":[B
    const/16 v3, 0x23

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2d
    array-length v7, v0

    if-ge v3, v7, :cond_4b

    .line 1082
    aget-byte v7, v0, v3

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1083
    aget-byte v7, v0, v3

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1086
    .end local v0    # "data":[B
    .end local v3    # "i":I
    :cond_4b
    goto/16 :goto_189

    .line 1088
    :cond_4d
    const/4 v2, 0x0

    .line 1089
    .local v2, "quoteNeeded":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    .local v7, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 1091
    .local v8, "previousWhite":Z
    move-object v9, v3

    .line 1098
    .local v9, "escapees":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    .line 1099
    .local v10, "length":I
    const/4 v11, 0x0

    const/16 v12, 0x22

    const/4 v13, 0x1

    if-le v10, v13, :cond_6f

    .line 1100
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v12, :cond_6f

    add-int/lit8 v14, v10, -0x1

    .line 1101
    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v12, :cond_6f

    move v11, v13

    goto :goto_70

    :cond_6f
    nop

    .line 1103
    .local v11, "alreadyQuoted":Z
    :goto_70
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_71
    move/from16 v16, v13

    const/16 v13, 0x20

    if-ge v14, v10, :cond_145

    .line 1104
    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v18, v17

    .line 1105
    .local v18, "c":C
    if-eqz v11, :cond_92

    if-eqz v14, :cond_89

    add-int/lit8 v12, v10, -0x1

    if-ne v14, v12, :cond_86

    goto :goto_89

    :cond_86
    move/from16 v12, v18

    goto :goto_94

    .line 1106
    :cond_89
    :goto_89
    move/from16 v12, v18

    .end local v18    # "c":C
    .local v12, "c":C
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1107
    const/16 v1, 0x22

    goto/16 :goto_13c

    .line 1105
    .end local v12    # "c":C
    .restart local v18    # "c":C
    :cond_92
    move/from16 v12, v18

    .line 1109
    .end local v18    # "c":C
    .restart local v12    # "c":C
    :goto_94
    invoke-static {v12}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v18

    if-nez v18, :cond_105

    .line 1110
    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_a3

    move/from16 v19, v2

    goto :goto_107

    .line 1135
    :cond_a3
    sget-object v13, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v13, :cond_f9

    const-string v13, "ava"

    invoke-static {v13}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f9

    .line 1140
    const/4 v8, 0x0

    .line 1143
    nop

    .line 1144
    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    const-string v15, "UTF8"

    invoke-virtual {v13, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 1145
    .local v13, "valueBytes":[B
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_bc
    array-length v1, v13

    if-ge v15, v1, :cond_f4

    .line 1146
    const/16 v1, 0x5c

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1147
    aget-byte v1, v13, v15

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 1148
    move/from16 v19, v2

    .end local v2    # "quoteNeeded":Z
    .local v19, "quoteNeeded":Z
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    .line 1149
    .local v1, "hexChar":C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1150
    aget-byte v2, v13, v15

    and-int/lit8 v2, v2, 0xf

    .line 1151
    move/from16 v20, v1

    const/16 v1, 0x10

    .end local v1    # "hexChar":C
    .local v20, "hexChar":C
    invoke-static {v2, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    .line 1152
    .end local v20    # "hexChar":C
    .restart local v1    # "hexChar":C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1145
    nop

    .end local v1    # "hexChar":C
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move/from16 v2, v19

    goto :goto_bc

    .end local v19    # "quoteNeeded":Z
    .restart local v2    # "quoteNeeded":Z
    :cond_f4
    move/from16 v19, v2

    .line 1154
    .end local v2    # "quoteNeeded":Z
    .end local v13    # "valueBytes":[B
    .end local v15    # "j":I
    .restart local v19    # "quoteNeeded":Z
    const/16 v1, 0x22

    goto :goto_13c

    .line 1135
    .end local v19    # "quoteNeeded":Z
    .restart local v2    # "quoteNeeded":Z
    :cond_f9
    move/from16 v19, v2

    .line 1158
    .end local v2    # "quoteNeeded":Z
    .restart local v19    # "quoteNeeded":Z
    const/4 v1, 0x0

    .line 1159
    .end local v8    # "previousWhite":Z
    .local v1, "previousWhite":Z
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v1

    move/from16 v2, v19

    const/16 v1, 0x22

    goto :goto_13c

    .line 1109
    .end local v1    # "previousWhite":Z
    .end local v19    # "quoteNeeded":Z
    .restart local v2    # "quoteNeeded":Z
    .restart local v8    # "previousWhite":Z
    :cond_105
    move/from16 v19, v2

    .line 1113
    .end local v2    # "quoteNeeded":Z
    .restart local v19    # "quoteNeeded":Z
    :goto_107
    if-nez v19, :cond_119

    if-nez v14, :cond_111

    if-eq v12, v13, :cond_117

    const/16 v1, 0xa

    if-eq v12, v1, :cond_117

    .line 1115
    :cond_111
    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_119

    .line 1116
    :cond_117
    const/4 v2, 0x1

    .end local v19    # "quoteNeeded":Z
    .restart local v2    # "quoteNeeded":Z
    goto :goto_11b

    .line 1120
    .end local v2    # "quoteNeeded":Z
    .restart local v19    # "quoteNeeded":Z
    :cond_119
    move/from16 v2, v19

    .end local v19    # "quoteNeeded":Z
    .restart local v2    # "quoteNeeded":Z
    :goto_11b
    if-eq v12, v13, :cond_131

    const/16 v1, 0xa

    if-eq v12, v1, :cond_131

    .line 1122
    const/16 v1, 0x22

    if-eq v12, v1, :cond_12a

    const/16 v13, 0x5c

    if-ne v12, v13, :cond_12f

    goto :goto_12c

    :cond_12a
    const/16 v13, 0x5c

    .line 1123
    :goto_12c
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1125
    :cond_12f
    const/4 v8, 0x0

    goto :goto_139

    .line 1120
    :cond_131
    const/16 v1, 0x22

    .line 1127
    if-nez v2, :cond_138

    if-eqz v8, :cond_138

    .line 1128
    const/4 v2, 0x1

    .line 1130
    :cond_138
    const/4 v8, 0x1

    .line 1133
    :goto_139
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1103
    .end local v12    # "c":C
    :goto_13c
    add-int/lit8 v14, v14, 0x1

    move v12, v1

    move/from16 v13, v16

    move-object/from16 v1, p0

    goto/16 :goto_71

    :cond_145
    move/from16 v19, v2

    .line 1164
    .end local v2    # "quoteNeeded":Z
    .end local v14    # "i":I
    .restart local v19    # "quoteNeeded":Z
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_15f

    .line 1165
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 1166
    .local v1, "trailChar":C
    if-eq v1, v13, :cond_15d

    const/16 v2, 0xa

    if-ne v1, v2, :cond_15f

    .line 1167
    :cond_15d
    const/4 v2, 0x1

    .end local v19    # "quoteNeeded":Z
    .restart local v2    # "quoteNeeded":Z
    goto :goto_161

    .line 1173
    .end local v1    # "trailChar":C
    .end local v2    # "quoteNeeded":Z
    .restart local v19    # "quoteNeeded":Z
    :cond_15f
    move/from16 v2, v19

    .end local v19    # "quoteNeeded":Z
    .restart local v2    # "quoteNeeded":Z
    :goto_161
    if-nez v11, :cond_182

    if-eqz v2, :cond_182

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_189

    .line 1176
    :cond_182
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_189} :catch_18f

    .line 1181
    .end local v2    # "quoteNeeded":Z
    .end local v6    # "valStr":Ljava/lang/String;
    .end local v7    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v8    # "previousWhite":Z
    .end local v9    # "escapees":Ljava/lang/String;
    .end local v10    # "length":I
    .end local v11    # "alreadyQuoted":Z
    :goto_189
    nop

    .line 1183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1179
    :catch_18f
    move-exception v0

    .line 1180
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DER Value conversion"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o trailingSpace(Ljava/io/Reader;)Z
    .registers 5
    .param p0, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    const/4 v0, 0x0

    .line 586
    .local v0, "trailing":Z
    invoke-virtual {p0}, Ljava/io/Reader;->markSupported()Z

    move-result v1

    if-nez v1, :cond_9

    .line 588
    const/4 v1, 0x1

    return v1

    .line 593
    :cond_9
    const/16 v1, 0x270f

    invoke-virtual {p0, v1}, Ljava/io/Reader;->mark(I)V

    .line 595
    :goto_e
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    .line 596
    .local v1, "nextChar":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    .line 597
    const/4 v0, 0x1

    .line 598
    goto :goto_2c

    .line 599
    :cond_17
    const/16 v2, 0x20

    if-ne v1, v2, :cond_1c

    .line 600
    goto :goto_e

    .line 601
    :cond_1c
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_2a

    .line 602
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v3

    .line 603
    .local v3, "followingChar":I
    if-eq v3, v2, :cond_28

    .line 604
    const/4 v0, 0x0

    .line 605
    goto :goto_2c

    .line 607
    .end local v3    # "followingChar":I
    :cond_28
    nop

    .line 611
    .end local v1    # "nextChar":I
    goto :goto_e

    .line 608
    .restart local v1    # "nextChar":I
    :cond_2a
    const/4 v0, 0x0

    .line 609
    nop

    .line 613
    .end local v1    # "nextChar":I
    :goto_2c
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    .line 614
    return v0
.end method


# virtual methods
.method public blacklist derEncode(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 676
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 678
    .local v1, "tmp2":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 679
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 680
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 681
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 682
    return-void
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    invoke-virtual {p0, p1}, Lsun/security/x509/AVA;->derEncode(Ljava/io/OutputStream;)V

    .line 663
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 638
    if-ne p0, p1, :cond_4

    .line 639
    const/4 v0, 0x1

    return v0

    .line 641
    :cond_4
    instance-of v0, p1, Lsun/security/x509/AVA;

    if-nez v0, :cond_a

    .line 642
    const/4 v0, 0x0

    return v0

    .line 644
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/x509/AVA;

    .line 645
    .local v0, "other":Lsun/security/x509/AVA;
    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-virtual {v0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 645
    return v1
.end method

.method public greylist getDerValue()Lsun/security/util/DerValue;
    .registers 2

    .line 236
    iget-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    return-object v0
.end method

.method public greylist getObjectIdentifier()Lsun/security/util/ObjectIdentifier;
    .registers 2

    .line 229
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public greylist getValueString()Ljava/lang/String;
    .registers 5

    .line 247
    :try_start_0
    iget-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 251
    return-object v0

    .line 249
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "AVA string is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/x509/AVA;
    throw v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_11

    .line 252
    .end local v0    # "s":Ljava/lang/String;
    .restart local p0    # "this":Lsun/security/x509/AVA;
    :catch_11
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AVA error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method greylist hasRFC2253Keyword()Z
    .registers 3

    .line 1054
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lsun/security/x509/AVAKeyword;->hasKeyword(Lsun/security/util/ObjectIdentifier;I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 655
    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist toRFC1779String()Ljava/lang/String;
    .registers 2

    .line 703
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/AVA;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toRFC1779String(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 713
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist toRFC2253CanonicalString()Ljava/lang/String;
    .registers 16

    .line 891
    const-string v0, "UTF8"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 892
    .local v1, "typeAndValue":Ljava/lang/StringBuilder;
    nop

    .line 893
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 905
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    const/16 v5, 0x23

    const-string v6, "DER Value conversion"

    const/16 v7, 0x10

    if-lt v3, v4, :cond_32

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-le v2, v3, :cond_43

    :cond_32
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 908
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lsun/security/x509/AVA;->isDerString(Lsun/security/util/DerValue;Z)Z

    move-result v2

    if-nez v2, :cond_74

    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x14

    if-eq v2, v3, :cond_74

    .line 910
    :cond_43
    const/4 v0, 0x0

    .line 912
    .local v0, "data":[B
    :try_start_44
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v2}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4a} :catch_6d

    .line 915
    .end local v0    # "data":[B
    .local v2, "data":[B
    nop

    .line 916
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 917
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_4f
    array-length v3, v2

    if-ge v0, v3, :cond_6b

    .line 918
    aget-byte v3, v2, v0

    .line 919
    .local v3, "b":B
    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 920
    and-int/lit8 v4, v3, 0xf

    invoke-static {v4, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 917
    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 922
    .end local v0    # "j":I
    .end local v2    # "data":[B
    :cond_6b
    goto/16 :goto_11c

    .line 913
    .local v0, "data":[B
    :catch_6d
    move-exception v2

    .line 914
    .local v2, "ie":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 931
    .end local v0    # "data":[B
    .end local v2    # "ie":Ljava/io/IOException;
    :cond_74
    const/4 v2, 0x0

    .line 933
    .local v2, "valStr":Ljava/lang/String;
    :try_start_75
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v4}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_80} :catch_133

    .line 936
    .end local v2    # "valStr":Ljava/lang/String;
    .local v3, "valStr":Ljava/lang/String;
    nop

    .line 956
    const-string v2, ",+<>;\"\\"

    .line 957
    .local v2, "escapees":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    .local v4, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 960
    .local v8, "previousWhite":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_8a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_111

    .line 961
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 963
    .local v10, "c":C
    invoke-static {v10}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v11

    const/16 v12, 0x5c

    const-string v13, ",+<>;\"\\"

    if-nez v11, :cond_ef

    .line 964
    invoke-virtual {v13, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_ef

    if-nez v9, :cond_a9

    if-ne v10, v5, :cond_a9

    goto :goto_ef

    .line 987
    :cond_a9
    sget-object v11, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_ea

    const-string v11, "ava"

    invoke-static {v11}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ea

    .line 992
    const/4 v8, 0x0

    .line 994
    const/4 v11, 0x0

    .line 996
    .local v11, "valueBytes":[B
    :try_start_b7
    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bf} :catch_e3

    .line 1000
    .end local v11    # "valueBytes":[B
    .local v13, "valueBytes":[B
    nop

    .line 1001
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_c1
    array-length v14, v13

    if-ge v11, v14, :cond_e2

    .line 1002
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1003
    aget-byte v14, v13, v11

    ushr-int/lit8 v14, v14, 0x4

    and-int/lit8 v14, v14, 0xf

    .line 1004
    invoke-static {v14, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v14

    .line 1003
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1005
    aget-byte v14, v13, v11

    and-int/lit8 v14, v14, 0xf

    .line 1006
    invoke-static {v14, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v14

    .line 1005
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    add-int/lit8 v11, v11, 0x1

    goto :goto_c1

    .line 1008
    .end local v11    # "j":I
    .end local v13    # "valueBytes":[B
    :cond_e2
    goto :goto_10d

    .line 997
    .local v11, "valueBytes":[B
    :catch_e3
    move-exception v0

    .line 998
    .local v0, "ie":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1012
    .end local v0    # "ie":Ljava/io/IOException;
    .end local v11    # "valueBytes":[B
    :cond_ea
    const/4 v8, 0x0

    .line 1013
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10d

    .line 968
    :cond_ef
    :goto_ef
    if-nez v9, :cond_f3

    if-eq v10, v5, :cond_f9

    :cond_f3
    invoke-virtual {v13, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_fc

    .line 969
    :cond_f9
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 973
    :cond_fc
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_107

    .line 974
    const/4 v8, 0x0

    .line 975
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10d

    .line 977
    :cond_107
    if-nez v8, :cond_10d

    .line 979
    const/4 v8, 0x1

    .line 980
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 960
    .end local v10    # "c":C
    :cond_10d
    :goto_10d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8a

    .line 1018
    .end local v9    # "i":I
    :cond_111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    .end local v2    # "escapees":Ljava/lang/String;
    .end local v3    # "valStr":Ljava/lang/String;
    .end local v4    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v8    # "previousWhite":Z
    :goto_11c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, "canon":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    sget-object v2, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 934
    .end local v0    # "canon":Ljava/lang/String;
    .local v2, "valStr":Ljava/lang/String;
    :catch_133
    move-exception v0

    .line 935
    .local v0, "ie":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist toRFC2253String()Ljava/lang/String;
    .registers 2

    .line 722
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toRFC2253String(Ljava/util/Map;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 739
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "UTF8"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 740
    .local v1, "typeAndValue":Ljava/lang/StringBuilder;
    const/4 v2, 0x3

    invoke-direct {p0, v2, p1}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 752
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    const-string v5, "DER Value conversion"

    const/16 v6, 0x10

    if-lt v3, v4, :cond_2b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-le v3, v4, :cond_33

    :cond_2b
    iget-object v3, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 753
    invoke-static {v3, v2}, Lsun/security/x509/AVA;->isDerString(Lsun/security/util/DerValue;Z)Z

    move-result v2

    if-nez v2, :cond_66

    .line 755
    :cond_33
    const/4 v0, 0x0

    .line 757
    .local v0, "data":[B
    :try_start_34
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v2}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3a} :catch_5f

    .line 760
    .end local v0    # "data":[B
    .local v2, "data":[B
    nop

    .line 761
    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 762
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_41
    array-length v3, v2

    if-ge v0, v3, :cond_5d

    .line 763
    aget-byte v3, v2, v0

    .line 764
    .local v3, "b":B
    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 765
    and-int/lit8 v4, v3, 0xf

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 762
    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 767
    .end local v0    # "j":I
    .end local v2    # "data":[B
    :cond_5d
    goto/16 :goto_145

    .line 758
    .local v0, "data":[B
    :catch_5f
    move-exception v2

    .line 759
    .local v2, "ie":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 776
    .end local v0    # "data":[B
    .end local v2    # "ie":Ljava/io/IOException;
    :cond_66
    const/4 v2, 0x0

    .line 778
    .local v2, "valStr":Ljava/lang/String;
    :try_start_67
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v4}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_72} :catch_14a

    .line 781
    .end local v2    # "valStr":Ljava/lang/String;
    .local v3, "valStr":Ljava/lang/String;
    nop

    .line 806
    const-string v2, ",=+<>#;\"\\"

    .line 807
    .local v2, "escapees":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    .local v4, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x5c

    if-ge v7, v8, :cond_f9

    .line 810
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 811
    .local v8, "c":C
    invoke-static {v8}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v10

    const-string v11, ",=+<>#;\"\\"

    if-nez v10, :cond_ea

    .line 812
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_96

    goto :goto_ea

    .line 822
    :cond_96
    if-nez v8, :cond_9e

    .line 824
    const-string v9, "\\00"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f6

    .line 826
    :cond_9e
    sget-object v10, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_e6

    const-string v10, "ava"

    invoke-static {v10}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e6

    .line 830
    const/4 v10, 0x0

    .line 832
    .local v10, "valueBytes":[B
    :try_start_ab
    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b3} :catch_df

    .line 836
    .end local v10    # "valueBytes":[B
    .local v11, "valueBytes":[B
    nop

    .line 837
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_b5
    array-length v12, v11

    if-ge v10, v12, :cond_de

    .line 838
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 839
    aget-byte v12, v11, v10

    ushr-int/lit8 v12, v12, 0x4

    and-int/lit8 v12, v12, 0xf

    .line 840
    invoke-static {v12, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v12

    .line 841
    .local v12, "hexChar":C
    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 842
    aget-byte v13, v11, v10

    and-int/lit8 v13, v13, 0xf

    .line 843
    invoke-static {v13, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v12

    .line 844
    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    .end local v12    # "hexChar":C
    add-int/lit8 v10, v10, 0x1

    goto :goto_b5

    .line 846
    .end local v10    # "j":I
    .end local v11    # "valueBytes":[B
    :cond_de
    goto :goto_f6

    .line 833
    .local v10, "valueBytes":[B
    :catch_df
    move-exception v0

    .line 834
    .local v0, "ie":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 849
    .end local v0    # "ie":Ljava/io/IOException;
    .end local v10    # "valueBytes":[B
    :cond_e6
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f6

    .line 815
    :cond_ea
    :goto_ea
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_f3

    .line 816
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    :cond_f3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 809
    .end local v8    # "c":C
    :goto_f6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b

    .line 853
    .end local v7    # "i":I
    :cond_f9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 854
    .local v0, "chars":[C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    .end local v4    # "sbuffer":Ljava/lang/StringBuilder;
    .local v5, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "lead":I
    :goto_107
    array-length v6, v0

    const/16 v7, 0xd

    const/16 v8, 0x20

    if-ge v4, v6, :cond_11a

    .line 859
    aget-char v6, v0, v4

    if-eq v6, v8, :cond_117

    aget-char v6, v0, v4

    if-eq v6, v7, :cond_117

    .line 860
    goto :goto_11a

    .line 858
    :cond_117
    add-int/lit8 v4, v4, 0x1

    goto :goto_107

    .line 864
    :cond_11a
    :goto_11a
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    .local v6, "trail":I
    :goto_11d
    if-ltz v6, :cond_12b

    .line 865
    aget-char v10, v0, v6

    if-eq v10, v8, :cond_128

    aget-char v10, v0, v6

    if-eq v10, v7, :cond_128

    .line 866
    goto :goto_12b

    .line 864
    :cond_128
    add-int/lit8 v6, v6, -0x1

    goto :goto_11d

    .line 871
    :cond_12b
    :goto_12b
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_12c
    array-length v8, v0

    if-ge v7, v8, :cond_13e

    .line 872
    aget-char v8, v0, v7

    .line 873
    .restart local v8    # "c":C
    if-lt v7, v4, :cond_135

    if-le v7, v6, :cond_138

    .line 874
    :cond_135
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 876
    :cond_138
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 871
    .end local v8    # "c":C
    add-int/lit8 v7, v7, 0x1

    goto :goto_12c

    .line 878
    .end local v7    # "i":I
    :cond_13e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .end local v0    # "chars":[C
    .end local v2    # "escapees":Ljava/lang/String;
    .end local v3    # "valStr":Ljava/lang/String;
    .end local v4    # "lead":I
    .end local v5    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v6    # "trail":I
    :goto_145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 779
    .local v2, "valStr":Ljava/lang/String;
    :catch_14a
    move-exception v0

    .line 780
    .local v0, "ie":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 693
    nop

    .line 694
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    return-object v0
.end method
