.class public Landroid/health/connect/ReadRecordsResponse;
.super Ljava/lang/Object;
.source "ReadRecordsResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/health/connect/datatypes/Record;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mNextPageToken:J

.field private final blacklist mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;J)V
    .registers 4
    .param p2, "nextPageToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;J)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Landroid/health/connect/ReadRecordsResponse;, "Landroid/health/connect/ReadRecordsResponse<TT;>;"
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/health/connect/ReadRecordsResponse;->mRecords:Ljava/util/List;

    .line 41
    iput-wide p2, p0, Landroid/health/connect/ReadRecordsResponse;->mNextPageToken:J

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist getNextPageToken()J
    .registers 3

    .line 54
    .local p0, "this":Landroid/health/connect/ReadRecordsResponse;, "Landroid/health/connect/ReadRecordsResponse<TT;>;"
    iget-wide v0, p0, Landroid/health/connect/ReadRecordsResponse;->mNextPageToken:J

    return-wide v0
.end method

.method public whitelist getRecords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 46
    .local p0, "this":Landroid/health/connect/ReadRecordsResponse;, "Landroid/health/connect/ReadRecordsResponse<TT;>;"
    iget-object v0, p0, Landroid/health/connect/ReadRecordsResponse;->mRecords:Ljava/util/List;

    return-object v0
.end method
