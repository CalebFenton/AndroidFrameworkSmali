.class public Landroid/media/Cea708CCParser$CaptionPenAttr;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionPenAttr"
.end annotation


# static fields
.field public static final greylist-max-o OFFSET_NORMAL:I = 0x1

.field public static final greylist-max-o OFFSET_SUBSCRIPT:I = 0x0

.field public static final greylist-max-o OFFSET_SUPERSCRIPT:I = 0x2

.field public static final greylist-max-o PEN_SIZE_LARGE:I = 0x2

.field public static final greylist-max-o PEN_SIZE_SMALL:I = 0x0

.field public static final greylist-max-o PEN_SIZE_STANDARD:I = 0x1


# instance fields
.field public final greylist-max-o edgeType:I

.field public final greylist-max-o fontTag:I

.field public final greylist-max-o italic:Z

.field public final greylist-max-o penOffset:I

.field public final greylist-max-o penSize:I

.field public final greylist-max-o textTag:I

.field public final greylist-max-o underline:Z


# direct methods
.method public constructor greylist-max-o <init>(IIIIIZZ)V
    .registers 8
    .param p1, "penSize"    # I
    .param p2, "penOffset"    # I
    .param p3, "textTag"    # I
    .param p4, "fontTag"    # I
    .param p5, "edgeType"    # I
    .param p6, "underline"    # Z
    .param p7, "italic"    # Z

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput p1, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->penSize:I

    .line 901
    iput p2, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->penOffset:I

    .line 902
    iput p3, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->textTag:I

    .line 903
    iput p4, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->fontTag:I

    .line 904
    iput p5, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->edgeType:I

    .line 905
    iput-boolean p6, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->underline:Z

    .line 906
    iput-boolean p7, p0, Landroid/media/Cea708CCParser$CaptionPenAttr;->italic:Z

    .line 907
    return-void
.end method
