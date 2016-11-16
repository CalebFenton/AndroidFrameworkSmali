.class public Lcom/android/internal/app/procstats/DurationsTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "DurationsTable.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0
    .param p1, "tableData"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    #@3
    .line 24
    return-void
.end method


# virtual methods
.method public addDuration(IJ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 48
    int-to-byte v1, p1

    #@1
    const/4 v2, 0x1

    #@2
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getOrAddKey(BI)I

    #@5
    move-result v0

    #@6
    .line 49
    .local v0, "key":I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    #@9
    move-result-wide v2

    #@a
    add-long/2addr v2, p2

    #@b
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->setValue(IJ)V

    #@e
    .line 47
    return-void
.end method

.method public addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V
    .locals 6
    .param p1, "from"    # Lcom/android/internal/app/procstats/DurationsTable;

    #@0
    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    #@3
    move-result v0

    #@4
    .line 35
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 36
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    #@a
    move-result v2

    #@b
    .line 37
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    #@e
    move-result v3

    #@f
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    #@12
    move-result-wide v4

    #@13
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    #@16
    .line 35
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 33
    .end local v2    # "key":I
    :cond_0
    return-void
.end method
