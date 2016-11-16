.class public Lsun/security/util/ManifestEntryVerifier;
.super Ljava/lang/Object;
.source "ManifestEntryVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/ManifestEntryVerifier$SunProviderHolder;
    }
.end annotation


# static fields
.field private static final debug:Lsun/security/util/Debug;

.field private static final hexc:[C


# instance fields
.field createdDigests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private decoder:Lsun/misc/BASE64Decoder;

.field digests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private entry:Ljava/util/jar/JarEntry;

.field private man:Ljava/util/jar/Manifest;

.field manifestHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private signers:[Ljava/security/CodeSigner;

.field private skip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "jar"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    #@9
    .line 234
    const/16 v0, 0x10

    #@b
    new-array v0, v0, [C

    #@d
    fill-array-data v0, :array_0

    #@10
    .line 233
    sput-object v0, Lsun/security/util/ManifestEntryVerifier;->hexc:[C

    #@12
    .line 43
    return-void

    #@13
    .line 234
    nop

    #@14
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/util/jar/Manifest;)V
    .locals 2
    .param p1, "man"    # Ljava/util/jar/Manifest;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 66
    iput-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->decoder:Lsun/misc/BASE64Decoder;

    #@6
    .line 67
    iput-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    #@8
    .line 70
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    #@b
    .line 74
    iput-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    #@d
    .line 81
    new-instance v0, Ljava/util/HashMap;

    #@f
    const/16 v1, 0xb

    #@11
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@14
    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->createdDigests:Ljava/util/HashMap;

    #@16
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    #@1d
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->manifestHashes:Ljava/util/ArrayList;

    #@24
    .line 84
    new-instance v0, Lsun/misc/BASE64Decoder;

    #@26
    invoke-direct {v0}, Lsun/misc/BASE64Decoder;-><init>()V

    #@29
    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->decoder:Lsun/misc/BASE64Decoder;

    #@2b
    .line 85
    iput-object p1, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    #@2d
    .line 79
    return-void
.end method

.method static toHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 243
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    array-length v2, p0

    #@3
    mul-int/lit8 v2, v2, 0x2

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@8
    .line 245
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 246
    sget-object v2, Lsun/security/util/ManifestEntryVerifier;->hexc:[C

    #@e
    aget-byte v3, p0, v0

    #@10
    shr-int/lit8 v3, v3, 0x4

    #@12
    and-int/lit8 v3, v3, 0xf

    #@14
    aget-char v2, v2, v3

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@19
    .line 247
    sget-object v2, Lsun/security/util/ManifestEntryVerifier;->hexc:[C

    #@1b
    aget-byte v3, p0, v0

    #@1d
    and-int/lit8 v3, v3, 0xf

    #@1f
    aget-char v2, v2, v3

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@24
    .line 245
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 249
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    return-object v2
.end method


# virtual methods
.method public getEntry()Ljava/util/jar/JarEntry;
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->entry:Ljava/util/jar/JarEntry;

    #@2
    return-object v0
.end method

.method public setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 97
    iget-object v7, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@7
    .line 98
    iget-object v7, p0, Lsun/security/util/ManifestEntryVerifier;->manifestHashes:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@c
    .line 99
    iput-object p1, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    #@e
    .line 100
    iput-object p2, p0, Lsun/security/util/ManifestEntryVerifier;->entry:Ljava/util/jar/JarEntry;

    #@10
    .line 102
    const/4 v7, 0x1

    #@11
    iput-boolean v7, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    #@13
    .line 103
    iput-object v8, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    #@15
    .line 105
    iget-object v7, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    #@17
    if-eqz v7, :cond_0

    #@19
    if-nez p1, :cond_1

    #@1b
    .line 106
    :cond_0
    return-void

    #@1c
    .line 112
    :cond_1
    iget-object v7, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    #@1e
    invoke-virtual {v7, p1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@21
    move-result-object v1

    #@22
    .line 113
    .local v1, "attr":Ljava/util/jar/Attributes;
    if-nez v1, :cond_2

    #@24
    .line 117
    iget-object v7, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    #@26
    new-instance v8, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v9, "./"

    #@2e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v8

    #@32
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v7, v8}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@3d
    move-result-object v1

    #@3e
    .line 118
    if-nez v1, :cond_2

    #@40
    .line 119
    iget-object v7, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    #@42
    new-instance v8, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v9, "/"

    #@4a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v8

    #@4e
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v8

    #@52
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {v7, v8}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@59
    move-result-object v1

    #@5a
    .line 120
    if-nez v1, :cond_2

    #@5c
    .line 121
    return-void

    #@5d
    .line 125
    :cond_2
    invoke-virtual {v1}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    #@60
    move-result-object v7

    #@61
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@64
    move-result-object v6

    #@65
    .local v6, "se$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@68
    move-result v7

    #@69
    if-eqz v7, :cond_5

    #@6b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6e
    move-result-object v5

    #@6f
    check-cast v5, Ljava/util/Map$Entry;

    #@71
    .line 126
    .local v5, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    .line 128
    .local v3, "key":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@7b
    invoke-virtual {v3, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7e
    move-result-object v7

    #@7f
    const-string/jumbo v8, "-DIGEST"

    #@82
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@85
    move-result v7

    #@86
    if-eqz v7, :cond_3

    #@88
    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@8b
    move-result v7

    #@8c
    add-int/lit8 v7, v7, -0x7

    #@8e
    invoke-virtual {v3, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@91
    move-result-object v0

    #@92
    .line 132
    .local v0, "algorithm":Ljava/lang/String;
    iget-object v7, p0, Lsun/security/util/ManifestEntryVerifier;->createdDigests:Ljava/util/HashMap;

    #@94
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    move-result-object v2

    #@98
    check-cast v2, Ljava/security/MessageDigest;

    #@9a
    .line 134
    .local v2, "digest":Ljava/security/MessageDigest;
    if-nez v2, :cond_4

    #@9c
    .line 138
    :try_start_0
    invoke-static {}, Lsun/security/util/ManifestEntryVerifier$SunProviderHolder;->-get0()Ljava/security/Provider;

    #@9f
    move-result-object v7

    #@a0
    .line 137
    invoke-static {v0, v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    #@a3
    move-result-object v2

    #@a4
    .line 139
    iget-object v7, p0, Lsun/security/util/ManifestEntryVerifier;->createdDigests:Ljava/util/HashMap;

    #@a6
    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@a9
    .line 145
    :cond_4
    :goto_1
    if-eqz v2, :cond_3

    #@ab
    .line 146
    iput-boolean v10, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    #@ad
    .line 147
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    #@b0
    .line 148
    iget-object v7, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    #@b2
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b5
    .line 149
    iget-object v8, p0, Lsun/security/util/ManifestEntryVerifier;->manifestHashes:Ljava/util/ArrayList;

    #@b7
    .line 150
    iget-object v9, p0, Lsun/security/util/ManifestEntryVerifier;->decoder:Lsun/misc/BASE64Decoder;

    #@b9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@bc
    move-result-object v7

    #@bd
    check-cast v7, Ljava/lang/String;

    #@bf
    invoke-virtual {v9, v7}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    #@c2
    move-result-object v7

    #@c3
    .line 149
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c6
    goto :goto_0

    #@c7
    .line 95
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_5
    return-void

    #@c8
    .line 140
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v4

    #@c9
    .local v4, "nsae":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1
.end method

.method public update(B)V
    .locals 2
    .param p1, "buffer"    # B

    #@0
    .prologue
    .line 160
    iget-boolean v1, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    return-void

    #@5
    .line 162
    :cond_0
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_1

    #@e
    .line 163
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/security/MessageDigest;

    #@16
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update(B)V

    #@19
    .line 162
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 159
    :cond_1
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 171
    iget-boolean v1, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    return-void

    #@5
    .line 173
    :cond_0
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_1

    #@e
    .line 174
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/security/MessageDigest;

    #@16
    invoke-virtual {v1, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    #@19
    .line 173
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 170
    :cond_1
    return-void
.end method

.method public verify(Ljava/util/Hashtable;Ljava/util/Hashtable;)[Ljava/security/CodeSigner;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;)[",
            "Ljava/security/CodeSigner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/jar/JarException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "verifiedSigners":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    .local p2, "sigFileSigners":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    const/4 v5, 0x0

    #@1
    .line 198
    iget-boolean v4, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 199
    return-object v5

    #@6
    .line 202
    :cond_0
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    #@8
    if-eqz v4, :cond_1

    #@a
    .line 203
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    #@c
    return-object v4

    #@d
    .line 205
    :cond_1
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v4

    #@14
    if-ge v1, v4, :cond_4

    #@16
    .line 207
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/security/MessageDigest;

    #@1e
    .line 208
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->manifestHashes:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, [B

    #@26
    .line 209
    .local v2, "manHash":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    #@29
    move-result-object v3

    #@2a
    .line 211
    .local v3, "theHash":[B
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 212
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    #@30
    new-instance v5, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v6, "Manifest Entry: "

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    .line 213
    iget-object v6, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    #@3e
    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    .line 213
    const-string/jumbo v6, " digest="

    #@45
    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    .line 213
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@58
    .line 214
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    #@5a
    new-instance v5, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v6, "  manifest "

    #@62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    invoke-static {v2}, Lsun/security/util/ManifestEntryVerifier;->toHex([B)Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@75
    .line 215
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    #@77
    new-instance v5, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v6, "  computed "

    #@7f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    invoke-static {v3}, Lsun/security/util/ManifestEntryVerifier;->toHex([B)Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@92
    .line 216
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    #@94
    invoke-virtual {v4}, Lsun/security/util/Debug;->println()V

    #@97
    .line 219
    :cond_2
    invoke-static {v3, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    #@9a
    move-result v4

    #@9b
    if-nez v4, :cond_3

    #@9d
    .line 220
    new-instance v4, Ljava/lang/SecurityException;

    #@9f
    new-instance v5, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    #@a7
    move-result-object v6

    #@a8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v5

    #@ac
    .line 221
    const-string/jumbo v6, " digest error for "

    #@af
    .line 220
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    .line 221
    iget-object v6, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    #@b5
    .line 220
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v5

    #@b9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v5

    #@bd
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@c0
    throw v4

    #@c1
    .line 205
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@c3
    goto/16 :goto_0

    #@c5
    .line 225
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "manHash":[B
    .end local v3    # "theHash":[B
    :cond_4
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    #@c7
    invoke-virtual {p2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@ca
    move-result-object v4

    #@cb
    check-cast v4, [Ljava/security/CodeSigner;

    #@cd
    iput-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    #@cf
    .line 226
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    #@d1
    if-eqz v4, :cond_5

    #@d3
    .line 227
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    #@d5
    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    #@d7
    invoke-virtual {p1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@da
    .line 229
    :cond_5
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    #@dc
    return-object v4
.end method
