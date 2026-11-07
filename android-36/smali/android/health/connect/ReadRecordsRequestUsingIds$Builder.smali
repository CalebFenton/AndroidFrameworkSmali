.class public final Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;
.super Ljava/lang/Object;
.source "ReadRecordsRequestUsingIds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/ReadRecordsRequestUsingIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/health/connect/datatypes/Record;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mRecordIdFiltersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/RecordIdFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;, "Landroid/health/connect/ReadRecordsRequestUsingIds$Builder<TT;>;"
    .local p1, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;->mRecordIdFiltersList:Ljava/util/List;

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;->mRecordType:Ljava/lang/Class;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist addClientRecordId(Ljava/lang/String;)Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;
    .registers 4
    .param p1, "clientRecordId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/health/connect/ReadRecordsRequestUsingIds$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 122
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;, "Landroid/health/connect/ReadRecordsRequestUsingIds$Builder<TT;>;"
    iget-object v0, p0, Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;->mRecordIdFiltersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_16

    .line 126
    iget-object v0, p0, Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;->mRecordIdFiltersList:Ljava/util/List;

    iget-object v1, p0, Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;->mRecordType:Ljava/lang/Class;

    .line 127
    invoke-static {v1, p1}, Landroid/health/connect/RecordIdFilter;->fromClientRecordId(Ljava/lang/Class;Ljava/lang/String;)Landroid/health/connect/RecordIdFilter;

    move-result-object v1

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-object p0

    .line 123
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum allowed pageSize is 5000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addId(Ljava/lang/String;)Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/health/connect/ReadRecordsRequestUsingIds$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 101
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;, "Landroid/health/connect/ReadRecordsRequestUsingIds$Builder<TT;>;"
    iget-object v0, p0, Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;->mRecordIdFiltersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_16

    .line 105
    iget-object v0, p0, Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;->mRecordIdFiltersList:Ljava/util/List;

    iget-object v1, p0, Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;->mRecordType:Ljava/lang/Class;

    invoke-static {v1, p1}, Landroid/health/connect/RecordIdFilter;->fromId(Ljava/lang/Class;Ljava/lang/String;)Landroid/health/connect/RecordIdFilter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object p0

    .line 102
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum allowed pageSize is 5000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/health/connect/ReadRecordsRequestUsingIds;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/health/connect/ReadRecordsRequestUsingIds<",
            "TT;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;, "Landroid/health/connect/ReadRecordsRequestUsingIds$Builder<TT;>;"
    iget-object v0, p0, Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;->mRecordIdFiltersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 139
    new-instance v0, Landroid/health/connect/ReadRecordsRequestUsingIds;

    iget-object v1, p0, Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;->mRecordType:Ljava/lang/Class;

    iget-object v2, p0, Landroid/health/connect/ReadRecordsRequestUsingIds$Builder;->mRecordIdFiltersList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/ReadRecordsRequestUsingIds;-><init>(Ljava/lang/Class;Ljava/util/List;Landroid/health/connect/ReadRecordsRequestUsingIds-IA;)V

    return-object v0

    .line 135
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RecordIdFilter list is empty, Either record id or client record id must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
