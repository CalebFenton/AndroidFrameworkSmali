.class public final Landroid/health/connect/internal/datatypes/utils/RecordTypeRecordCategoryMapper;
.super Ljava/lang/Object;
.source "RecordTypeRecordCategoryMapper.java"


# static fields
.field private static blacklist sRecordTypeToRecordCategoryMapper:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/health/connect/internal/datatypes/utils/RecordTypeRecordCategoryMapper;->sRecordTypeToRecordCategoryMapper:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getRecordCategoryForRecordType(I)I
    .registers 4
    .param p0, "recordType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/RecordTypeRecordCategoryMapper;->sRecordTypeToRecordCategoryMapper:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 142
    invoke-static {}, Landroid/health/connect/internal/datatypes/utils/RecordTypeRecordCategoryMapper;->populateRecordTypeToRecordCategoryMap()V

    .line 145
    :cond_b
    sget-object v0, Landroid/health/connect/internal/datatypes/utils/RecordTypeRecordCategoryMapper;->sRecordTypeToRecordCategoryMapper:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 146
    .local v0, "recordCategory":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record Category not found for Record Type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static blacklist populateRecordTypeToRecordCategoryMap()V
    .registers 1

    .line 83
    new-instance v0, Landroid/health/connect/internal/datatypes/utils/RecordTypeRecordCategoryMapper$1;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/utils/RecordTypeRecordCategoryMapper$1;-><init>()V

    sput-object v0, Landroid/health/connect/internal/datatypes/utils/RecordTypeRecordCategoryMapper;->sRecordTypeToRecordCategoryMapper:Landroid/util/SparseIntArray;

    .line 129
    return-void
.end method
