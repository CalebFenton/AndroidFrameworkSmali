.class public Landroid/app/appsearch/GenericDocument$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/GenericDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Landroid/app/appsearch/GenericDocument$Builder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBuilderType;"
        }
    .end annotation
.end field

.field private final blacklist mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;


# direct methods
.method public constructor whitelist <init>(Landroid/app/appsearch/GenericDocument;)V
    .registers 3

    .line 10
    new-instance v0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    invoke-static {p1}, Landroid/app/appsearch/GenericDocument;->-$$Nest$fgetmDocumentParcel(Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;-><init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)V

    invoke-direct {p0, v0}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 9
    iput-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 6
    new-instance v0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    return-void
.end method

.method private blacklist validatePropertyName(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string p1, "Property name cannot be blank."

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method


# virtual methods
.method public whitelist build()Landroid/app/appsearch/GenericDocument;
    .registers 2

    .line 1
    new-instance v0, Landroid/app/appsearch/GenericDocument;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->build()Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public whitelist clearProperty(Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->clearProperty(Ljava/lang/String;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 10
    .line 11
    return-object p0
.end method

.method public whitelist setCreationTimestampMillis(J)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->setCreationTimestampMillis(J)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 7
    .line 8
    return-object p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->setId(Ljava/lang/String;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 10
    .line 11
    return-object p0
.end method

.method public whitelist setNamespace(Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->setNamespace(Ljava/lang/String;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 10
    .line 11
    return-object p0
.end method

.method public blacklist setParentTypes(Ljava/util/List;)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TBuilderType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->setParentTypes(Ljava/util/List;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 7
    .line 8
    return-object p0
.end method

.method public varargs whitelist setPropertyBlobHandle(Ljava/lang/String;[Landroid/app/appsearch/AppSearchBlobHandle;)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument$Builder;->validatePropertyName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    array-length v1, p2

    .line 12
    if-ge v0, v1, :cond_2d

    .line 13
    .line 14
    aget-object v1, p2, v0

    .line 15
    .line 16
    if-eqz v1, :cond_14

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_a

    .line 21
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p2, "The BlobHandle at "

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, " is null."

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_2d
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;[Landroid/app/appsearch/AppSearchBlobHandle;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 52
    .line 53
    return-object p0
.end method

.method public varargs whitelist setPropertyBoolean(Ljava/lang/String;[Z)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[Z)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument$Builder;->validatePropertyName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;[Z)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 16
    .line 17
    return-object p0
.end method

.method public varargs whitelist setPropertyBytes(Ljava/lang/String;[[B)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[[B)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument$Builder;->validatePropertyName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    array-length v1, p2

    .line 12
    if-ge v0, v1, :cond_2d

    .line 13
    .line 14
    aget-object v1, p2, v0

    .line 15
    .line 16
    if-eqz v1, :cond_14

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_a

    .line 21
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p2, "The byte[] at "

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, " is null."

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_2d
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;[[B)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 52
    .line 53
    return-object p0
.end method

.method public varargs whitelist setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/app/appsearch/GenericDocument;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument$Builder;->validatePropertyName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    array-length v0, p2

    .line 11
    new-array v0, v0, [Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_d
    array-length v2, p2

    .line 15
    if-ge v1, v2, :cond_36

    .line 16
    .line 17
    aget-object v2, p2, v1

    .line 18
    .line 19
    if-eqz v2, :cond_1d

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/app/appsearch/GenericDocument;->getDocumentParcel()Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    aput-object v2, v0, v1

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p2, "The document at "

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, " is null."

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_36
    iget-object p2, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 56
    .line 57
    invoke-virtual {p2, p1, v0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 61
    .line 62
    return-object p0
.end method

.method public varargs whitelist setPropertyDouble(Ljava/lang/String;[D)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[D)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument$Builder;->validatePropertyName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;[D)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 16
    .line 17
    return-object p0
.end method

.method public varargs whitelist setPropertyEmbedding(Ljava/lang/String;[Landroid/app/appsearch/EmbeddingVector;)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/app/appsearch/EmbeddingVector;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument$Builder;->validatePropertyName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    array-length v1, p2

    .line 12
    if-ge v0, v1, :cond_2d

    .line 13
    .line 14
    aget-object v1, p2, v0

    .line 15
    .line 16
    if-eqz v1, :cond_14

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_a

    .line 21
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p2, "The EmbeddingVector at "

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, " is null."

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_2d
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;[Landroid/app/appsearch/EmbeddingVector;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 52
    .line 53
    return-object p0
.end method

.method public varargs whitelist setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument$Builder;->validatePropertyName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;[J)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 16
    .line 17
    return-object p0
.end method

.method public varargs whitelist setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument$Builder;->validatePropertyName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    array-length v1, p2

    .line 12
    if-ge v0, v1, :cond_2d

    .line 13
    .line 14
    aget-object v1, p2, v0

    .line 15
    .line 16
    if-eqz v1, :cond_14

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_a

    .line 21
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p2, "The String at "

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, " is null."

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_2d
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 52
    .line 53
    return-object p0
.end method

.method public whitelist setSchemaType(Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->setSchemaType(Ljava/lang/String;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 10
    .line 11
    return-object p0
.end method

.method public whitelist setScore(I)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_a

    .line 2
    .line 3
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->setScore(I)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p1, "Document score cannot be negative."

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public whitelist setTtlMillis(J)Landroid/app/appsearch/GenericDocument$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TBuilderType;"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_e

    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mDocumentParcelBuilder:Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->setTtlMillis(J)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument$Builder;->mBuilderTypeInstance:Landroid/app/appsearch/GenericDocument$Builder;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p1, "Document ttlMillis cannot be negative."

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method
