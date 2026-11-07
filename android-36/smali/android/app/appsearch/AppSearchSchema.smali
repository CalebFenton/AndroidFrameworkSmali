.class public final Landroid/app/appsearch/AppSearchSchema;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/AppSearchSchema$PropertyConfig;,
        Landroid/app/appsearch/AppSearchSchema$BlobHandlePropertyConfig;,
        Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig;,
        Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;,
        Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;,
        Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig;,
        Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig;,
        Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;,
        Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;,
        Landroid/app/appsearch/AppSearchSchema$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDescription:Ljava/lang/String;

.field private final blacklist mParentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mPropertyConfigParcels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/PropertyConfigParcel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSchemaType:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$OKG8sfH3lXFO7wA-66WRXPI0DaU(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroid/app/appsearch/AppSearchSchema;->lambda$appendAppSearchSchemaString$0(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentTypes(Landroid/app/appsearch/AppSearchSchema;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema;->mParentTypes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/AppSearchSchemaCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/AppSearchSchemaCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/AppSearchSchema;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/PropertyConfigParcel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema;->mSchemaType:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/appsearch/AppSearchSchema;->mPropertyConfigParcels:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Landroid/app/appsearch/AppSearchSchema;->mParentTypes:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object p4, p0, Landroid/app/appsearch/AppSearchSchema;->mDescription:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method private blacklist appendAppSearchSchemaString(Landroid/app/appsearch/util/IndentingStringBuilder;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "{\n"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->increaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v0, "schemaType: \""

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "\",\n"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, "description: \""

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema;->getDescription()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, "properties: [\n"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema;->getProperties()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/4 v0, 0x0

    .line 58
    new-array v1, v0, [Landroid/app/appsearch/AppSearchSchema$PropertyConfig;

    .line 59
    .line 60
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, [Landroid/app/appsearch/AppSearchSchema$PropertyConfig;

    .line 65
    .line 66
    new-instance v1, Landroid/app/appsearch/AppSearchSchema$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 72
    .line 73
    .line 74
    :goto_49
    array-length v1, p0

    .line 75
    if-ge v0, v1, :cond_64

    .line 76
    .line 77
    aget-object v1, p0, v0

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->increaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->appendPropertyConfigString(Landroid/app/appsearch/util/IndentingStringBuilder;)V

    .line 83
    .line 84
    .line 85
    array-length v1, p0

    .line 86
    add-int/lit8 v1, v1, -0x1

    .line 87
    .line 88
    if-eq v0, v1, :cond_5e

    .line 89
    .line 90
    const-string v1, ",\n"

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_5e
    invoke-virtual {p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->decreaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 96
    .line 97
    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_49

    .line 101
    :cond_64
    const-string p0, "\n"

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p0, "]\n"

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->decreaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p0, "}"

    .line 115
    .line 116
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private static synthetic blacklist lambda$appendAppSearchSchemaString$0(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    if-ne p0, p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_4
    instance-of v0, p1, Landroid/app/appsearch/AppSearchSchema;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 9
    .line 10
    return v1

    .line 11
    :cond_a
    check-cast p1, Landroid/app/appsearch/AppSearchSchema;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1b

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1b
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema;->getDescription()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchSchema;->getDescription()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2a

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2a
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema;->getParentTypes()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchSchema;->getParentTypes()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_39

    .line 56
    .line 57
    return v1

    .line 58
    :cond_39
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema;->getProperties()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchSchema;->getProperties()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema;->mDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getParentTypes()Ljava/util/List;
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
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema;->mParentTypes:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist getProperties()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/AppSearchSchema$PropertyConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSchema;->mPropertyConfigParcels:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v1, p0, Landroid/app/appsearch/AppSearchSchema;->mPropertyConfigParcels:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_17
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSchema;->mPropertyConfigParcels:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v1, v2, :cond_31

    .line 31
    .line 32
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSchema;->mPropertyConfigParcels:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 39
    .line 40
    invoke-static {v2}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->fromParcel(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)Landroid/app/appsearch/AppSearchSchema$PropertyConfig;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_17

    .line 50
    :cond_31
    return-object v0
.end method

.method public whitelist getSchemaType()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema;->mSchemaType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema;->getProperties()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema;->getParentTypes()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema;->getDescription()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/util/IndentingStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/app/appsearch/AppSearchSchema;->appendAppSearchSchemaString(Landroid/app/appsearch/util/IndentingStringBuilder;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/AppSearchSchemaCreator;->writeToParcel(Landroid/app/appsearch/AppSearchSchema;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
