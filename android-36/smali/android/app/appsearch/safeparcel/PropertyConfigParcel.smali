.class public final Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;,
        Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;,
        Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;,
        Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;,
        Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/safeparcel/PropertyConfigParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCardinality:I

.field private final blacklist mDataType:I

.field private final blacklist mDescription:Ljava/lang/String;

.field private final blacklist mDocumentIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

.field private final blacklist mEmbeddingIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;

.field private blacklist mHashCode:Ljava/lang/Integer;

.field private final blacklist mIntegerIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

.field private final blacklist mJoinableConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mSchemaType:Ljava/lang/String;

.field private final blacklist mScoringEnabled:Z

.field private final blacklist mStringIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcelCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcelCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;Z)V
    .registers 12

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mName:Ljava/lang/String;

    .line 3
    iput p2, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDataType:I

    .line 4
    iput p3, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mCardinality:I

    .line 5
    iput-object p4, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mSchemaType:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mStringIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    .line 7
    iput-object p6, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDocumentIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

    .line 8
    iput-object p7, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mIntegerIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    .line 9
    iput-object p8, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mJoinableConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

    .line 10
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p9, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDescription:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mEmbeddingIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;

    .line 12
    iput-boolean p11, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mScoringEnabled:Z

    return-void
.end method

.method public static blacklist createForBlobHandle(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
    .registers 15

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    const/4 v11, 0x0

    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    move-object v1, p0

    .line 19
    move-object v9, p1

    .line 20
    move v3, p2

    .line 21
    invoke-direct/range {v0 .. v11}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;Z)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static blacklist createForBoolean(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
    .registers 16

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    const/4 v2, 0x4

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    move-object v1, p0

    .line 17
    move-object v9, p1

    .line 18
    move v3, p2

    .line 19
    move v11, p3

    .line 20
    invoke-direct/range {v0 .. v11}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;Z)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static blacklist createForBytes(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
    .registers 15

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    const/4 v11, 0x0

    .line 11
    const/4 v2, 0x5

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    move-object v1, p0

    .line 18
    move-object v9, p1

    .line 19
    move v3, p2

    .line 20
    invoke-direct/range {v0 .. v11}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;Z)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static blacklist createForDocument(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
    .registers 17

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v2, 0x6

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    move-object v1, p0

    .line 22
    move-object v9, p1

    .line 23
    move v3, p2

    .line 24
    move-object v4, p3

    .line 25
    move-object/from16 v6, p4

    .line 26
    .line 27
    invoke-direct/range {v0 .. v11}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;Z)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static blacklist createForDouble(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
    .registers 16

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    move-object v1, p0

    .line 17
    move-object v9, p1

    .line 18
    move v3, p2

    .line 19
    move v11, p3

    .line 20
    invoke-direct/range {v0 .. v11}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;Z)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static blacklist createForEmbedding(Ljava/lang/String;Ljava/lang/String;III)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
    .registers 17

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v10, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;

    .line 10
    .line 11
    move/from16 v1, p4

    .line 12
    .line 13
    invoke-direct {v10, p3, v1}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;-><init>(II)V

    .line 14
    .line 15
    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v2, 0x7

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    move-object v1, p0

    .line 24
    move-object v9, p1

    .line 25
    move v3, p2

    .line 26
    invoke-direct/range {v0 .. v11}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;Z)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public static blacklist createForLong(Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
    .registers 17

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v7, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    .line 7
    .line 8
    invoke-direct {v7, p3}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v1, p0

    .line 21
    move-object v9, p1

    .line 22
    move v3, p2

    .line 23
    move/from16 v11, p4

    .line 24
    .line 25
    invoke-direct/range {v0 .. v11}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;Z)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public static blacklist createForString(Ljava/lang/String;Ljava/lang/String;ILandroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
    .registers 17

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v1, p0

    .line 22
    move-object v9, p1

    .line 23
    move v3, p2

    .line 24
    move-object v5, p3

    .line 25
    move-object/from16 v8, p4

    .line 26
    .line 27
    invoke-direct/range {v0 .. v11}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;Z)V

    .line 28
    .line 29
    .line 30
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
    instance-of v1, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

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
    check-cast p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_87

    .line 22
    .line 23
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDescription:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDescription:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_87

    .line 32
    .line 33
    iget v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDataType:I

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v3, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDataType:I

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_87

    .line 50
    .line 51
    iget v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mCardinality:I

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget v3, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mCardinality:I

    .line 58
    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_87

    .line 68
    .line 69
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mSchemaType:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mSchemaType:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_87

    .line 78
    .line 79
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mStringIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    .line 80
    .line 81
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mStringIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    .line 82
    .line 83
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_87

    .line 88
    .line 89
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDocumentIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

    .line 90
    .line 91
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDocumentIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

    .line 92
    .line 93
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_87

    .line 98
    .line 99
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mIntegerIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    .line 100
    .line 101
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mIntegerIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    .line 102
    .line 103
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_87

    .line 108
    .line 109
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mJoinableConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

    .line 110
    .line 111
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mJoinableConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

    .line 112
    .line 113
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_87

    .line 118
    .line 119
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mEmbeddingIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;

    .line 120
    .line 121
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mEmbeddingIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;

    .line 122
    .line 123
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_87

    .line 128
    .line 129
    iget-boolean p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mScoringEnabled:Z

    .line 130
    .line 131
    iget-boolean p1, p1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mScoringEnabled:Z

    .line 132
    .line 133
    if-ne p0, p1, :cond_87

    .line 134
    .line 135
    return v0

    .line 136
    :cond_87
    return v2
.end method

.method public blacklist getCardinality()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mCardinality:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getDataType()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDataType:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getDocumentIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDocumentIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getEmbeddingIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mEmbeddingIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getIntegerIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mIntegerIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getJoinableConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mJoinableConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getSchemaType()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mSchemaType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getStringIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mStringIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 13

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mHashCode:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_34

    .line 4
    .line 5
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDescription:Ljava/lang/String;

    .line 8
    .line 9
    iget v0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDataType:I

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget v0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mCardinality:I

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v5, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mSchemaType:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v6, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mStringIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    .line 24
    .line 25
    iget-object v7, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDocumentIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

    .line 26
    .line 27
    iget-object v8, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mIntegerIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    .line 28
    .line 29
    iget-object v9, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mJoinableConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

    .line 30
    .line 31
    iget-object v10, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mEmbeddingIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;

    .line 32
    .line 33
    iget-boolean v0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mScoringEnabled:Z

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mHashCode:Ljava/lang/Integer;

    .line 52
    .line 53
    :cond_34
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mHashCode:Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0
.end method

.method public blacklist isScoringEnabled()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mScoringEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{name: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", description: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDescription:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", dataType: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDataType:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", cardinality: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mCardinality:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", schemaType: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mSchemaType:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", stringIndexingConfigParcel: "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mStringIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", documentIndexingConfigParcel: "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mDocumentIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", integerIndexingConfigParcel: "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mIntegerIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", joinableConfigParcel: "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mJoinableConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", embeddingIndexingConfigParcel: "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mEmbeddingIndexingConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", isScoringEnabled: "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-boolean p0, p0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->mScoringEnabled:Z

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p0, "}"

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/safeparcel/PropertyConfigParcelCreator;->writeToParcel(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
