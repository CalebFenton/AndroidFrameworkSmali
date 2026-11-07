.class public final Landroid/app/appsearch/safeparcel/PropertyParcel;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/safeparcel/PropertyParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBlobHandleValues:[Landroid/app/appsearch/AppSearchBlobHandle;

.field private final blacklist mBooleanValues:[Z

.field private final blacklist mBytesValues:[[B

.field private final blacklist mDocumentValues:[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

.field private final blacklist mDoubleValues:[D

.field private final blacklist mEmbeddingValues:[Landroid/app/appsearch/EmbeddingVector;

.field private blacklist mHashCode:Ljava/lang/Integer;

.field private final blacklist mLongValues:[J

.field private final blacklist mPropertyName:Ljava/lang/String;

.field private final blacklist mStringValues:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyParcelCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/safeparcel/PropertyParcelCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/safeparcel/PropertyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;[J[D[Z[[B[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;[Landroid/app/appsearch/EmbeddingVector;[Landroid/app/appsearch/AppSearchBlobHandle;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mPropertyName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mStringValues:[Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mLongValues:[J

    .line 12
    .line 13
    iput-object p4, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDoubleValues:[D

    .line 14
    .line 15
    iput-object p5, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBooleanValues:[Z

    .line 16
    .line 17
    iput-object p6, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBytesValues:[[B

    .line 18
    .line 19
    iput-object p7, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDocumentValues:[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 20
    .line 21
    iput-object p8, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mEmbeddingValues:[Landroid/app/appsearch/EmbeddingVector;

    .line 22
    .line 23
    iput-object p9, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBlobHandleValues:[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 24
    .line 25
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/PropertyParcel;->checkOnlyOneArrayCanBeSet()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private blacklist checkOnlyOneArrayCanBeSet()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mStringValues:[Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    iget-object v2, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mLongValues:[J

    .line 10
    .line 11
    if-eqz v2, :cond_e

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    :cond_e
    iget-object v2, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDoubleValues:[D

    .line 16
    .line 17
    if-eqz v2, :cond_14

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    :cond_14
    iget-object v2, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBooleanValues:[Z

    .line 22
    .line 23
    if-eqz v2, :cond_1a

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    :cond_1a
    iget-object v2, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBytesValues:[[B

    .line 28
    .line 29
    if-eqz v2, :cond_20

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    :cond_20
    iget-object v2, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDocumentValues:[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 34
    .line 35
    if-eqz v2, :cond_26

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    :cond_26
    iget-object v2, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mEmbeddingValues:[Landroid/app/appsearch/EmbeddingVector;

    .line 40
    .line 41
    if-eqz v2, :cond_2c

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    :cond_2c
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBlobHandleValues:[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 46
    .line 47
    if-eqz p0, :cond_32

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    :cond_32
    if-eqz v0, :cond_37

    .line 52
    .line 53
    if-gt v0, v1, :cond_37

    .line 54
    .line 55
    return-void

    .line 56
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string v0, "One and only one type array can be set in PropertyParcel"

    .line 59
    .line 60
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
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
    instance-of v1, p1, Landroid/app/appsearch/safeparcel/PropertyParcel;

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
    check-cast p1, Landroid/app/appsearch/safeparcel/PropertyParcel;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mPropertyName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyParcel;->mPropertyName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mStringValues:[Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyParcel;->mStringValues:[Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_68

    .line 33
    .line 34
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mLongValues:[J

    .line 35
    .line 36
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyParcel;->mLongValues:[J

    .line 37
    .line 38
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_68

    .line 43
    .line 44
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDoubleValues:[D

    .line 45
    .line 46
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDoubleValues:[D

    .line 47
    .line 48
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([D[D)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_68

    .line 53
    .line 54
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBooleanValues:[Z

    .line 55
    .line 56
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBooleanValues:[Z

    .line 57
    .line 58
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_68

    .line 63
    .line 64
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBytesValues:[[B

    .line 65
    .line 66
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBytesValues:[[B

    .line 67
    .line 68
    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_68

    .line 73
    .line 74
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDocumentValues:[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 75
    .line 76
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDocumentValues:[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 77
    .line 78
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_68

    .line 83
    .line 84
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mEmbeddingValues:[Landroid/app/appsearch/EmbeddingVector;

    .line 85
    .line 86
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyParcel;->mEmbeddingValues:[Landroid/app/appsearch/EmbeddingVector;

    .line 87
    .line 88
    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_68

    .line 93
    .line 94
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBlobHandleValues:[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 95
    .line 96
    iget-object p1, p1, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBlobHandleValues:[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 97
    .line 98
    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_68

    .line 103
    .line 104
    return v0

    .line 105
    :cond_68
    return v2
.end method

.method public blacklist getBlobHandleValues()[Landroid/app/appsearch/AppSearchBlobHandle;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBlobHandleValues:[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getBooleanValues()[Z
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBooleanValues:[Z

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getBytesValues()[[B
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBytesValues:[[B

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getDocumentValues()[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDocumentValues:[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getDoubleValues()[D
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDoubleValues:[D

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getEmbeddingValues()[Landroid/app/appsearch/EmbeddingVector;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mEmbeddingValues:[Landroid/app/appsearch/EmbeddingVector;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getLongValues()[J
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mLongValues:[J

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getPropertyName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mPropertyName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getStringValues()[Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mStringValues:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getValues()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mStringValues:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mLongValues:[J

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_a
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDoubleValues:[D

    .line 12
    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_f
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBooleanValues:[Z

    .line 17
    .line 18
    if-eqz v0, :cond_14

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_14
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBytesValues:[[B

    .line 22
    .line 23
    if-eqz v0, :cond_19

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_19
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDocumentValues:[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 27
    .line 28
    if-eqz v0, :cond_1e

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1e
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mEmbeddingValues:[Landroid/app/appsearch/EmbeddingVector;

    .line 32
    .line 33
    if-eqz v0, :cond_23

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_23
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBlobHandleValues:[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 37
    .line 38
    if-eqz p0, :cond_28

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_28
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mHashCode:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_61

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mStringValues:[Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_4d

    .line 14
    :cond_d
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mLongValues:[J

    .line 15
    .line 16
    if-eqz v0, :cond_16

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_4d

    .line 23
    :cond_16
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDoubleValues:[D

    .line 24
    .line 25
    if-eqz v0, :cond_1f

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_4d

    .line 32
    :cond_1f
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBooleanValues:[Z

    .line 33
    .line 34
    if-eqz v0, :cond_28

    .line 35
    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    goto :goto_4d

    .line 41
    :cond_28
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBytesValues:[[B

    .line 42
    .line 43
    if-eqz v0, :cond_31

    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_4d

    .line 50
    :cond_31
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mDocumentValues:[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 51
    .line 52
    if-eqz v0, :cond_3a

    .line 53
    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    goto :goto_4d

    .line 59
    :cond_3a
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mEmbeddingValues:[Landroid/app/appsearch/EmbeddingVector;

    .line 60
    .line 61
    if-eqz v0, :cond_43

    .line 62
    .line 63
    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    goto :goto_4d

    .line 68
    :cond_43
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mBlobHandleValues:[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 69
    .line 70
    if-eqz v0, :cond_4c

    .line 71
    .line 72
    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    const/4 v0, 0x0

    .line 78
    :goto_4d
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mPropertyName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mHashCode:Ljava/lang/Integer;

    .line 97
    .line 98
    :cond_61
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyParcel;->mHashCode:Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/safeparcel/PropertyParcelCreator;->writeToParcel(Landroid/app/appsearch/safeparcel/PropertyParcel;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
