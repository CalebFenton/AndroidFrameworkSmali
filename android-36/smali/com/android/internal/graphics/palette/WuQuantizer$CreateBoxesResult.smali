.class Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;
.super Ljava/lang/Object;
.source "WuQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/WuQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateBoxesResult"
.end annotation


# instance fields
.field final blacklist mRequestedCount:I

.field final blacklist mResultCount:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3
    .param p1, "requestedCount"    # I
    .param p2, "resultCount"    # I

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;->mRequestedCount:I

    .line 447
    iput p2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;->mResultCount:I

    .line 448
    return-void
.end method
