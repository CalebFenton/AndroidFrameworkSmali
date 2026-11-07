.class public final Landroid/app/appsearch/safeparcel/GenericDocumentParcel;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/safeparcel/GenericDocumentParcel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_SCORE:I = 0x0

.field private static final blacklist DEFAULT_TTL_MILLIS:J = 0x0L

.field private static final blacklist INVALID_CREATION_TIMESTAMP_MILLIS:J = -0x1L


# instance fields
.field private final blacklist mCreationTimestampMillis:J

.field private blacklist mHashCode:Ljava/lang/Integer;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mNamespace:Ljava/lang/String;

.field private final blacklist mParentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/PropertyParcel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/safeparcel/PropertyParcel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSchemaType:Ljava/lang/String;

.field private final blacklist mScore:I

.field private final blacklist mTtlMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCreationTimestampMillis(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mCreationTimestampMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNamespace(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mNamespace:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentTypes(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mParentTypes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPropertyMap(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mPropertyMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSchemaType(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mSchemaType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScore(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mScore:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTtlMillis(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mTtlMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/safeparcel/GenericDocumentParcelCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcelCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/util/List;Ljava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJI",
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/PropertyParcel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static/range {p9 .. p9}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->createPropertyMapFromPropertyArray(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v11, p10

    .line 2
    invoke-direct/range {v0 .. v11}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/util/List;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJI",
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/PropertyParcel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/safeparcel/PropertyParcel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mNamespace:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mId:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mSchemaType:Ljava/lang/String;

    .line 7
    iput-wide p4, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mCreationTimestampMillis:J

    .line 8
    iput-wide p6, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mTtlMillis:J

    .line 9
    iput p8, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mScore:I

    .line 10
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p9, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mProperties:Ljava/util/List;

    .line 11
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p10, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mPropertyMap:Ljava/util/Map;

    .line 12
    iput-object p11, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mParentTypes:Ljava/util/List;

    return-void
.end method

.method private static blacklist createPropertyMapFromPropertyArray(Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/PropertyParcel;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/safeparcel/PropertyParcel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_23

    .line 19
    .line 20
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/app/appsearch/safeparcel/PropertyParcel;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getPropertyName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_d

    .line 36
    :cond_23
    return-object v0
.end method

.method public static blacklist fromGenericDocument(Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getDocumentParcel()Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

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
    check-cast p1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mNamespace:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mNamespace:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_5f

    .line 22
    .line 23
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mId:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_5f

    .line 32
    .line 33
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mSchemaType:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mSchemaType:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_5f

    .line 42
    .line 43
    iget-wide v3, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mTtlMillis:J

    .line 44
    .line 45
    iget-wide v5, p1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mTtlMillis:J

    .line 46
    .line 47
    cmp-long v1, v3, v5

    .line 48
    .line 49
    if-nez v1, :cond_5f

    .line 50
    .line 51
    iget-wide v3, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mCreationTimestampMillis:J

    .line 52
    .line 53
    iget-wide v5, p1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mCreationTimestampMillis:J

    .line 54
    .line 55
    cmp-long v1, v3, v5

    .line 56
    .line 57
    if-nez v1, :cond_5f

    .line 58
    .line 59
    iget v1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mScore:I

    .line 60
    .line 61
    iget v3, p1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mScore:I

    .line 62
    .line 63
    if-ne v1, v3, :cond_5f

    .line 64
    .line 65
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mProperties:Ljava/util/List;

    .line 66
    .line 67
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mProperties:Ljava/util/List;

    .line 68
    .line 69
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_5f

    .line 74
    .line 75
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mPropertyMap:Ljava/util/Map;

    .line 76
    .line 77
    iget-object v3, p1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mPropertyMap:Ljava/util/Map;

    .line 78
    .line 79
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5f

    .line 84
    .line 85
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mParentTypes:Ljava/util/List;

    .line 86
    .line 87
    iget-object p1, p1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mParentTypes:Ljava/util/List;

    .line 88
    .line 89
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_5f

    .line 94
    .line 95
    return v0

    .line 96
    :cond_5f
    return v2
.end method

.method public blacklist getCreationTimestampMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mCreationTimestampMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getNamespace()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mNamespace:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getParentTypes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mParentTypes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getProperties()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/PropertyParcel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mProperties:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getPropertyMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/safeparcel/PropertyParcel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mPropertyMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getPropertyNames()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mPropertyMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public blacklist getSchemaType()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mSchemaType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getScore()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mScore:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getTtlMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mTtlMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mHashCode:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_48

    .line 4
    .line 5
    iget-object v1, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mNamespace:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mSchemaType:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v4, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mTtlMillis:J

    .line 12
    .line 13
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mScore:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-wide v6, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mCreationTimestampMillis:J

    .line 24
    .line 25
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mProperties:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mPropertyMap:Ljava/util/Map;

    .line 40
    .line 41
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    iget-object v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mParentTypes:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mHashCode:Ljava/lang/Integer;

    .line 72
    .line 73
    :cond_48
    iget-object p0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->mHashCode:Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcelCreator;->writeToParcel(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
