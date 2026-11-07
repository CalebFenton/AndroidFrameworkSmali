.class Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;
.super Ljava/lang/Object;
.source "RcsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastFeatureTagState"
.end annotation


# instance fields
.field public blacklist carrierId:I

.field public blacklist reason:I

.field public blacklist slotId:I

.field public blacklist state:I

.field public blacklist timeStamp:J


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;IIIIJ)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput p2, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->carrierId:I

    .line 426
    iput p3, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->slotId:I

    .line 427
    iput p4, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->state:I

    .line 428
    iput p5, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->reason:I

    .line 429
    iput-wide p6, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->timeStamp:J

    return-void
.end method


# virtual methods
.method public blacklist update(IIJ)V
    .registers 5

    .line 433
    iput p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->state:I

    .line 434
    iput p2, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->reason:I

    .line 435
    iput-wide p3, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->timeStamp:J

    return-void
.end method

.method public blacklist update(J)V
    .registers 3

    .line 439
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags$LastFeatureTagState;->timeStamp:J

    return-void
.end method
