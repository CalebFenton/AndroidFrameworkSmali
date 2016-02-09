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
.field final bestMatchDistanceInfo:I

.field final bestMatchSkeleton:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "bestSkeleton"    # Ljava/lang/String;
    .param p2, "difference"    # I

    #@0
    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 267
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    #@5
    .line 268
    iput p2, p0, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    #@7
    .line 266
    return-void
.end method
