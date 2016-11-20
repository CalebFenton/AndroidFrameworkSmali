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
.field length:I

.field lengthWithBlankLine:I

.field offset:I

.field oldStyle:Z

.field rawBytes:[B


# direct methods
.method public constructor <init>(III[B)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "lengthWithBlankLine"    # I
    .param p4, "rawBytes"    # [B

    #@0
    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 202
    iput p1, p0, Lsun/security/util/ManifestDigester$Entry;->offset:I

    #@5
    .line 203
    iput p2, p0, Lsun/security/util/ManifestDigester$Entry;->length:I

    #@7
    .line 204
    iput p3, p0, Lsun/security/util/ManifestDigester$Entry;->lengthWithBlankLine:I

    #@9
    .line 205
    iput-object p4, p0, Lsun/security/util/ManifestDigester$Entry;->rawBytes:[B

    #@b
    .line 200
    return-void
.end method

.method private doOldStyle(Ljava/security/MessageDigest;[BII)V
    .locals 6
    .param p1, "md"    # Ljava/security/MessageDigest;
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 229
    move v0, p3

    #@1
    .line 230
    .local v0, "i":I
    move v3, p3

    #@2
    .line 231
    .local v3, "start":I
    add-int v1, p3, p4

    #@4
    .line 232
    .local v1, "max":I
    const/4 v2, -0x1

    #@5
    .line 233
    .local v2, "prev":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 234
    aget-byte v4, p2, v0

    #@9
    const/16 v5, 0xd

    #@b
    if-ne v4, v5, :cond_0

    #@d
    const/16 v4, 0x20

    #@f
    if-ne v2, v4, :cond_0

    #@11
    .line 235
    sub-int v4, v0, v3

    #@13
    add-int/lit8 v4, v4, -0x1

    #@15
    invoke-virtual {p1, p2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    #@18
    .line 236
    move v3, v0

    #@19
    .line 238
    :cond_0
    aget-byte v2, p2, v0

    #@1b
    .line 239
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 241
    :cond_1
    sub-int v4, v0, v3

    #@20
    invoke-virtual {p1, p2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    #@23
    .line 222
    return-void
.end method


# virtual methods
.method public digest(Ljava/security/MessageDigest;)[B
    .locals 3
    .param p1, "md"    # Ljava/security/MessageDigest;

    #@0
    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    #@3
    .line 211
    iget-boolean v0, p0, Lsun/security/util/ManifestDigester$Entry;->oldStyle:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 212
    iget-object v0, p0, Lsun/security/util/ManifestDigester$Entry;->rawBytes:[B

    #@9
    iget v1, p0, Lsun/security/util/ManifestDigester$Entry;->offset:I

    #@b
    iget v2, p0, Lsun/security/util/ManifestDigester$Entry;->lengthWithBlankLine:I

    #@d
    invoke-direct {p0, p1, v0, v1, v2}, Lsun/security/util/ManifestDigester$Entry;->doOldStyle(Ljava/security/MessageDigest;[BII)V

    #@10
    .line 216
    :goto_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 214
    :cond_0
    iget-object v0, p0, Lsun/security/util/ManifestDigester$Entry;->rawBytes:[B

    #@17
    iget v1, p0, Lsun/security/util/ManifestDigester$Entry;->offset:I

    #@19
    iget v2, p0, Lsun/security/util/ManifestDigester$Entry;->lengthWithBlankLine:I

    #@1b
    invoke-virtual {p1, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    #@1e
    goto :goto_0
.end method

.method public digestWorkaround(Ljava/security/MessageDigest;)[B
    .locals 3
    .param p1, "md"    # Ljava/security/MessageDigest;

    #@0
    .prologue
    .line 249
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    #@3
    .line 250
    iget-object v0, p0, Lsun/security/util/ManifestDigester$Entry;->rawBytes:[B

    #@5
    iget v1, p0, Lsun/security/util/ManifestDigester$Entry;->offset:I

    #@7
    iget v2, p0, Lsun/security/util/ManifestDigester$Entry;->length:I

    #@9
    invoke-virtual {p1, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    #@c
    .line 251
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method
