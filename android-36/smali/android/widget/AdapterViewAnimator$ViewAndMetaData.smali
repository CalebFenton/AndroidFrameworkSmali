.class Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewAndMetaData"
.end annotation


# instance fields
.field greylist-max-o adapterPosition:I

.field greylist-max-o itemId:J

.field greylist-max-o relativeIndex:I

.field greylist-max-o view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V
    .registers 7
    .param p1, "this$0"    # Landroid/widget/AdapterViewAnimator;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "relativeIndex"    # I
    .param p4, "adapterPosition"    # I
    .param p5, "itemId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p2, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 228
    iput p3, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 229
    iput p4, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->adapterPosition:I

    .line 230
    iput-wide p5, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->itemId:J

    .line 231
    return-void
.end method
