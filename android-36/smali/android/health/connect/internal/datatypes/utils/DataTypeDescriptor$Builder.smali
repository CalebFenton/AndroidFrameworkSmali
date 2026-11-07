.class Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;
.super Ljava/lang/Object;
.source "DataTypeDescriptor.java"

# interfaces
.implements Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordTypeIdentifierBuilderStep;
.implements Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;
.implements Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;
.implements Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;
.implements Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;
.implements Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;
.implements Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;
.implements Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHealthDataCategory:I

.field private blacklist mHealthPermissionCategory:I

.field private blacklist mReadPermission:Ljava/lang/String;

.field private blacklist mRecordClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRecordInternalClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mRecordTypeIdentifier:I

.field private blacklist mWritePermission:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHealthDataCategory(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)I
    .registers 1

    iget p0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mHealthDataCategory:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHealthPermissionCategory(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)I
    .registers 1

    iget p0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mHealthPermissionCategory:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReadPermission(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mReadPermission:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordClass(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mRecordClass:Ljava/lang/Class;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordInternalClass(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mRecordInternalClass:Ljava/lang/Class;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordTypeIdentifier(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)I
    .registers 1

    iget p0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mRecordTypeIdentifier:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWritePermission(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mWritePermission:Ljava/lang/String;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mRecordTypeIdentifier:I

    .line 138
    iput v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mHealthPermissionCategory:I

    .line 141
    iput v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mHealthDataCategory:I

    .line 147
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;
    .registers 3

    .line 206
    new-instance v0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;-><init>(Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor-IA;)V

    return-object v0
.end method

.method public blacklist setDataCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$ReadPermissionBuilderStep;
    .registers 4
    .param p1, "healthDataCategory"    # I

    .line 172
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Unknown health data category"

    invoke-static {v0, v1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->-$$Nest$smcheckArgument(ZLjava/lang/String;)V

    .line 175
    iput p1, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mHealthDataCategory:I

    .line 176
    return-object p0
.end method

.method public blacklist setPermissionCategory(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$DataCategoryBuilderStep;
    .registers 4
    .param p1, "permissionCategory"    # I

    .line 162
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Unknown permission category"

    invoke-static {v0, v1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->-$$Nest$smcheckArgument(ZLjava/lang/String;)V

    .line 165
    iput p1, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mHealthPermissionCategory:I

    .line 166
    return-object p0
.end method

.method public blacklist setReadPermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$WritePermissionBuilderStep;
    .registers 3
    .param p1, "readPermission"    # Ljava/lang/String;

    .line 181
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mReadPermission:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public blacklist setRecordClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;)",
            "Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordInternalClassBuilderStep;"
        }
    .end annotation

    .line 193
    .local p1, "recordClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mRecordClass:Ljava/lang/Class;

    .line 194
    return-object p0
.end method

.method public blacklist setRecordInternalClass(Ljava/lang/Class;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/internal/datatypes/RecordInternal<",
            "*>;>;)",
            "Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$BuildStep;"
        }
    .end annotation

    .line 200
    .local p1, "recordInternalClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/internal/datatypes/RecordInternal<*>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mRecordInternalClass:Ljava/lang/Class;

    .line 201
    return-object p0
.end method

.method public blacklist setRecordTypeIdentifier(I)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$PermissionCategoryBuilderStep;
    .registers 4
    .param p1, "recordTypeIdentifier"    # I

    .line 152
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Unknown record type identifier"

    invoke-static {v0, v1}, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor;->-$$Nest$smcheckArgument(ZLjava/lang/String;)V

    .line 155
    iput p1, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mRecordTypeIdentifier:I

    .line 156
    return-object p0
.end method

.method public blacklist setWritePermission(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$RecordClassBuilderStep;
    .registers 3
    .param p1, "writePermission"    # Ljava/lang/String;

    .line 187
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/utils/DataTypeDescriptor$Builder;->mWritePermission:Ljava/lang/String;

    .line 188
    return-object p0
.end method
