.class Landroid/widget/DayPickerPagerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final calendar:Landroid/widget/SimpleMonthView;

.field public final container:Landroid/view/View;

.field public final position:I


# direct methods
.method public constructor <init>(ILandroid/view/View;Landroid/widget/SimpleMonthView;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/View;
    .param p3, "calendar"    # Landroid/widget/SimpleMonthView;

    #@0
    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 309
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    #@5
    .line 310
    iput-object p2, p0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    #@7
    .line 311
    iput-object p3, p0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    #@9
    .line 308
    return-void
.end method
