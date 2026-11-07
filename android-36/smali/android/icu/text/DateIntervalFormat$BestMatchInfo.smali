.class final Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateIntervalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BestMatchInfo"
.end annotation


# instance fields
.field final greylist-max-o bestMatchDistanceInfo:I

.field final greylist-max-o bestMatchSkeleton:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "bestSkeleton"    # Ljava/lang/String;
    .param p2, "difference"    # I

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    .line 400
    iput p2, p0, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    .line 401
    return-void
.end method
