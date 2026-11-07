.class public final Landroid/media/internal/exo/util/NalUnitUtil$PpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PpsData"
.end annotation


# instance fields
.field public final blacklist bottomFieldPicOrderInFramePresentFlag:Z

.field public final blacklist picParameterSetId:I

.field public final blacklist seqParameterSetId:I


# direct methods
.method public constructor blacklist <init>(IIZ)V
    .registers 4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Landroid/media/internal/exo/util/NalUnitUtil$PpsData;->picParameterSetId:I

    .line 126
    iput p2, p0, Landroid/media/internal/exo/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    .line 127
    iput-boolean p3, p0, Landroid/media/internal/exo/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    return-void
.end method
