.class public final Landroid/app/appsearch/EmbeddingVector;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/EmbeddingVector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHashCode:Ljava/lang/Integer;

.field private final blacklist mModelSignature:Ljava/lang/String;

.field private final blacklist mValues:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/EmbeddingVectorCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/EmbeddingVectorCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/EmbeddingVector;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor whitelist <init>([FLjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/EmbeddingVector;->mValues:[F

    .line 8
    .line 9
    array-length p1, p1

    .line 10
    if-eqz p1, :cond_11

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroid/app/appsearch/EmbeddingVector;->mModelSignature:Ljava/lang/String;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p1, "Embedding values cannot be empty."

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
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
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p1, Landroid/app/appsearch/EmbeddingVector;

    .line 10
    .line 11
    if-nez v2, :cond_d

    .line 12
    .line 13
    return v1

    .line 14
    :cond_d
    check-cast p1, Landroid/app/appsearch/EmbeddingVector;

    .line 15
    .line 16
    iget-object v2, p0, Landroid/app/appsearch/EmbeddingVector;->mValues:[F

    .line 17
    .line 18
    iget-object v3, p1, Landroid/app/appsearch/EmbeddingVector;->mValues:[F

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_24

    .line 25
    .line 26
    iget-object p0, p0, Landroid/app/appsearch/EmbeddingVector;->mModelSignature:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p1, p1, Landroid/app/appsearch/EmbeddingVector;->mModelSignature:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_24

    .line 35
    .line 36
    return v0

    .line 37
    :cond_24
    return v1
.end method

.method public whitelist getModelSignature()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/EmbeddingVector;->mModelSignature:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getValues()[F
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/EmbeddingVector;->mValues:[F

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/EmbeddingVector;->mHashCode:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_1e

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/appsearch/EmbeddingVector;->mValues:[F

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

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
    iget-object v1, p0, Landroid/app/appsearch/EmbeddingVector;->mModelSignature:Ljava/lang/String;

    .line 16
    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Landroid/app/appsearch/EmbeddingVector;->mHashCode:Ljava/lang/Integer;

    .line 30
    .line 31
    :cond_1e
    iget-object p0, p0, Landroid/app/appsearch/EmbeddingVector;->mHashCode:Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/EmbeddingVectorCreator;->writeToParcel(Landroid/app/appsearch/EmbeddingVector;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
