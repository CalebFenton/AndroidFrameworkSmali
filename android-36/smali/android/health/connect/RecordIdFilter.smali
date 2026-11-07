.class public Landroid/health/connect/RecordIdFilter;
.super Ljava/lang/Object;
.source "RecordIdFilter.java"


# instance fields
.field private final blacklist mClientRecordId:Ljava/lang/String;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mRecordType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "clientRecordId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 67
    .local p1, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/health/connect/RecordIdFilter;->mRecordType:Ljava/lang/Class;

    .line 69
    iput-object p2, p0, Landroid/health/connect/RecordIdFilter;->mId:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Landroid/health/connect/RecordIdFilter;->mClientRecordId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static whitelist fromClientRecordId(Ljava/lang/Class;Ljava/lang/String;)Landroid/health/connect/RecordIdFilter;
    .registers 4
    .param p1, "clientRecordId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/health/connect/RecordIdFilter;"
        }
    .end annotation

    .line 45
    .local p0, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Landroid/health/connect/RecordIdFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Landroid/health/connect/RecordIdFilter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist fromId(Ljava/lang/Class;Ljava/lang/String;)Landroid/health/connect/RecordIdFilter;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/health/connect/RecordIdFilter;"
        }
    .end annotation

    .line 62
    .local p0, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/health/connect/RecordIdFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/health/connect/RecordIdFilter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getClientRecordId()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/health/connect/RecordIdFilter;->mClientRecordId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/health/connect/RecordIdFilter;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRecordType()Ljava/lang/Class;
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

    .line 78
    iget-object v0, p0, Landroid/health/connect/RecordIdFilter;->mRecordType:Ljava/lang/Class;

    return-object v0
.end method
