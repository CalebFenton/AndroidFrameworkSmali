.class public Lsun/security/util/ManifestDigester$Entry;
.super Ljava/lang/Object;
.source "ManifestDigester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/ManifestDigester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field greylist-max-o length:I

.field greylist-max-o lengthWithBlankLine:I

.field greylist-max-o offset:I

.field greylist-max-o oldStyle:Z

.field greylist-max-o rawBytes:[B


# direct methods
.method public constructor blacklist <init>(III[B)V
    .registers 5
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "lengthWithBlankLine"    # I
    .param p4, "rawBytes"    # [B

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p1, p0, Lsun/security/util/ManifestDigester$Entry;->offset:I

    .line 205
    iput p2, p0, Lsun/security/util/ManifestDigester$Entry;->length:I

    .line 206
    iput p3, p0, Lsun/security/util/ManifestDigester$Entry;->lengthWithBlankLine:I

    .line 207
    iput-object p4, p0, Lsun/security/util/ManifestDigester$Entry;->rawBytes:[B

    .line 208
    return-void
.end method

.method private greylist-max-o doOldStyle(Ljava/security/MessageDigest;[BII)V
    .registers 11
    .param p1, "md"    # Ljava/security/MessageDigest;
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 231
    move v0, p3

    .line 232
    .local v0, "i":I
    move v1, p3

    .line 233
    .local v1, "start":I
    add-int v2, p3, p4

    .line 234
    .local v2, "max":I
    const/4 v3, -0x1

    .line 235
    .local v3, "prev":I
    :goto_5
    if-ge v0, v2, :cond_1e

    .line 236
    aget-byte v4, p2, v0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_19

    const/16 v4, 0x20

    if-ne v3, v4, :cond_19

    .line 237
    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, p2, v1, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 238
    move v1, v0

    .line 240
    :cond_19
    aget-byte v3, p2, v0

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 243
    :cond_1e
    sub-int v4, v0, v1

    invoke-virtual {p1, p2, v1, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 244
    return-void
.end method


# virtual methods
.method public greylist digest(Ljava/security/MessageDigest;)[B
    .registers 5
    .param p1, "md"    # Ljava/security/MessageDigest;

    .line 212
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 213
    iget-boolean v0, p0, Lsun/security/util/ManifestDigester$Entry;->oldStyle:Z

    if-eqz v0, :cond_11

    .line 214
    iget-object v0, p0, Lsun/security/util/ManifestDigester$Entry;->rawBytes:[B

    iget v1, p0, Lsun/security/util/ManifestDigester$Entry;->offset:I

    iget v2, p0, Lsun/security/util/ManifestDigester$Entry;->lengthWithBlankLine:I

    invoke-direct {p0, p1, v0, v1, v2}, Lsun/security/util/ManifestDigester$Entry;->doOldStyle(Ljava/security/MessageDigest;[BII)V

    goto :goto_1a

    .line 216
    :cond_11
    iget-object v0, p0, Lsun/security/util/ManifestDigester$Entry;->rawBytes:[B

    iget v1, p0, Lsun/security/util/ManifestDigester$Entry;->offset:I

    iget v2, p0, Lsun/security/util/ManifestDigester$Entry;->lengthWithBlankLine:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 218
    :goto_1a
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r digestWorkaround(Ljava/security/MessageDigest;)[B
    .registers 5
    .param p1, "md"    # Ljava/security/MessageDigest;

    .line 251
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 252
    iget-object v0, p0, Lsun/security/util/ManifestDigester$Entry;->rawBytes:[B

    iget v1, p0, Lsun/security/util/ManifestDigester$Entry;->offset:I

    iget v2, p0, Lsun/security/util/ManifestDigester$Entry;->length:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 253
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method
