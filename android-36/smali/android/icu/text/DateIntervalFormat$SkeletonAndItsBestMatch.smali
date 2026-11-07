.class final Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateIntervalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SkeletonAndItsBestMatch"
.end annotation


# instance fields
.field final greylist-max-o bestMatchSkeleton:Ljava/lang/String;

.field final greylist-max-o skeleton:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "bestMatch"    # Ljava/lang/String;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->skeleton:Ljava/lang/String;

    .line 413
    iput-object p2, p0, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->bestMatchSkeleton:Ljava/lang/String;

    .line 414
    return-void
.end method
