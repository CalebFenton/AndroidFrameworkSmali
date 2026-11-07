.class public Lcom/android/internal/os/RpmStats$PowerStateElement;
.super Ljava/lang/Object;
.source "RpmStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RpmStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerStateElement"
.end annotation


# instance fields
.field public greylist-max-o mCount:I

.field public greylist-max-o mTimeMs:J


# direct methods
.method private constructor greylist-max-o <init>(JI)V
    .registers 4
    .param p1, "timeMs"    # J
    .param p3, "count"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mTimeMs:J

    .line 67
    iput p3, p0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mCount:I

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(JILcom/android/internal/os/RpmStats-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/RpmStats$PowerStateElement;-><init>(JI)V

    return-void
.end method
