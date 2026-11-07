.class public Landroid/media/Cea708CCParser$CaptionWindowAttr;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionWindowAttr"
.end annotation


# instance fields
.field public final greylist-max-o borderColor:Landroid/media/Cea708CCParser$CaptionColor;

.field public final greylist-max-o borderType:I

.field public final greylist-max-o displayEffect:I

.field public final greylist-max-o effectDirection:I

.field public final greylist-max-o effectSpeed:I

.field public final greylist-max-o fillColor:Landroid/media/Cea708CCParser$CaptionColor;

.field public final greylist-max-o justify:I

.field public final greylist-max-o printDirection:I

.field public final greylist-max-o scrollDirection:I

.field public final greylist-max-o wordWrap:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;IZIIIIII)V
    .registers 11
    .param p1, "fillColor"    # Landroid/media/Cea708CCParser$CaptionColor;
    .param p2, "borderColor"    # Landroid/media/Cea708CCParser$CaptionColor;
    .param p3, "borderType"    # I
    .param p4, "wordWrap"    # Z
    .param p5, "printDirection"    # I
    .param p6, "scrollDirection"    # I
    .param p7, "justify"    # I
    .param p8, "effectDirection"    # I
    .param p9, "effectSpeed"    # I
    .param p10, "displayEffect"    # I

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput-object p1, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->fillColor:Landroid/media/Cea708CCParser$CaptionColor;

    .line 966
    iput-object p2, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->borderColor:Landroid/media/Cea708CCParser$CaptionColor;

    .line 967
    iput p3, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->borderType:I

    .line 968
    iput-boolean p4, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->wordWrap:Z

    .line 969
    iput p5, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->printDirection:I

    .line 970
    iput p6, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->scrollDirection:I

    .line 971
    iput p7, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->justify:I

    .line 972
    iput p8, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->effectDirection:I

    .line 973
    iput p9, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->effectSpeed:I

    .line 974
    iput p10, p0, Landroid/media/Cea708CCParser$CaptionWindowAttr;->displayEffect:I

    .line 975
    return-void
.end method
