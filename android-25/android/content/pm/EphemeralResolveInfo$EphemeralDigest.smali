.class public final Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
.super Ljava/lang/Object;
.source "EphemeralResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/EphemeralResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EphemeralDigest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDigestBytes:[[B

.field private final mDigestPrefix:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 227
    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;-><init>()V

    #@5
    .line 226
    sput-object v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;II)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "digestMask"    # I
    .param p3, "maxDigests"    # I

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 139
    if-nez p1, :cond_0

    #@5
    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v1

    #@b
    .line 142
    :cond_0
    invoke-static {p1, p3}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->generateDigest(Landroid/net/Uri;I)[[B

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@11
    .line 143
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@13
    array-length v1, v1

    #@14
    new-array v1, v1, [I

    #@16
    iput-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestPrefix:[I

    #@18
    .line 144
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@1b
    array-length v1, v1

    #@1c
    if-ge v0, v1, :cond_1

    #@1e
    .line 145
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestPrefix:[I

    #@20
    .line 146
    iget-object v2, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@22
    aget-object v2, v2, v0

    #@24
    const/4 v3, 0x0

    #@25
    aget-byte v2, v2, v3

    #@27
    and-int/lit16 v2, v2, 0xff

    #@29
    shl-int/lit8 v2, v2, 0x18

    #@2b
    .line 147
    iget-object v3, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@2d
    aget-object v3, v3, v0

    #@2f
    const/4 v4, 0x1

    #@30
    aget-byte v3, v3, v4

    #@32
    and-int/lit16 v3, v3, 0xff

    #@34
    shl-int/lit8 v3, v3, 0x10

    #@36
    .line 146
    or-int/2addr v2, v3

    #@37
    .line 148
    iget-object v3, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@39
    aget-object v3, v3, v0

    #@3b
    const/4 v4, 0x2

    #@3c
    aget-byte v3, v3, v4

    #@3e
    and-int/lit16 v3, v3, 0xff

    #@40
    shl-int/lit8 v3, v3, 0x8

    #@42
    .line 146
    or-int/2addr v2, v3

    #@43
    .line 149
    iget-object v3, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@45
    aget-object v3, v3, v0

    #@47
    const/4 v4, 0x3

    #@48
    aget-byte v3, v3, v4

    #@4a
    and-int/lit16 v3, v3, 0xff

    #@4c
    shl-int/lit8 v3, v3, 0x0

    #@4e
    .line 146
    or-int/2addr v2, v3

    #@4f
    and-int/2addr v2, p2

    #@50
    .line 145
    aput v2, v1, v0

    #@52
    .line 144
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_0

    #@55
    .line 138
    :cond_1
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    .line 188
    .local v0, "digestCount":I
    const/4 v2, -0x1

    #@8
    if-ne v0, v2, :cond_1

    #@a
    .line 189
    const/4 v2, 0x0

    #@b
    iput-object v2, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@d
    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@10
    move-result-object v2

    #@11
    iput-object v2, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestPrefix:[I

    #@13
    .line 186
    return-void

    #@14
    .line 191
    :cond_1
    new-array v2, v0, [[B

    #@16
    iput-object v2, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@18
    .line 192
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@1b
    .line 193
    iget-object v2, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@1d
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@20
    move-result-object v3

    #@21
    aput-object v3, v2, v1

    #@23
    .line 192
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0
.end method

.method private static generateDigest(Landroid/net/Uri;I)[[B
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "maxDigests"    # I

    #@0
    .prologue
    .line 155
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 157
    .local v2, "digests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@b
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    .line 158
    .local v4, "host":Ljava/lang/String;
    const-string/jumbo v7, "SHA-256"

    #@12
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@15
    move-result-object v0

    #@16
    .line 159
    .local v0, "digest":Ljava/security/MessageDigest;
    if-gtz p1, :cond_1

    #@18
    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    #@1b
    move-result-object v5

    #@1c
    .line 161
    .local v5, "hostBytes":[B
    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 183
    .end local v5    # "hostBytes":[B
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v7

    #@27
    new-array v7, v7, [[B

    #@29
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2c
    move-result-object v7

    #@2d
    check-cast v7, [[B

    #@2f
    return-object v7

    #@30
    .line 163
    :cond_1
    const/16 v7, 0x2e

    #@32
    :try_start_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    #@35
    move-result v6

    #@36
    .line 164
    .local v6, "prevDot":I
    const/16 v7, 0x2e

    #@38
    add-int/lit8 v8, v6, -0x1

    #@3a
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->lastIndexOf(II)I

    #@3d
    move-result v6

    #@3e
    .line 166
    if-gez v6, :cond_2

    #@40
    .line 167
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->digest([B)[B

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    #@4b
    goto :goto_0

    #@4c
    .line 180
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "host":Ljava/lang/String;
    .end local v6    # "prevDot":I
    :catch_0
    move-exception v3

    #@4d
    .line 181
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/lang/IllegalStateException;

    #@4f
    const-string/jumbo v8, "could not find digest algorithm"

    #@52
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@55
    throw v7

    #@56
    .line 169
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    .restart local v4    # "host":Ljava/lang/String;
    .restart local v6    # "prevDot":I
    :cond_2
    add-int/lit8 v7, v6, 0x1

    #@58
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@5b
    move-result v8

    #@5c
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    #@63
    move-result-object v5

    #@64
    .line 170
    .restart local v5    # "hostBytes":[B
    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    #@67
    move-result-object v7

    #@68
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6b
    .line 171
    const/4 v1, 0x1

    #@6c
    .line 172
    .local v1, "digestCount":I
    :goto_1
    if-ltz v6, :cond_0

    #@6e
    if-ge v1, p1, :cond_0

    #@70
    .line 173
    const/16 v7, 0x2e

    #@72
    add-int/lit8 v8, v6, -0x1

    #@74
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->lastIndexOf(II)I

    #@77
    move-result v6

    #@78
    .line 174
    add-int/lit8 v7, v6, 0x1

    #@7a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@7d
    move-result v8

    #@7e
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    #@85
    move-result-object v5

    #@86
    .line 175
    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    #@89
    move-result-object v7

    #@8a
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    #@8d
    .line 176
    add-int/lit8 v1, v1, 0x1

    #@8f
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 209
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDigestBytes()[[B
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@2
    return-object v0
.end method

.method public getDigestPrefix()[I
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestPrefix:[I

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 214
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@2
    if-nez v1, :cond_1

    #@4
    .line 215
    const/4 v1, -0x1

    #@5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 222
    :cond_0
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestPrefix:[I

    #@a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@d
    .line 213
    return-void

    #@e
    .line 217
    :cond_1
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@10
    array-length v1, v1

    #@11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 218
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@17
    array-length v1, v1

    #@18
    if-ge v0, v1, :cond_0

    #@1a
    .line 219
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->mDigestBytes:[[B

    #@1c
    aget-object v1, v1, v0

    #@1e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@21
    .line 218
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0
.end method
