.class Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
.super Ljava/lang/Object;
.source "WuQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/WuQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaximizeResult"
.end annotation


# instance fields
.field final blacklist mCutLocation:I

.field final blacklist mMaximum:D


# direct methods
.method constructor blacklist <init>(ID)V
    .registers 4
    .param p1, "cut"    # I
    .param p2, "max"    # D

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    .line 437
    iput-wide p2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    .line 438
    return-void
.end method
