.class public final Landroid/health/connect/datatypes/AggregationType;
.super Ljava/lang/Object;
.source "AggregationType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/AggregationType$AggregationTypeIdentifier;,
        Landroid/health/connect/datatypes/AggregationType$AggregateOperationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final blacklist AVG:I = 0x2

.field public static final blacklist COUNT:I = 0x4

.field public static final blacklist MAX:I = 0x0

.field public static final blacklist MIN:I = 0x1

.field public static final blacklist OPERATION_VALID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SUM:I = 0x3


# instance fields
.field private final blacklist mApplicableRecordTypeId:I

.field private final blacklist mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mId:I

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 408
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/AggregationType;->OPERATION_VALID_TYPES:Ljava/util/Set;

    return-void
.end method

.method constructor blacklist <init>(IIILjava/lang/Class;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "applicableRecordTypeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    .local p4, "templateClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Landroid/health/connect/datatypes/AggregationType$AggregationTypeIdentifier;->IDENTIFIER_VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/AggregationType$AggregationTypeIdentifier;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {p1, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 69
    sget-object v0, Landroid/health/connect/datatypes/AggregationType;->OPERATION_VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/AggregationType$AggregateOperationType;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {p2, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 72
    iput p1, p0, Landroid/health/connect/datatypes/AggregationType;->mId:I

    .line 73
    iput p2, p0, Landroid/health/connect/datatypes/AggregationType;->mType:I

    .line 74
    iput p3, p0, Landroid/health/connect/datatypes/AggregationType;->mApplicableRecordTypeId:I

    .line 75
    iput-object p4, p0, Landroid/health/connect/datatypes/AggregationType;->mClass:Ljava/lang/Class;

    .line 76
    return-void
.end method


# virtual methods
.method public blacklist getAggregateOperationType()I
    .registers 2

    .line 93
    .local p0, "this":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget v0, p0, Landroid/health/connect/datatypes/AggregationType;->mType:I

    return v0
.end method

.method public blacklist getAggregateResultClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget-object v0, p0, Landroid/health/connect/datatypes/AggregationType;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getAggregationTypeIdentifier()I
    .registers 2

    .line 81
    .local p0, "this":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget v0, p0, Landroid/health/connect/datatypes/AggregationType;->mId:I

    return v0
.end method

.method public blacklist getApplicableRecordTypeId()I
    .registers 2

    .line 87
    .local p0, "this":Landroid/health/connect/datatypes/AggregationType;, "Landroid/health/connect/datatypes/AggregationType<TT;>;"
    iget v0, p0, Landroid/health/connect/datatypes/AggregationType;->mApplicableRecordTypeId:I

    return v0
.end method
