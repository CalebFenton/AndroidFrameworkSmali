.class public final Landroid/media/internal/exo/extractor/VorbisUtil$Mode;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation


# instance fields
.field public final blacklist blockFlag:Z

.field public final blacklist mapping:I

.field public final blacklist transformType:I

.field public final blacklist windowType:I


# direct methods
.method public constructor blacklist <init>(ZIII)V
    .registers 5

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/VorbisUtil$Mode;->blockFlag:Z

    .line 116
    iput p2, p0, Landroid/media/internal/exo/extractor/VorbisUtil$Mode;->windowType:I

    .line 117
    iput p3, p0, Landroid/media/internal/exo/extractor/VorbisUtil$Mode;->transformType:I

    .line 118
    iput p4, p0, Landroid/media/internal/exo/extractor/VorbisUtil$Mode;->mapping:I

    return-void
.end method
