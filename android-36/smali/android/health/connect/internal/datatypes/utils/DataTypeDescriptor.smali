.class public Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;
.super Ljava/lang/Object;
.source "DataTypeDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;,
        Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;,
        Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;,
        Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;,
        Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;,
        Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;,
        Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;,
        Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;,
        Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;
    }
.end annotation


# instance fields
.field private final blacklist mDataCategory:I

.field private final blacklist mPermissionCategory:I

.field private final blacklist mReadPermission:Ljava/lang/String;

.field private final blacklist mRecordClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordInternalClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist mRecordTypeIdentifier:I

.field private final blacklist mWritePermission:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcheckArgument(ZLjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->checkArgument(ZLjava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)V
    .registers 6
    .param p1, "builder"    # Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->-$$Nest$fgetmRecordTypeIdentifier(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    const-string v3, "Unknown record type"

    invoke-static {v0, v3}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->checkArgument(ZLjava/lang/String;)V

    .line 42
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->-$$Nest$fgetmHealthPermissionCategory(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)I

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    const-string v3, "Unknown permission category"

    invoke-static {v0, v3}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->checkArgument(ZLjava/lang/String;)V

    .line 45
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->-$$Nest$fgetmHealthDataCategory(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)I

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    const-string v0, "Unknown health data category"

    invoke-static {v1, v0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->checkArgument(ZLjava/lang/String;)V

    .line 48
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->-$$Nest$fgetmRecordTypeIdentifier(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mRecordTypeIdentifier:I

    .line 49
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->-$$Nest$fgetmHealthPermissionCategory(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mPermissionCategory:I

    .line 50
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->-$$Nest$fgetmHealthDataCategory(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mDataCategory:I

    .line 51
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->-$$Nest$fgetmReadPermission(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mReadPermission:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->-$$Nest$fgetmWritePermission(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mWritePermission:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->-$$Nest$fgetmRecordInternalClass(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mRecordInternalClass:Ljava/lang/Class;

    .line 54
    invoke-static {p1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->-$$Nest$fgetmRecordClass(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mRecordClass:Ljava/lang/Class;

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;-><init>(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)V

    return-void
.end method

.method static blacklist builder()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;
    .registers 2

    .line 123
    new-instance v0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;-><init>(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor-IA;)V

    return-object v0
.end method

.method private static blacklist checkArgument(ZLjava/lang/String;)V
    .registers 3
    .param p0, "expression"    # Z
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 211
    if-eqz p0, :cond_3

    .line 214
    return-void

    .line 212
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getDataCategory()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mDataCategory:I

    return v0
.end method

.method public blacklist getPermissionCategory()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mPermissionCategory:I

    return v0
.end method

.method public blacklist getReadPermission()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRecordClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mRecordClass:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getRecordInternalClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mRecordInternalClass:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getRecordTypeIdentifier()I
    .registers 2

    .line 59
    iget v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mRecordTypeIdentifier:I

    return v0
.end method

.method public blacklist getWritePermission()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method
