.class public Landroid/media/Cea708CCParser$CaptionWindow;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionWindow"
.end annotation


# instance fields
.field public final anchorHorizontal:I

.field public final anchorId:I

.field public final anchorVertical:I

.field public final columnCount:I

.field public final columnLock:Z

.field public final id:I

.field public final penStyle:I

.field public final priority:I

.field public final relativePositioning:Z

.field public final rowCount:I

.field public final rowLock:Z

.field public final visible:Z

.field public final windowStyle:I


# direct methods
.method public constructor <init>(IZZZIZIIIIIII)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "visible"    # Z
    .param p3, "rowLock"    # Z
    .param p4, "columnLock"    # Z
    .param p5, "priority"    # I
    .param p6, "relativePositioning"    # Z
    .param p7, "anchorVertical"    # I
    .param p8, "anchorHorizontal"    # I
    .param p9, "anchorId"    # I
    .param p10, "rowCount"    # I
    .param p11, "columnCount"    # I
    .param p12, "penStyle"    # I
    .param p13, "windowStyle"    # I

    #@0
    .prologue
    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1002
    iput p1, p0, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    #@5
    .line 1003
    iput-boolean p2, p0, Landroid/media/Cea708CCParser$CaptionWindow;->visible:Z

    #@7
    .line 1004
    iput-boolean p3, p0, Landroid/media/Cea708CCParser$CaptionWindow;->rowLock:Z

    #@9
    .line 1005
    iput-boolean p4, p0, Landroid/media/Cea708CCParser$CaptionWindow;->columnLock:Z

    #@b
    .line 1006
    iput p5, p0, Landroid/media/Cea708CCParser$CaptionWindow;->priority:I

    #@d
    .line 1007
    iput-boolean p6, p0, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    #@f
    .line 1008
    iput p7, p0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorVertical:I

    #@11
    .line 1009
    iput p8, p0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    #@13
    .line 1010
    iput p9, p0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    #@15
    .line 1011
    iput p10, p0, Landroid/media/Cea708CCParser$CaptionWindow;->rowCount:I

    #@17
    .line 1012
    iput p11, p0, Landroid/media/Cea708CCParser$CaptionWindow;->columnCount:I

    #@19
    .line 1013
    iput p12, p0, Landroid/media/Cea708CCParser$CaptionWindow;->penStyle:I

    #@1b
    .line 1014
    iput p13, p0, Landroid/media/Cea708CCParser$CaptionWindow;->windowStyle:I

    #@1d
    .line 1001
    return-void
.end method
