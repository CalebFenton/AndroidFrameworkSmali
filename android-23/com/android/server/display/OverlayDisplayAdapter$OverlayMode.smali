.class final Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverlayMode"
.end annotation


# instance fields
.field final mDensityDpi:I

.field final mHeight:I

.field final mWidth:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I

    #@0
    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 512
    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    #@5
    .line 513
    iput p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    #@7
    .line 514
    iput p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    #@9
    .line 511
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 520
    const-string/jumbo v1, "width="

    #@b
    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    .line 520
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    #@11
    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    .line 521
    const-string/jumbo v1, ", height="

    #@18
    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 521
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    #@1e
    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 522
    const-string/jumbo v1, ", densityDpi="

    #@25
    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 522
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    #@2b
    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 523
    const-string/jumbo v1, "}"

    #@32
    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    return-object v0
.end method
