.class public Landroid/health/connect/InsertRecordsResponse;
.super Ljava/lang/Object;
.source "InsertRecordsResponse.java"


# instance fields
.field final blacklist mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/Record;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/Record;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/health/connect/InsertRecordsResponse;->mRecords:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist getRecords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/Record;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Landroid/health/connect/InsertRecordsResponse;->mRecords:Ljava/util/List;

    return-object v0
.end method
