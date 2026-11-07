.class final Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;
.super Ljava/lang/Object;
.source "MetricIds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MetricInfo"
.end annotation


# instance fields
.field public blacklist mHash:J

.field public blacklist mType:I


# direct methods
.method constructor blacklist <init>(JI)V
    .registers 4
    .param p1, "hash"    # J
    .param p3, "type"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;->mHash:J

    .line 22
    iput p3, p0, Lcom/android/bluetooth/jarjar/com/android/modules/expresslog/MetricIds$MetricInfo;->mType:I

    .line 23
    return-void
.end method
