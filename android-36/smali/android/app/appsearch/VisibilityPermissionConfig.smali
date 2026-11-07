.class public final Landroid/app/appsearch/VisibilityPermissionConfig;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final blacklist ALL_REQUIRED_PERMISSIONS_PROPERTY:Ljava/lang/String; = "allRequiredPermissions"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/VisibilityPermissionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCHEMA:Landroid/app/appsearch/AppSearchSchema;

.field public static final blacklist SCHEMA_TYPE:Ljava/lang/String; = "VisibilityPermissionType"


# instance fields
.field final blacklist mAllRequiredPermissions:[I

.field private blacklist mGenericDocument:Landroid/app/appsearch/GenericDocument;

.field private blacklist mHashCode:Ljava/lang/Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/VisibilityPermissionConfigCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/VisibilityPermissionConfigCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/VisibilityPermissionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$Builder;

    .line 9
    .line 10
    const-string v1, "VisibilityPermissionType"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    .line 16
    .line 17
    const-string v2, "allRequiredPermissions"

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchSchema$Builder;->build()Landroid/app/appsearch/AppSearchSchema;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Landroid/app/appsearch/VisibilityPermissionConfig;->SCHEMA:Landroid/app/appsearch/AppSearchSchema;

    .line 40
    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/app/appsearch/VisibilityPermissionConfig;->toInts(Ljava/util/Set;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mAllRequiredPermissions:[I

    return-void
.end method

.method constructor blacklist <init>([I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mAllRequiredPermissions:[I

    return-void
.end method

.method private static blacklist toIntegerSet([I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_c
    if-ge v2, v1, :cond_1a

    .line 14
    .line 15
    aget v3, p0, v2

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_c

    .line 27
    :cond_1a
    return-object v0
.end method

.method private static blacklist toInts(Ljava/util/Set;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_21

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/lit8 v3, v1, 0x1

    .line 29
    .line 30
    aput v2, v0, v1

    .line 31
    .line 32
    move v1, v3

    .line 33
    goto :goto_b

    .line 34
    :cond_21
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_4
    instance-of v0, p1, Landroid/app/appsearch/VisibilityPermissionConfig;

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    check-cast p1, Landroid/app/appsearch/VisibilityPermissionConfig;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mAllRequiredPermissions:[I

    .line 14
    .line 15
    iget-object p1, p1, Landroid/app/appsearch/VisibilityPermissionConfig;->mAllRequiredPermissions:[I

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public blacklist getAllRequiredPermissions()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mAllRequiredPermissions:[I

    .line 2
    .line 3
    invoke-static {p0}, Landroid/app/appsearch/VisibilityPermissionConfig;->toIntegerSet([I)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mHashCode:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mAllRequiredPermissions:[I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

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
    iput-object v0, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mHashCode:Ljava/lang/Integer;

    .line 16
    .line 17
    :cond_10
    iget-object p0, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mHashCode:Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public blacklist toGenericDocument()Landroid/app/appsearch/GenericDocument;
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    .line 2
    .line 3
    if-nez v0, :cond_32

    .line 4
    .line 5
    new-instance v0, Landroid/app/appsearch/GenericDocument$Builder;

    .line 6
    .line 7
    const-string v1, "VisibilityPermissionType"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-direct {v0, v2, v2, v1}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mAllRequiredPermissions:[I

    .line 15
    .line 16
    if-eqz v1, :cond_27

    .line 17
    .line 18
    array-length v1, v1

    .line 19
    new-array v1, v1, [J

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_15
    iget-object v3, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mAllRequiredPermissions:[I

    .line 23
    .line 24
    array-length v4, v3

    .line 25
    if-ge v2, v4, :cond_22

    .line 26
    .line 27
    aget v3, v3, v2

    .line 28
    .line 29
    int-to-long v3, v3

    .line 30
    aput-wide v3, v1, v2

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_15

    .line 35
    :cond_22
    const-string v2, "allRequiredPermissions"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    .line 38
    .line 39
    .line 40
    :cond_27
    const-wide/16 v1, 0x0

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/app/appsearch/GenericDocument$Builder;->setCreationTimestampMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    .line 50
    .line 51
    :cond_32
    iget-object p0, p0, Landroid/app/appsearch/VisibilityPermissionConfig;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    .line 52
    .line 53
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/VisibilityPermissionConfigCreator;->writeToParcel(Landroid/app/appsearch/VisibilityPermissionConfig;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
