.class public final Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/safeparcel/PropertyParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBlobHandleValues:[Landroid/app/appsearch/AppSearchBlobHandle;

.field private blacklist mBooleanValues:[Z

.field private blacklist mBytesValues:[[B

.field private blacklist mDocumentValues:[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

.field private blacklist mDoubleValues:[D

.field private blacklist mEmbeddingValues:[Landroid/app/appsearch/EmbeddingVector;

.field private blacklist mLongValues:[J

.field private blacklist mPropertyName:Ljava/lang/String;

.field private blacklist mStringValues:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mPropertyName:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/appsearch/safeparcel/PropertyParcel;
    .registers 11

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyParcel;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mPropertyName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mStringValues:[Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mLongValues:[J

    .line 8
    .line 9
    iget-object v4, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mDoubleValues:[D

    .line 10
    .line 11
    iget-object v5, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mBooleanValues:[Z

    .line 12
    .line 13
    iget-object v6, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mBytesValues:[[B

    .line 14
    .line 15
    iget-object v7, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mDocumentValues:[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 16
    .line 17
    iget-object v8, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mEmbeddingValues:[Landroid/app/appsearch/EmbeddingVector;

    .line 18
    .line 19
    iget-object v9, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mBlobHandleValues:[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 20
    .line 21
    invoke-direct/range {v0 .. v9}, Landroid/app/appsearch/safeparcel/PropertyParcel;-><init>(Ljava/lang/String;[Ljava/lang/String;[J[D[Z[[B[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;[Landroid/app/appsearch/EmbeddingVector;[Landroid/app/appsearch/AppSearchBlobHandle;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public blacklist setBlobHandleValues([Landroid/app/appsearch/AppSearchBlobHandle;)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mBlobHandleValues:[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 5
    .line 6
    return-object p0
.end method

.method public blacklist setBooleanValues([Z)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mBooleanValues:[Z

    .line 5
    .line 6
    return-object p0
.end method

.method public blacklist setBytesValues([[B)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mBytesValues:[[B

    .line 5
    .line 6
    return-object p0
.end method

.method public blacklist setDocumentValues([Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mDocumentValues:[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 5
    .line 6
    return-object p0
.end method

.method public blacklist setDoubleValues([D)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mDoubleValues:[D

    .line 5
    .line 6
    return-object p0
.end method

.method public blacklist setEmbeddingValues([Landroid/app/appsearch/EmbeddingVector;)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mEmbeddingValues:[Landroid/app/appsearch/EmbeddingVector;

    .line 5
    .line 6
    return-object p0
.end method

.method public blacklist setLongValues([J)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mLongValues:[J

    .line 5
    .line 6
    return-object p0
.end method

.method public blacklist setStringValues([Ljava/lang/String;)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->mStringValues:[Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method
