.class public final Landroid/uwb/RangingReport$Builder;
.super Ljava/lang/Object;
.source "RangingReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/RangingReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field blacklist mMeasurements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/uwb/RangingMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRangingReportMetadata:Landroid/os/PersistableBundle;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/uwb/RangingReport$Builder;->mMeasurements:Ljava/util/List;

    .line 142
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/uwb/RangingReport$Builder;->mRangingReportMetadata:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public whitelist addMeasurement(Landroid/uwb/RangingMeasurement;)Landroid/uwb/RangingReport$Builder;
    .registers 3
    .param p1, "rangingMeasurement"    # Landroid/uwb/RangingMeasurement;

    .line 151
    iget-object v0, p0, Landroid/uwb/RangingReport$Builder;->mMeasurements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-object p0
.end method

.method public whitelist addMeasurements(Ljava/util/List;)Landroid/uwb/RangingReport$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/uwb/RangingMeasurement;",
            ">;)",
            "Landroid/uwb/RangingReport$Builder;"
        }
    .end annotation

    .line 162
    .local p1, "rangingMeasurements":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/RangingMeasurement;>;"
    iget-object v0, p0, Landroid/uwb/RangingReport$Builder;->mMeasurements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    return-object p0
.end method

.method public whitelist addRangingReportMetadata(Landroid/os/PersistableBundle;)Landroid/uwb/RangingReport$Builder;
    .registers 4
    .param p1, "rangingReportMetadata"    # Landroid/os/PersistableBundle;

    .line 175
    if-eqz p1, :cond_5

    .line 178
    iput-object p1, p0, Landroid/uwb/RangingReport$Builder;->mRangingReportMetadata:Landroid/os/PersistableBundle;

    .line 179
    return-object p0

    .line 176
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected non-null rangingReportMetadata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/uwb/RangingReport;
    .registers 8

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "prevMeasurement":Landroid/uwb/RangingMeasurement;
    const/4 v1, 0x0

    .local v1, "curIndex":I
    :goto_2
    iget-object v2, p0, Landroid/uwb/RangingReport$Builder;->mMeasurements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_60

    .line 192
    iget-object v2, p0, Landroid/uwb/RangingReport$Builder;->mMeasurements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/uwb/RangingMeasurement;

    .line 193
    .local v2, "curMeasurement":Landroid/uwb/RangingMeasurement;
    if-eqz v0, :cond_5c

    .line 194
    invoke-virtual {v0}, Landroid/uwb/RangingMeasurement;->getElapsedRealtimeNanos()J

    move-result-wide v3

    .line 195
    invoke-virtual {v2}, Landroid/uwb/RangingMeasurement;->getElapsedRealtimeNanos()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_21

    goto :goto_5c

    .line 196
    :cond_21
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timestamp ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 197
    invoke-virtual {v2}, Landroid/uwb/RangingMeasurement;->getElapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is less than previous timestamp ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 199
    invoke-virtual {v0}, Landroid/uwb/RangingMeasurement;->getElapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :cond_5c
    :goto_5c
    move-object v0, v2

    .line 191
    .end local v2    # "curMeasurement":Landroid/uwb/RangingMeasurement;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 203
    .end local v1    # "curIndex":I
    :cond_60
    new-instance v1, Landroid/uwb/RangingReport;

    iget-object v2, p0, Landroid/uwb/RangingReport$Builder;->mMeasurements:Ljava/util/List;

    iget-object v3, p0, Landroid/uwb/RangingReport$Builder;->mRangingReportMetadata:Landroid/os/PersistableBundle;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/uwb/RangingReport;-><init>(Ljava/util/List;Landroid/os/PersistableBundle;Landroid/uwb/RangingReport-IA;)V

    return-object v1
.end method
