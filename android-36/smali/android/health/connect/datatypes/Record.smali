.class public abstract Landroid/health/connect/datatypes/Record;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mRecordIdentifier:I


# direct methods
.method constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/health/connect/datatypes/Identifier;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/Identifier;

    .line 41
    .local v0, "annotation":Landroid/health/connect/datatypes/Identifier;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    nop

    .line 43
    invoke-interface {v0}, Landroid/health/connect/datatypes/Identifier;->recordIdentifier()I

    move-result v1

    .line 44
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getInstance()Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/utils/HealthConnectMappings;->getAllRecordTypeIdentifiers()Ljava/util/Set;

    move-result-object v2

    const-class v3, Landroid/health/connect/datatypes/RecordTypeIdentifier;

    .line 45
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {v1, v2, v3}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 46
    invoke-interface {v0}, Landroid/health/connect/datatypes/Identifier;->recordIdentifier()I

    move-result v1

    iput v1, p0, Landroid/health/connect/datatypes/Record;->mRecordIdentifier:I

    .line 47
    iput-object p1, p0, Landroid/health/connect/datatypes/Record;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 74
    :cond_4
    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    if-nez p1, :cond_b

    .line 75
    return v1

    .line 78
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 79
    move-object v2, p1

    check-cast v2, Landroid/health/connect/datatypes/Record;

    .line 80
    .local v2, "other":Landroid/health/connect/datatypes/Record;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Record;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v3

    invoke-virtual {v2}, Landroid/health/connect/datatypes/Record;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 81
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Record;->getRecordType()I

    move-result v3

    invoke-virtual {v2}, Landroid/health/connect/datatypes/Record;->getRecordType()I

    move-result v4

    if-ne v3, v4, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    .line 80
    :goto_36
    return v0

    .line 83
    .end local v2    # "other":Landroid/health/connect/datatypes/Record;
    :cond_37
    return v1
.end method

.method public whitelist getMetadata()Landroid/health/connect/datatypes/Metadata;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/health/connect/datatypes/Record;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    return-object v0
.end method

.method public whitelist getRecordType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 62
    iget v0, p0, Landroid/health/connect/datatypes/Record;->mRecordIdentifier:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 89
    invoke-virtual {p0}, Landroid/health/connect/datatypes/Record;->getMetadata()Landroid/health/connect/datatypes/Metadata;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/Record;->getRecordType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract blacklist toRecordInternal()Landroid/health/connect/internal/datatypes/RecordInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;"
        }
    .end annotation
.end method
