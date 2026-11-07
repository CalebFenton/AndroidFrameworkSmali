.class public final Landroid/app/blob/BlobHandle;
.super Ljava/lang/Object;
.source "BlobHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist ALGO_SHA_256:Ljava/lang/String; = "SHA-256"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/blob/BlobHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LIMIT_BLOB_LABEL_LENGTH:I = 0x64

.field private static final blacklist LIMIT_BLOB_TAG_LENGTH:I = 0x80

.field private static final blacklist SUPPORTED_ALGOS:[Ljava/lang/String;


# instance fields
.field public final blacklist algorithm:Ljava/lang/String;

.field public final blacklist digest:[B

.field public final blacklist expiryTimeMillis:J

.field public final blacklist label:Ljava/lang/CharSequence;

.field public final blacklist tag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-string v0, "SHA-256"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/blob/BlobHandle;->SUPPORTED_ALGOS:[Ljava/lang/String;

    .line 273
    new-instance v0, Landroid/app/blob/BlobHandle$1;

    invoke-direct {v0}, Landroid/app/blob/BlobHandle$1;-><init>()V

    sput-object v0, Landroid/app/blob/BlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/app/blob/BlobHandle;->digest:[B

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/blob/BlobHandle;->label:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/blob/BlobHandle;->tag:Ljava/lang/String;

    .line 107
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/blob/BlobHandle-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/blob/BlobHandle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;[BLjava/lang/CharSequence;JLjava/lang/String;)V
    .registers 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "digest"    # [B
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "expiryTimeMillis"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Landroid/app/blob/BlobHandle;->digest:[B

    .line 96
    iput-object p3, p0, Landroid/app/blob/BlobHandle;->label:Ljava/lang/CharSequence;

    .line 97
    iput-wide p4, p0, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    .line 98
    iput-object p6, p0, Landroid/app/blob/BlobHandle;->tag:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static blacklist create(Ljava/lang/String;[BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;
    .registers 13
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "digest"    # [B
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "expiryTimeMillis"    # J
    .param p5, "tag"    # Ljava/lang/String;

    .line 113
    new-instance v0, Landroid/app/blob/BlobHandle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .end local p0    # "algorithm":Ljava/lang/String;
    .end local p1    # "digest":[B
    .end local p2    # "label":Ljava/lang/CharSequence;
    .end local p3    # "expiryTimeMillis":J
    .end local p5    # "tag":Ljava/lang/String;
    .local v1, "algorithm":Ljava/lang/String;
    .local v2, "digest":[B
    .local v3, "label":Ljava/lang/CharSequence;
    .local v4, "expiryTimeMillis":J
    .local v6, "tag":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/app/blob/BlobHandle;-><init>(Ljava/lang/String;[BLjava/lang/CharSequence;JLjava/lang/String;)V

    .line 114
    .local v0, "handle":Landroid/app/blob/BlobHandle;
    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 115
    return-object v0
.end method

.method public static blacklist createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/blob/BlobHandle;
    .registers 8
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    const-string v0, "al"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "algo":Ljava/lang/String;
    const-string v0, "dg"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v2

    .line 299
    .local v2, "digest":[B
    const-string/jumbo v0, "lbl"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "label":Ljava/lang/CharSequence;
    const-string v0, "ex"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    .line 301
    .local v4, "expiryTimeMs":J
    const-string/jumbo v0, "tg"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "tag":Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Landroid/app/blob/BlobHandle;->create(Ljava/lang/String;[BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createWithSha256([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;
    .registers 11
    .param p0, "digest"    # [B
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "expiryTimeMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;

    .line 147
    const-string v0, "SHA-256"

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .end local p0    # "digest":[B
    .end local p1    # "label":Ljava/lang/CharSequence;
    .end local p2    # "expiryTimeMillis":J
    .end local p4    # "tag":Ljava/lang/String;
    .local v1, "digest":[B
    .local v2, "label":Ljava/lang/CharSequence;
    .local v3, "expiryTimeMillis":J
    .local v5, "tag":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/app/blob/BlobHandle;->create(Ljava/lang/String;[BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist encodeDigest([B)Ljava/lang/String;
    .registers 2
    .param p0, "digest"    # [B

    .line 265
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist safeDigest([B)Ljava/lang/String;
    .registers 5
    .param p0, "digest"    # [B

    .line 260
    invoke-static {p0}, Landroid/app/blob/BlobHandle;->encodeDigest([B)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "digestStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist assertIsValid()V
    .registers 6

    .line 237
    sget-object v0, Landroid/app/blob/BlobHandle;->SUPPORTED_ALGOS:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentIsSupported([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->digest:[B

    const-string v1, "digest"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkByteArrayNotEmpty([BLjava/lang/String;)[B

    .line 239
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->label:Ljava/lang/CharSequence;

    const-string/jumbo v1, "label must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 240
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v3

    :goto_25
    const-string/jumbo v1, "label too long"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 241
    iget-wide v0, p0, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    const-string v4, "expiryTimeMillis must not be negative"

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 243
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->tag:Ljava/lang/String;

    const-string/jumbo v1, "tag must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 244
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_45

    goto :goto_46

    :cond_45
    move v2, v3

    :goto_46
    const-string/jumbo v0, "tag too long"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 245
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/IndentingPrintWriter;Z)V
    .registers 6
    .param p1, "fout"    # Landroid/util/IndentingPrintWriter;
    .param p2, "dumpFull"    # Z

    .line 224
    if-eqz p2, :cond_88

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "algo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "digest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->digest:[B

    if-eqz p2, :cond_2e

    invoke-static {v1}, Landroid/app/blob/BlobHandle;->encodeDigest([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :cond_2e
    invoke-static {v1}, Landroid/app/blob/BlobHandle;->safeDigest([B)Ljava/lang/String;

    move-result-object v1

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expiryMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8f

    .line 231
    :cond_88
    invoke-virtual {p0}, Landroid/app/blob/BlobHandle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 233
    :goto_8f
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 203
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 204
    return v0

    .line 206
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4a

    instance-of v2, p1, Landroid/app/blob/BlobHandle;

    if-nez v2, :cond_c

    goto :goto_4a

    .line 209
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/app/blob/BlobHandle;

    .line 210
    .local v2, "other":Landroid/app/blob/BlobHandle;
    iget-object v3, p0, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/app/blob/BlobHandle;->digest:[B

    iget-object v4, v2, Landroid/app/blob/BlobHandle;->digest:[B

    .line 211
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/app/blob/BlobHandle;->label:Ljava/lang/CharSequence;

    .line 212
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/app/blob/BlobHandle;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-wide v3, p0, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    iget-wide v5, v2, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_48

    iget-object v3, p0, Landroid/app/blob/BlobHandle;->tag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/blob/BlobHandle;->tag:Ljava/lang/String;

    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    .line 210
    :goto_49
    return v0

    .line 207
    .end local v2    # "other":Landroid/app/blob/BlobHandle;
    :cond_4a
    :goto_4a
    return v1
.end method

.method public whitelist getExpiryTimeMillis()J
    .registers 3

    .line 175
    iget-wide v0, p0, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    return-wide v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSha256Digest()[B
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->digest:[B

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 219
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->digest:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/blob/BlobHandle;->label:Ljava/lang/CharSequence;

    iget-wide v3, p0, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Landroid/app/blob/BlobHandle;->tag:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isExpired()Z
    .registers 5

    .line 270
    iget-wide v0, p0, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    iget-wide v0, p0, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlobHandle {algo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",digest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->digest:[B

    .line 251
    invoke-static {v1}, Landroid/app/blob/BlobHandle;->safeDigest([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expiryMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 194
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->digest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 196
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->label:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 197
    iget-wide v0, p0, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    iget-object v0, p0, Landroid/app/blob/BlobHandle;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public blacklist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    const-string v0, "al"

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 288
    const-string v0, "dg"

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->digest:[B

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 289
    const-string/jumbo v0, "lbl"

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->label:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 290
    const-string v0, "ex"

    iget-wide v1, p0, Landroid/app/blob/BlobHandle;->expiryTimeMillis:J

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 291
    const-string/jumbo v0, "tg"

    iget-object v1, p0, Landroid/app/blob/BlobHandle;->tag:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 292
    return-void
.end method
