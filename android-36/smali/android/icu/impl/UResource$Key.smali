.class public final Landroid/icu/impl/UResource$Key;
.super Ljava/lang/Object;
.source "UResource.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/impl/UResource$Key;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o bytes:[B

.field private greylist-max-o length:I

.field private greylist-max-o offset:I

.field private greylist-max-o s:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-class v0, Landroid/icu/impl/UResource;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Landroid/icu/impl/UResource$Key;->setString(Ljava/lang/String;)Landroid/icu/impl/UResource$Key;

    .line 55
    return-void
.end method

.method private constructor greylist-max-o <init>([BII)V
    .registers 4
    .param p1, "keyBytes"    # [B
    .param p2, "keyOffset"    # I
    .param p3, "keyLength"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    .line 59
    iput p2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    .line 60
    iput p3, p0, Landroid/icu/impl/UResource$Key;->length:I

    .line 61
    return-void
.end method

.method private greylist-max-o internalSubString(II)Ljava/lang/String;
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 158
    .local v0, "sb":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_8
    if-ge v1, p2, :cond_18

    .line 159
    iget-object v2, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v3, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 161
    .end local v1    # "i":I
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o regionMatches(ILjava/lang/CharSequence;I)Z
    .registers 7
    .param p1, "start"    # I
    .param p2, "cs"    # Ljava/lang/CharSequence;
    .param p3, "n"    # I

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_16

    .line 192
    iget-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v2, p1

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_13

    .line 193
    const/4 v1, 0x0

    return v1

    .line 191
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o regionMatches([BII)Z
    .registers 7
    .param p1, "otherBytes"    # [B
    .param p2, "otherOffset"    # I
    .param p3, "n"    # I

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_15

    .line 183
    iget-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    if-eq v1, v2, :cond_12

    .line 184
    const/4 v1, 0x0

    return v1

    .line 182
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    .end local v0    # "i":I
    :cond_15
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 4
    .param p1, "i"    # I

    .line 129
    nop

    .line 130
    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v1, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public blacklist clone()Landroid/icu/impl/UResource$Key;
    .registers 3

    .line 121
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/UResource$Key;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 122
    :catch_7
    move-exception v0

    .line 123
    .local v0, "cannotOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->clone()Landroid/icu/impl/UResource$Key;

    move-result-object v0

    return-object v0
.end method

.method public blacklist compareTo(Landroid/icu/impl/UResource$Key;)I
    .registers 3
    .param p1, "other"    # Landroid/icu/impl/UResource$Key;

    .line 257
    invoke-virtual {p0, p1}, Landroid/icu/impl/UResource$Key;->compareTo(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public blacklist compareTo(Ljava/lang/CharSequence;)I
    .registers 7
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 261
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 262
    .local v0, "csLength":I
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-gt v1, v0, :cond_b

    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    goto :goto_c

    :cond_b
    move v1, v0

    .line 263
    .local v1, "minLength":I
    :goto_c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_1e

    .line 264
    invoke-virtual {p0, v2}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    sub-int/2addr v3, v4

    .line 265
    .local v3, "diff":I
    if-eqz v3, :cond_1b

    .line 266
    return v3

    .line 263
    .end local v3    # "diff":I
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 269
    .end local v2    # "i":I
    :cond_1e
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    sub-int/2addr v2, v0

    return v2
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    check-cast p1, Landroid/icu/impl/UResource$Key;

    invoke-virtual {p0, p1}, Landroid/icu/impl/UResource$Key;->compareTo(Landroid/icu/impl/UResource$Key;)I

    move-result p1

    return p1
.end method

.method public blacklist contentEquals(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 215
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 216
    return v0

    .line 218
    :cond_4
    if-eq p0, p1, :cond_16

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-ne v1, v2, :cond_17

    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    invoke-direct {p0, v0, p1, v1}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public blacklist endsWith(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 227
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 228
    .local v0, "csLength":I
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-gt v0, v1, :cond_13

    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1, p1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 201
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 202
    return v0

    .line 203
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 204
    return v1

    .line 205
    :cond_8
    instance-of v2, p1, Landroid/icu/impl/UResource$Key;

    if-eqz v2, :cond_25

    .line 206
    move-object v2, p1

    check-cast v2, Landroid/icu/impl/UResource$Key;

    .line 207
    .local v2, "otherKey":Landroid/icu/impl/UResource$Key;
    iget v3, p0, Landroid/icu/impl/UResource$Key;->length:I

    iget v4, v2, Landroid/icu/impl/UResource$Key;->length:I

    if-ne v3, v4, :cond_23

    iget-object v3, v2, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v4, v2, Landroid/icu/impl/UResource$Key;->offset:I

    iget v5, p0, Landroid/icu/impl/UResource$Key;->length:I

    .line 208
    invoke-direct {p0, v3, v4, v5}, Landroid/icu/impl/UResource$Key;->regionMatches([BII)Z

    move-result v3

    if-eqz v3, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    nop

    .line 207
    :goto_24
    return v0

    .line 210
    .end local v2    # "otherKey":Landroid/icu/impl/UResource$Key;
    :cond_25
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 244
    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-nez v0, :cond_6

    .line 245
    const/4 v0, 0x0

    return v0

    .line 248
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v1, p0, Landroid/icu/impl/UResource$Key;->offset:I

    aget-byte v0, v0, v1

    .line 249
    .local v0, "h":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_d
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-ge v1, v2, :cond_1e

    .line 250
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v4, p0, Landroid/icu/impl/UResource$Key;->offset:I

    aget-byte v3, v3, v4

    add-int v0, v2, v3

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 252
    .end local v1    # "i":I
    :cond_1e
    return v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    return v0
.end method

.method public blacklist regionMatches(ILjava/lang/CharSequence;)Z
    .registers 5
    .param p1, "start"    # I
    .param p2, "cs"    # Ljava/lang/CharSequence;

    .line 236
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 237
    .local v0, "csLength":I
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    sub-int/2addr v1, p1

    if-ne v0, v1, :cond_11

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public blacklist setBytes([BI)Landroid/icu/impl/UResource$Key;
    .registers 4
    .param p1, "keyBytes"    # [B
    .param p2, "keyOffset"    # I

    .line 74
    iput-object p1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    .line 75
    iput p2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    .line 76
    const/4 v0, 0x0

    :goto_5
    iput v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 77
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public blacklist setString(Ljava/lang/String;)Landroid/icu/impl/UResource$Key;
    .registers 7
    .param p1, "s"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 96
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->setToEmpty()Landroid/icu/impl/UResource$Key;

    goto :goto_51

    .line 98
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/UResource$Key;->offset:I

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-ge v0, v1, :cond_4f

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 103
    .local v1, "c":C
    const/16 v2, 0x7f

    if-gt v1, v2, :cond_30

    .line 104
    iget-object v2, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    .line 101
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 106
    .restart local v1    # "c":C
    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is not an ASCII string"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_4f
    iput-object p1, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    .line 111
    :goto_51
    return-object p0
.end method

.method public blacklist setToEmpty()Landroid/icu/impl/UResource$Key;
    .registers 2

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    iput v0, p0, Landroid/icu/impl/UResource$Key;->offset:I

    .line 87
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public blacklist startsWith(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 222
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 223
    .local v0, "csLength":I
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_10

    invoke-direct {p0, v2, p1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method public blacklist subSequence(II)Landroid/icu/impl/UResource$Key;
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 140
    nop

    .line 141
    nop

    .line 142
    new-instance v0, Landroid/icu/impl/UResource$Key;

    iget-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/UResource$Key;-><init>([BII)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/UResource$Key;->subSequence(II)Landroid/icu/impl/UResource$Key;

    move-result-object p1

    return-object p1
.end method

.method public blacklist substring(I)Ljava/lang/String;
    .registers 3
    .param p1, "start"    # I

    .line 168
    nop

    .line 169
    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UResource$Key;->internalSubString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist substring(II)Ljava/lang/String;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 176
    nop

    .line 177
    nop

    .line 178
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UResource$Key;->internalSubString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 150
    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 151
    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/UResource$Key;->internalSubString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    .line 153
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    return-object v0
.end method
