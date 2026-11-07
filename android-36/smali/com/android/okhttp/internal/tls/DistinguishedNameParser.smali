.class final Lcom/android/okhttp/internal/tls/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private blacklist beg:I

.field private blacklist chars:[C

.field private blacklist cur:I

.field private final blacklist dn:Ljava/lang/String;

.field private blacklist end:I

.field private final blacklist length:I

.field private blacklist pos:I


# direct methods
.method public constructor blacklist <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    return-void
.end method

.method private blacklist escapedAV()Ljava/lang/String;
    .registers 9

    .line 189
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 190
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 192
    :cond_6
    :goto_6
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_19

    .line 194
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr p0, v2

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 197
    :cond_19
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2c

    const/16 v4, 0x2b

    const/16 v5, 0x3b

    const/16 v6, 0x20

    if-eq v2, v6, :cond_5c

    if-eq v2, v5, :cond_51

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_3e

    if-eq v2, v4, :cond_51

    if-eq v2, v3, :cond_51

    .line 226
    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aput-char v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    .line 227
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_6

    .line 205
    :cond_3e
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    .line 206
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_6

    .line 202
    :cond_51
    new-instance v0, Ljava/lang/String;

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr p0, v2

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 211
    :cond_5c
    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iput v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    add-int/lit8 v0, v0, 0x1

    .line 213
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v2, 0x1

    .line 214
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aput-char v6, v1, v2

    .line 216
    :goto_6a
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_83

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v7, v2, v0

    if-ne v7, v6, :cond_83

    .line 217
    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aput-char v6, v2, v1

    add-int/lit8 v0, v0, 0x1

    .line 216
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_6a

    :cond_83
    if-eq v0, v1, :cond_8f

    .line 219
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-eq v0, v3, :cond_8f

    if-eq v0, v4, :cond_8f

    if-ne v0, v5, :cond_6

    .line 222
    :cond_8f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    sub-int/2addr p0, v2

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private blacklist getByte(I)I
    .registers 11

    add-int/lit8 v0, p1, 0x1

    .line 313
    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_72

    .line 319
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char p1, v1, p1

    const/16 v3, 0x46

    const/16 v4, 0x41

    const/16 v5, 0x66

    const/16 v6, 0x61

    const/16 v7, 0x39

    const/16 v8, 0x30

    if-lt p1, v8, :cond_1e

    if-gt p1, v7, :cond_1e

    sub-int/2addr p1, v8

    goto :goto_2b

    :cond_1e
    if-lt p1, v6, :cond_25

    if-gt p1, v5, :cond_25

    add-int/lit8 p1, p1, -0x57

    goto :goto_2b

    :cond_25
    if-lt p1, v4, :cond_5b

    if-gt p1, v3, :cond_5b

    add-int/lit8 p1, p1, -0x37

    .line 330
    :goto_2b
    aget-char v0, v1, v0

    if-lt v0, v8, :cond_33

    if-gt v0, v7, :cond_33

    sub-int/2addr v0, v8

    goto :goto_40

    :cond_33
    if-lt v0, v6, :cond_3a

    if-gt v0, v5, :cond_3a

    add-int/lit8 v0, v0, -0x57

    goto :goto_40

    :cond_3a
    if-lt v0, v4, :cond_44

    if-gt v0, v3, :cond_44

    add-int/lit8 v0, v0, -0x37

    :goto_40
    shl-int/lit8 p0, p1, 0x4

    add-int/2addr p0, v0

    return p0

    .line 338
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_5b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_72
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist getEscaped()C
    .registers 4

    .line 234
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 235
    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_32

    .line 239
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_31

    const/16 v1, 0x25

    if-eq v0, v1, :cond_31

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_31

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_31

    const/16 v1, 0x22

    if-eq v0, v1, :cond_31

    const/16 v1, 0x23

    if-eq v0, v1, :cond_31

    packed-switch v0, :pswitch_data_4c

    packed-switch v0, :pswitch_data_56

    .line 258
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getUTF8()C

    move-result p0

    return p0

    :cond_31
    :pswitch_31
    return v0

    .line 236
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_4c
    .packed-switch 0x2a
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_56
    .packed-switch 0x3b
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method private blacklist getUTF8()C
    .registers 10

    .line 265
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v0

    .line 266
    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_12

    int-to-char p0, v0

    return p0

    :cond_12
    const/16 v3, 0xc0

    const/16 v4, 0x3f

    if-lt v0, v3, :cond_62

    const/16 v3, 0xf7

    if-gt v0, v3, :cond_62

    const/16 v3, 0xdf

    if-gt v0, v3, :cond_24

    and-int/lit8 v0, v0, 0x1f

    move v3, v2

    goto :goto_2f

    :cond_24
    const/16 v3, 0xef

    if-gt v0, v3, :cond_2c

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x2

    goto :goto_2f

    :cond_2c
    and-int/lit8 v0, v0, 0x7

    const/4 v3, 0x3

    :goto_2f
    const/4 v5, 0x0

    :goto_30
    if-ge v5, v3, :cond_60

    .line 286
    iget v6, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 287
    iget v8, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v7, v8, :cond_5f

    iget-object v8, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v7, v8, v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_45

    goto :goto_5f

    :cond_45
    add-int/lit8 v6, v6, 0x2

    .line 290
    iput v6, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 292
    invoke-direct {p0, v6}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v6

    .line 293
    iget v7, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_57

    return v4

    :cond_57
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_5f
    :goto_5f
    return v4

    :cond_60
    int-to-char p0, v0

    return p0

    :cond_62
    return v4
.end method

.method private blacklist hexAV()Ljava/lang/String;
    .registers 7

    .line 139
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_98

    .line 144
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    .line 145
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 150
    :goto_10
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_54

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_54

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_54

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_27

    goto :goto_54

    :cond_27
    const/16 v4, 0x20

    if-ne v2, v4, :cond_42

    .line 157
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    .line 158
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 161
    :goto_31
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_56

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_56

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_31

    :cond_42
    const/16 v4, 0x41

    if-lt v2, v4, :cond_4f

    const/16 v4, 0x46

    if-gt v2, v4, :cond_4f

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    .line 165
    aput-char v2, v1, v0

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    .line 168
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_10

    .line 152
    :cond_54
    :goto_54
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 173
    :cond_56
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_81

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_81

    .line 179
    div-int/lit8 v2, v0, 0x2

    new-array v3, v2, [B

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    :goto_69
    if-ge v4, v2, :cond_77

    .line 181
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 184
    :cond_77
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    invoke-direct {v1, v2, p0, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 175
    :cond_81
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_98
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist nextAT()Ljava/lang/String;
    .registers 7

    .line 52
    :goto_0
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_13

    iget-object v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v3, v3, v0

    if-ne v3, v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_0

    :cond_13
    if-ne v0, v1, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_17
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    .line 62
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 63
    :goto_1d
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_32

    iget-object v4, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v4, v4, v0

    if-eq v4, v3, :cond_32

    if-eq v4, v2, :cond_32

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_1d

    .line 67
    :cond_32
    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_d3

    .line 72
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 76
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_71

    .line 77
    :goto_3e
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_51

    iget-object v5, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v5, v5, v0

    if-eq v5, v3, :cond_51

    if-ne v5, v2, :cond_51

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_3e

    .line 80
    :cond_51
    iget-object v5, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v5, v5, v0

    if-ne v5, v3, :cond_5a

    if-eq v0, v1, :cond_5a

    goto :goto_71

    .line 81
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_71
    :goto_71
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 89
    :goto_77
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_88

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_88

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_77

    .line 94
    :cond_88
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int v2, v0, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_c8

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    add-int/lit8 v4, v1, 0x3

    aget-char v4, v2, v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_c8

    aget-char v4, v2, v1

    const/16 v5, 0x4f

    if-eq v4, v5, :cond_a5

    const/16 v5, 0x6f

    if-ne v4, v5, :cond_c8

    :cond_a5
    add-int/lit8 v4, v1, 0x1

    aget-char v4, v2, v4

    const/16 v5, 0x49

    if-eq v4, v5, :cond_b5

    add-int/lit8 v4, v1, 0x1

    aget-char v4, v2, v4

    const/16 v5, 0x69

    if-ne v4, v5, :cond_c8

    :cond_b5
    add-int/lit8 v4, v1, 0x2

    aget-char v4, v2, v4

    const/16 v5, 0x44

    if-eq v4, v5, :cond_c5

    add-int/lit8 v4, v1, 0x2

    aget-char v2, v2, v4

    const/16 v4, 0x64

    if-ne v2, v4, :cond_c8

    :cond_c5
    add-int/2addr v1, v3

    .line 98
    iput v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 101
    :cond_c8
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, p0

    invoke-direct {v1, v2, p0, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 68
    :cond_d3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist quotedAV()Ljava/lang/String;
    .registers 5

    .line 106
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 107
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 108
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 111
    :goto_a
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_5a

    .line 115
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_3c

    add-int/lit8 v0, v0, 0x1

    .line 117
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 131
    :goto_1c
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_2f

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2f

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_1c

    .line 134
    :cond_2f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr p0, v2

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3c
    const/16 v0, 0x5c

    if-ne v2, v0, :cond_49

    .line 120
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_4d

    .line 123
    :cond_49
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aput-char v2, v1, v0

    .line 125
    :goto_4d
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 126
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    goto :goto_a

    .line 112
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 353
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 354
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 355
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    .line 356
    iget-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    .line 358
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return-object v1

    .line 365
    :cond_19
    :goto_19
    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ne v2, v3, :cond_20

    return-object v1

    .line 369
    :cond_20
    iget-object v3, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v3, v2

    const/16 v3, 0x22

    const/16 v4, 0x3b

    const/16 v5, 0x2c

    const/16 v6, 0x2b

    if-eq v2, v3, :cond_45

    const/16 v3, 0x23

    if-eq v2, v3, :cond_40

    if-eq v2, v6, :cond_3d

    if-eq v2, v5, :cond_3d

    if-eq v2, v4, :cond_3d

    .line 382
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    .line 380
    :cond_3d
    const-string v2, ""

    goto :goto_49

    .line 374
    :cond_40
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    .line 371
    :cond_45
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 388
    :goto_49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    return-object v2

    .line 392
    :cond_50
    iget v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v2, :cond_57

    return-object v1

    .line 396
    :cond_57
    iget-object v2, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v2, v0

    const-string v3, "Malformed DN: "

    if-eq v2, v5, :cond_7c

    if-ne v2, v4, :cond_62

    goto :goto_7c

    :cond_62
    if-ne v2, v6, :cond_65

    goto :goto_7c

    .line 398
    :cond_65
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7c
    :goto_7c
    add-int/lit8 v0, v0, 0x1

    .line 401
    iput v0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 402
    invoke-direct {p0}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_87

    goto :goto_19

    .line 404
    :cond_87
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
