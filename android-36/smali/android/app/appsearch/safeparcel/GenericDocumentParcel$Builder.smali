.class public final Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/safeparcel/GenericDocumentParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCreationTimestampMillis:J

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mNamespace:Ljava/lang/String;

.field private blacklist mParentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/safeparcel/PropertyParcel;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSchemaType:Ljava/lang/String;

.field private blacklist mScore:I

.field private blacklist mTtlMillis:J


# direct methods
.method public constructor blacklist <init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->-$$Nest$fgetmNamespace(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mNamespace:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->-$$Nest$fgetmId(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mId:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->-$$Nest$fgetmSchemaType(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mSchemaType:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->-$$Nest$fgetmCreationTimestampMillis(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mCreationTimestampMillis:J

    .line 15
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->-$$Nest$fgetmTtlMillis(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mTtlMillis:J

    .line 16
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->-$$Nest$fgetmScore(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mScore:I

    .line 17
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->-$$Nest$fgetmPropertyMap(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Ljava/util/Map;

    move-result-object v0

    .line 18
    new-instance v1, Landroid/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mPropertyMap:Ljava/util/Map;

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/safeparcel/PropertyParcel;

    .line 20
    iget-object v2, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mPropertyMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 21
    :cond_57
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->-$$Nest$fgetmParentTypes(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mParentTypes:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mNamespace:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mId:Ljava/lang/String;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mSchemaType:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 5
    iput-wide p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mCreationTimestampMillis:J

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mTtlMillis:J

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mScore:I

    .line 8
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mPropertyMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/appsearch/safeparcel/GenericDocumentParcel;
    .registers 14

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mCreationTimestampMillis:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mCreationTimestampMillis:J

    .line 14
    .line 15
    :cond_e
    new-instance v2, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 16
    .line 17
    iget-object v3, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mNamespace:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mId:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v5, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mSchemaType:Ljava/lang/String;

    .line 22
    .line 23
    iget-wide v6, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mCreationTimestampMillis:J

    .line 24
    .line 25
    iget-wide v8, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mTtlMillis:J

    .line 26
    .line 27
    iget v10, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mScore:I

    .line 28
    .line 29
    new-instance v11, Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mPropertyMap:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    iget-object v12, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mParentTypes:Ljava/util/List;

    .line 41
    .line 42
    invoke-direct/range {v2 .. v12}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/util/List;Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    return-object v2
.end method

.method public blacklist clearProperty(Ljava/lang/String;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mPropertyMap:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public blacklist putInPropertyMap(Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyParcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 4

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mPropertyMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist putInPropertyMap(Ljava/lang/String;[D)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 4

    .line 7
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    invoke-direct {v0, p1}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->setDoubleValues([D)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->build()Landroid/app/appsearch/safeparcel/PropertyParcel;

    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyParcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    return-object p0
.end method

.method public blacklist putInPropertyMap(Ljava/lang/String;[J)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 4

    .line 10
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    invoke-direct {v0, p1}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->setLongValues([J)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->build()Landroid/app/appsearch/safeparcel/PropertyParcel;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyParcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    return-object p0
.end method

.method public blacklist putInPropertyMap(Ljava/lang/String;[Landroid/app/appsearch/AppSearchBlobHandle;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 4

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    invoke-direct {v0, p1}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->setBlobHandleValues([Landroid/app/appsearch/AppSearchBlobHandle;)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->build()Landroid/app/appsearch/safeparcel/PropertyParcel;

    move-result-object p2

    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyParcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    return-object p0
.end method

.method public blacklist putInPropertyMap(Ljava/lang/String;[Landroid/app/appsearch/EmbeddingVector;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 4

    .line 15
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    invoke-direct {v0, p1}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->setEmbeddingValues([Landroid/app/appsearch/EmbeddingVector;)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->build()Landroid/app/appsearch/safeparcel/PropertyParcel;

    move-result-object p2

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyParcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    return-object p0
.end method

.method public blacklist putInPropertyMap(Ljava/lang/String;[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 4

    .line 12
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    invoke-direct {v0, p1}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->setDocumentValues([Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->build()Landroid/app/appsearch/safeparcel/PropertyParcel;

    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyParcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    return-object p0
.end method

.method public blacklist putInPropertyMap(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    invoke-direct {v0, p1}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->setStringValues([Ljava/lang/String;)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->build()Landroid/app/appsearch/safeparcel/PropertyParcel;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyParcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    return-object p0
.end method

.method public blacklist putInPropertyMap(Ljava/lang/String;[Z)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 4

    .line 4
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    invoke-direct {v0, p1}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->setBooleanValues([Z)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->build()Landroid/app/appsearch/safeparcel/PropertyParcel;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyParcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    return-object p0
.end method

.method public blacklist putInPropertyMap(Ljava/lang/String;[[B)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 4

    .line 11
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    invoke-direct {v0, p1}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->setBytesValues([[B)Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/appsearch/safeparcel/PropertyParcel$Builder;->build()Landroid/app/appsearch/safeparcel/PropertyParcel;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->putInPropertyMap(Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyParcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;

    return-object p0
.end method

.method public blacklist setCreationTimestampMillis(J)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mCreationTimestampMillis:J

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setId(Ljava/lang/String;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mId:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public blacklist setNamespace(Ljava/lang/String;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mNamespace:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public blacklist setParentTypes(Ljava/util/List;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_6

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mParentTypes:Ljava/util/List;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mParentTypes:Ljava/util/List;

    .line 13
    .line 14
    return-object p0
.end method

.method public blacklist setSchemaType(Ljava/lang/String;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mSchemaType:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public blacklist setScore(I)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mScore:I

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setTtlMillis(J)Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_9

    .line 6
    .line 7
    iput-wide p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;->mTtlMillis:J

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p1, "Document ttlMillis cannot be negative."

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method
