.class public final Landroid/app/appsearch/AppSearchBlobHandle;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SHA_256_DIGEST_BYTE_LENGTH:I = 0x20


# instance fields
.field private final blacklist mDatabaseName:Ljava/lang/String;

.field private blacklist mHashCode:Ljava/lang/Integer;

.field private final blacklist mNamespace:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSha256Digest:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/AppSearchBlobHandleCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/AppSearchBlobHandleCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/AppSearchBlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mSha256Digest:[B

    .line 8
    .line 9
    array-length p1, p1

    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    if-ne p1, v0, :cond_f

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    :goto_10
    const-string v0, "The input digest isn\'t a sha-256 digest."

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroid/app/appsearch/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mPackageName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mDatabaseName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iput-object p4, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mNamespace:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method public static whitelist createWithSha256([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/AppSearchBlobHandle;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length v0, p0

    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    if-ne v0, v1, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    const-string v1, "The digest is not a SHA-256 digest"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroid/app/appsearch/AppSearchBlobHandle;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/appsearch/AppSearchBlobHandle;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Landroid/app/appsearch/AppSearchBlobHandle;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Landroid/app/appsearch/AppSearchBlobHandle;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mSha256Digest:[B

    .line 14
    .line 15
    iget-object v3, p1, Landroid/app/appsearch/AppSearchBlobHandle;->mSha256Digest:[B

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_17

    .line 22
    .line 23
    return v2

    .line 24
    :cond_17
    iget-object v1, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mPackageName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Landroid/app/appsearch/AppSearchBlobHandle;->mPackageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_36

    .line 33
    .line 34
    iget-object v1, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mDatabaseName:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p1, Landroid/app/appsearch/AppSearchBlobHandle;->mDatabaseName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_36

    .line 43
    .line 44
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mNamespace:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p1, p1, Landroid/app/appsearch/AppSearchBlobHandle;->mNamespace:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_36

    .line 53
    .line 54
    return v0

    .line 55
    :cond_36
    return v2
.end method

.method public whitelist getDatabaseName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mDatabaseName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getNamespace()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mNamespace:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getSha256Digest()[B
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mSha256Digest:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mHashCode:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_22

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mSha256Digest:[B

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mPackageName:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mDatabaseName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mNamespace:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mHashCode:Ljava/lang/Integer;

    .line 34
    .line 35
    :cond_22
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mHashCode:Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/util/IndentingStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "{\n"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->increaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "packageName: \""

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mPackageName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "\",\n"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "databaseName: \""

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v3, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mDatabaseName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "namespace: \""

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v3, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mNamespace:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, "digest: \""

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Landroid/app/appsearch/AppSearchBlobHandle;->mSha256Digest:[B

    .line 67
    .line 68
    array-length v1, p0

    .line 69
    const/4 v3, 0x0

    .line 70
    :goto_45
    if-ge v3, v1, :cond_65

    .line 71
    .line 72
    aget-byte v4, p0, v3

    .line 73
    .line 74
    and-int/lit16 v4, v4, 0xff

    .line 75
    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    const/4 v6, 0x1

    .line 85
    if-ne v5, v6, :cond_5f

    .line 86
    .line 87
    const/16 v5, 0x30

    .line 88
    .line 89
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v0, v5}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/Object;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 94
    .line 95
    .line 96
    :cond_5f
    invoke-virtual {v0, v4}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 97
    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_45

    .line 102
    :cond_65
    invoke-virtual {v0, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->decreaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p0, "}"

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/AppSearchBlobHandleCreator;->writeToParcel(Landroid/app/appsearch/AppSearchBlobHandle;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
