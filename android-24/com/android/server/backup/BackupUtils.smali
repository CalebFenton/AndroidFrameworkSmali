.class public Lcom/android/server/backup/BackupUtils;
.super Ljava/lang/Object;
.source "BackupUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BackupUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static hashSignature(Landroid/content/pm/Signature;)[B
    .locals 1
    .param p0, "signature"    # Landroid/content/pm/Signature;

    #@0
    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/server/backup/BackupUtils;->hashSignature([B)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static hashSignature([B)[B
    .locals 4
    .param p0, "signature"    # [B

    #@0
    .prologue
    .line 96
    :try_start_0
    const-string/jumbo v2, "SHA-256"

    #@3
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v0

    #@7
    .line 97
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    #@a
    .line 98
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 99
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    #@10
    .line 100
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v2, "BackupUtils"

    #@13
    const-string/jumbo v3, "No SHA-256 algorithm found!"

    #@16
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 102
    const/4 v2, 0x0

    #@1a
    return-object v2
.end method

.method public static hashSignatureArray(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "sigs":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x0

    #@1
    .line 122
    if-nez p0, :cond_0

    #@3
    .line 123
    return-object v3

    #@4
    .line 126
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@9
    move-result v3

    #@a
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 127
    .local v0, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, [B

    #@1d
    .line 128
    .local v1, "s":[B
    invoke-static {v1}, Lcom/android/server/backup/BackupUtils;->hashSignature([B)[B

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 130
    .end local v1    # "s":[B
    :cond_1
    return-object v0
.end method

.method public static hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "sigs"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 110
    if-nez p0, :cond_0

    #@3
    .line 111
    return-object v2

    #@4
    .line 114
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@6
    array-length v2, p0

    #@7
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 115
    .local v0, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    #@b
    array-length v3, p0

    #@c
    :goto_0
    if-ge v2, v3, :cond_1

    #@e
    aget-object v1, p0, v2

    #@10
    .line 116
    .local v1, "s":Landroid/content/pm/Signature;
    invoke-static {v1}, Lcom/android/server/backup/BackupUtils;->hashSignature(Landroid/content/pm/Signature;)[B

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 115
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 118
    .end local v1    # "s":Landroid/content/pm/Signature;
    :cond_1
    return-object v0
.end method

.method public static signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z
    .locals 11
    .param p1, "target"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Landroid/content/pm/PackageInfo;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "storedSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 36
    if-nez p1, :cond_0

    #@4
    .line 37
    return v9

    #@5
    .line 45
    :cond_0
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9
    and-int/lit8 v8, v8, 0x1

    #@b
    if-eqz v8, :cond_1

    #@d
    .line 47
    return v10

    #@e
    .line 52
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@10
    .line 55
    .local v1, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p0, :cond_2

    #@12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v8

    #@16
    if-nez v8, :cond_4

    #@18
    .line 56
    :cond_2
    if-eqz v1, :cond_3

    #@1a
    array-length v8, v1

    #@1b
    if-nez v8, :cond_4

    #@1d
    .line 57
    :cond_3
    return v10

    #@1e
    .line 59
    :cond_4
    if-eqz p0, :cond_5

    #@20
    if-nez v1, :cond_6

    #@22
    .line 60
    :cond_5
    return v9

    #@23
    .line 66
    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v6

    #@27
    .line 67
    .local v6, "nStored":I
    array-length v5, v1

    #@28
    .line 70
    .local v5, "nDevice":I
    new-instance v0, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@2d
    .line 71
    .local v0, "deviceHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    #@2e
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_7

    #@30
    .line 72
    aget-object v8, v1, v2

    #@32
    invoke-static {v8}, Lcom/android/server/backup/BackupUtils;->hashSignature(Landroid/content/pm/Signature;)[B

    #@35
    move-result-object v8

    #@36
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 71
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 76
    :cond_7
    const/4 v4, 0x0

    #@3d
    .local v4, "n":I
    :goto_1
    if-ge v4, v6, :cond_b

    #@3f
    .line 77
    const/4 v3, 0x0

    #@40
    .line 78
    .local v3, "match":Z
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v7

    #@44
    check-cast v7, [B

    #@46
    .line 79
    .local v7, "storedHash":[B
    const/4 v2, 0x0

    #@47
    :goto_2
    if-ge v2, v5, :cond_8

    #@49
    .line 80
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v8

    #@4d
    check-cast v8, [B

    #@4f
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    #@52
    move-result v8

    #@53
    if-eqz v8, :cond_9

    #@55
    .line 81
    const/4 v3, 0x1

    #@56
    .line 86
    :cond_8
    if-nez v3, :cond_a

    #@58
    .line 87
    return v9

    #@59
    .line 79
    :cond_9
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_2

    #@5c
    .line 76
    :cond_a
    add-int/lit8 v4, v4, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 91
    .end local v3    # "match":Z
    .end local v7    # "storedHash":[B
    :cond_b
    return v10
.end method
