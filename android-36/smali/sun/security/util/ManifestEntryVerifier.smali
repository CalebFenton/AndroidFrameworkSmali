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
.field private static final greylist-max-o debug:Lsun/security/util/Debug;

.field private static final greylist-max-o hexc:[C


# instance fields
.field greylist-max-o createdDigests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o digests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o entry:Ljava/util/jar/JarEntry;

.field private greylist-max-o man:Ljava/util/jar/Manifest;

.field greylist-max-o manifestHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o signers:[Ljava/security/CodeSigner;

.field private greylist-max-o skip:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-string v0, "jar"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    .line 231
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lsun/security/util/ManifestEntryVerifier;->hexc:[C

    return-void

    :array_12
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

.method public constructor blacklist <init>(Ljava/util/jar/Manifest;)V
    .registers 4
    .param p1, "man"    # Ljava/util/jar/Manifest;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    .line 73
    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->createdDigests:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->manifestHashes:Ljava/util/ArrayList;

    .line 83
    iput-object p1, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    .line 84
    return-void
.end method

.method static greylist-max-o toHex([B)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B

    .line 241
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 243
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_27

    .line 244
    sget-object v2, Lsun/security/util/ManifestEntryVerifier;->hexc:[C

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 245
    sget-object v2, Lsun/security/util/ManifestEntryVerifier;->hexc:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 247
    .end local v1    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getEntry()Ljava/util/jar/JarEntry;
    .registers 2

    .line 181
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->entry:Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public blacklist setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->manifestHashes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    iput-object p1, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lsun/security/util/ManifestEntryVerifier;->entry:Ljava/util/jar/JarEntry;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    .line 103
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    if-eqz v0, :cond_cb

    if-nez p1, :cond_1c

    goto/16 :goto_cb

    .line 110
    :cond_1c
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    invoke-virtual {v0, p1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v0

    .line 111
    .local v0, "attr":Ljava/util/jar/Attributes;
    if-nez v0, :cond_5b

    .line 115
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "./"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v0

    .line 116
    if-nez v0, :cond_5b

    .line 117
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v0

    .line 118
    if-nez v0, :cond_5b

    .line 119
    return-void

    .line 123
    :cond_5b
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 124
    .local v2, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-DIGEST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "algorithm":Ljava/lang/String;
    iget-object v6, p0, Lsun/security/util/ManifestEntryVerifier;->createdDigests:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/MessageDigest;

    .line 132
    .local v6, "digest":Ljava/security/MessageDigest;
    if-nez v6, :cond_aa

    .line 135
    :try_start_9a
    invoke-static {}, Lsun/security/util/ManifestEntryVerifier$SunProviderHolder;->-$$Nest$sfgetinstance()Ljava/security/Provider;

    move-result-object v7

    .line 136
    invoke-static {v4, v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v7

    move-object v6, v7

    .line 137
    iget-object v7, p0, Lsun/security/util/ManifestEntryVerifier;->createdDigests:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9a .. :try_end_a8} :catch_a9

    .line 140
    goto :goto_aa

    .line 138
    :catch_a9
    move-exception v7

    .line 143
    :cond_aa
    :goto_aa
    if-eqz v6, :cond_c9

    .line 144
    iput-boolean v5, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    .line 145
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 146
    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->manifestHashes:Ljava/util/ArrayList;

    .line 148
    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 147
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v2    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "algorithm":Ljava/lang/String;
    .end local v6    # "digest":Ljava/security/MessageDigest;
    :cond_c9
    goto :goto_63

    .line 152
    :cond_ca
    return-void

    .line 104
    .end local v0    # "attr":Ljava/util/jar/Attributes;
    :cond_cb
    :goto_cb
    return-void
.end method

.method public blacklist update(B)V
    .registers 4
    .param p1, "buffer"    # B

    .line 158
    iget-boolean v0, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    if-eqz v0, :cond_5

    return-void

    .line 160
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 161
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 163
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public blacklist update([BII)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 169
    iget-boolean v0, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    if-eqz v0, :cond_5

    return-void

    .line 171
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 172
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 174
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public blacklist verify(Ljava/util/Hashtable;Ljava/util/Hashtable;)[Ljava/security/CodeSigner;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/Hashtable<",
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

    .line 196
    .local p1, "verifiedSigners":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    .local p2, "sigFileSigners":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    iget-boolean v0, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    if-eqz v0, :cond_6

    .line 197
    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_6
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    if-eqz v0, :cond_d

    .line 201
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    return-object v0

    .line 203
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c0

    .line 205
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    .line 206
    .local v1, "digest":Ljava/security/MessageDigest;
    iget-object v2, p0, Lsun/security/util/ManifestEntryVerifier;->manifestHashes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 207
    .local v2, "manHash":[B
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 209
    .local v3, "theHash":[B
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_93

    .line 210
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Manifest Entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " digest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 211
    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 212
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  manifest "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lsun/security/util/ManifestEntryVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 213
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  computed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lsun/security/util/ManifestEntryVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 214
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v4}, Lsun/security/util/Debug;->println()V

    .line 217
    :cond_93
    invoke-static {v3, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 203
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "manHash":[B
    .end local v3    # "theHash":[B
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 218
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v2    # "manHash":[B
    .restart local v3    # "theHash":[B
    :cond_9d
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " digest error for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 223
    .end local v0    # "i":I
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "manHash":[B
    .end local v3    # "theHash":[B
    :cond_c0
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    .line 224
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    if-eqz v0, :cond_d5

    .line 225
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_d5
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    return-object v0
.end method
