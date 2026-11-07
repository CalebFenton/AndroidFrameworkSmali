.class Lcom/android/internal/telephony/metrics/CallQualityMetrics$TimestampedQualitySnapshot;
.super Ljava/lang/Object;
.source "CallQualityMetrics.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/CallQualityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimestampedQualitySnapshot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/telephony/metrics/CallQualityMetrics$TimestampedQualitySnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mCallQualityLevel:I

.field blacklist mTimestampMs:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/CallQualityMetrics;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput p2, p0, Lcom/android/internal/telephony/metrics/CallQualityMetrics$TimestampedQualitySnapshot;->mTimestampMs:I

    .line 339
    iput p3, p0, Lcom/android/internal/telephony/metrics/CallQualityMetrics$TimestampedQualitySnapshot;->mCallQualityLevel:I

    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/telephony/metrics/CallQualityMetrics$TimestampedQualitySnapshot;)I
    .registers 2

    .line 344
    iget p0, p0, Lcom/android/internal/telephony/metrics/CallQualityMetrics$TimestampedQualitySnapshot;->mTimestampMs:I

    iget p1, p1, Lcom/android/internal/telephony/metrics/CallQualityMetrics$TimestampedQualitySnapshot;->mTimestampMs:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 333
    check-cast p1, Lcom/android/internal/telephony/metrics/CallQualityMetrics$TimestampedQualitySnapshot;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/CallQualityMetrics$TimestampedQualitySnapshot;->compareTo(Lcom/android/internal/telephony/metrics/CallQualityMetrics$TimestampedQualitySnapshot;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/CallQualityMetrics$TimestampedQualitySnapshot;->mTimestampMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCallQualityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/metrics/CallQualityMetrics$TimestampedQualitySnapshot;->mCallQualityLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
