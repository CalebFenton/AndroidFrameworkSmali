.class public Landroid/content/pm/ManifestDigest;
.super Ljava/lang/Object;
.source "ManifestDigest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ManifestDigest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ManifestDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final TAG:Ljava/lang/String; = "ManifestDigest"

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "ManifestDigest {mDigest="


# instance fields
.field private final mDigest:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 135
    new-instance v0, Landroid/content/pm/ManifestDigest$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/ManifestDigest$1;-><init>()V

    #@5
    .line 134
    sput-object v0, Landroid/content/pm/ManifestDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    #@9
    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ManifestDigest;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ManifestDigest;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "digest"    # [B

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    #@5
    .line 53
    return-void
.end method

.method static fromInputStream(Ljava/io/InputStream;)Landroid/content/pm/ManifestDigest;
    .locals 9
    .param p0, "fileIs"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 62
    if-nez p0, :cond_0

    #@3
    .line 63
    return-object v8

    #@4
    .line 68
    :cond_0
    :try_start_0
    const-string/jumbo v6, "SHA-256"

    #@7
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v4

    #@b
    .line 73
    .local v4, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/security/DigestInputStream;

    #@d
    new-instance v6, Ljava/io/BufferedInputStream;

    #@f
    invoke-direct {v6, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@12
    invoke-direct {v1, v6, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    #@15
    .line 75
    .local v1, "dis":Ljava/security/DigestInputStream;
    const/16 v6, 0x2000

    #@17
    :try_start_1
    new-array v5, v6, [B

    #@19
    .line 76
    .local v5, "readBuffer":[B
    :cond_1
    array-length v6, v5

    #@1a
    const/4 v7, 0x0

    #@1b
    invoke-virtual {v1, v5, v7, v6}, Ljava/security/DigestInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result v6

    #@1f
    const/4 v7, -0x1

    #@20
    if-ne v6, v7, :cond_1

    #@22
    .line 83
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@25
    .line 86
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    #@28
    move-result-object v0

    #@29
    .line 87
    .local v0, "digest":[B
    new-instance v6, Landroid/content/pm/ManifestDigest;

    #@2b
    invoke-direct {v6, v0}, Landroid/content/pm/ManifestDigest;-><init>([B)V

    #@2e
    return-object v6

    #@2f
    .line 69
    .end local v0    # "digest":[B
    .end local v1    # "dis":Ljava/security/DigestInputStream;
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "readBuffer":[B
    :catch_0
    move-exception v3

    #@30
    .line 70
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@32
    const-string/jumbo v7, "SHA-256 must be available"

    #@35
    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@38
    throw v6

    #@39
    .line 79
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "dis":Ljava/security/DigestInputStream;
    .restart local v4    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v2

    #@3a
    .line 80
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v6, "ManifestDigest"

    #@3d
    const-string/jumbo v7, "Could not read manifest"

    #@40
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    .line 83
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@46
    .line 81
    return-object v8

    #@47
    .line 82
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@48
    .line 83
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4b
    .line 82
    throw v6
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 92
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 97
    instance-of v1, p1, Landroid/content/pm/ManifestDigest;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 98
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 101
    check-cast v0, Landroid/content/pm/ManifestDigest;

    #@9
    .line 103
    .local v0, "other":Landroid/content/pm/ManifestDigest;
    if-eq p0, v0, :cond_1

    #@b
    iget-object v1, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    #@d
    iget-object v2, v0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    #@f
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@12
    move-result v1

    #@13
    :goto_0
    return v1

    #@14
    :cond_1
    const/4 v1, 0x1

    #@15
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v4, "ManifestDigest {mDigest="

    #@5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@8
    move-result v4

    #@9
    .line 114
    iget-object v5, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    #@b
    array-length v5, v5

    #@c
    mul-int/lit8 v5, v5, 0x3

    #@e
    .line 113
    add-int/2addr v4, v5

    #@f
    add-int/lit8 v4, v4, 0x1

    #@11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@14
    .line 116
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "ManifestDigest {mDigest="

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 118
    iget-object v4, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    #@1c
    array-length v0, v4

    #@1d
    .line 119
    .local v0, "N":I
    const/4 v2, 0x0

    #@1e
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@20
    .line 120
    iget-object v4, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    #@22
    aget-byte v1, v4, v2

    #@24
    .line 121
    .local v1, "b":B
    const/4 v4, 0x0

    #@25
    invoke-static {v3, v1, v4}, Ljava/lang/IntegralToString;->appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;

    #@28
    .line 122
    const/16 v4, 0x2c

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 119
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 124
    .end local v1    # "b":B
    :cond_0
    const/16 v4, 0x7d

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/content/pm/ManifestDigest;->mDigest:[B

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@5
    .line 130
    return-void
.end method
