.class Landroid/widget/YearPickerView;
.super Landroid/widget/ListView;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/YearPickerView$OnYearSelectedListener;,
        Landroid/widget/YearPickerView$YearAdapter;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/YearPickerView$YearAdapter;

.field private final mChildSize:I

.field private mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

.field private final mViewSize:I


# direct methods
.method static synthetic -get0(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$OnYearSelectedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/YearPickerView;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 41
    const v0, 0x1010074

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 45
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 51
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    #@5
    .line 52
    const/4 v2, -0x1

    #@6
    const/4 v3, -0x2

    #@7
    .line 51
    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    #@a
    .line 53
    .local v0, "frame":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@d
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v1

    #@11
    .line 56
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050156

    #@14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@17
    move-result v2

    #@18
    iput v2, p0, Landroid/widget/YearPickerView;->mViewSize:I

    #@1a
    .line 57
    const v2, 0x105013f

    #@1d
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@20
    move-result v2

    #@21
    iput v2, p0, Landroid/widget/YearPickerView;->mChildSize:I

    #@23
    .line 59
    new-instance v2, Landroid/widget/YearPickerView$1;

    #@25
    invoke-direct {v2, p0}, Landroid/widget/YearPickerView$1;-><init>(Landroid/widget/YearPickerView;)V

    #@28
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@2b
    .line 71
    new-instance v2, Landroid/widget/YearPickerView$YearAdapter;

    #@2d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Landroid/widget/YearPickerView$YearAdapter;-><init>(Landroid/content/Context;)V

    #@34
    iput-object v2, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    #@36
    .line 72
    iget-object v2, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    #@38
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@3b
    .line 48
    return-void
.end method


# virtual methods
.method public getFirstPositionOffset()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 227
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    .line 228
    .local v0, "firstChild":Landroid/view/View;
    if-nez v0, :cond_0

    #@7
    .line 229
    return v1

    #@8
    .line 231
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 237
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@4
    .line 240
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@7
    move-result v0

    #@8
    const/16 v1, 0x1000

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 241
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    #@f
    .line 242
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    #@12
    .line 236
    :cond_0
    return-void
.end method

.method public setOnYearSelectedListener(Landroid/widget/YearPickerView$OnYearSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/YearPickerView$OnYearSelectedListener;

    #@0
    .prologue
    .line 76
    iput-object p1, p0, Landroid/widget/YearPickerView;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    #@2
    .line 75
    return-void
.end method

.method public setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V
    .locals 1
    .param p1, "min"    # Landroid/icu/util/Calendar;
    .param p2, "max"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/YearPickerView$YearAdapter;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    #@5
    .line 103
    return-void
.end method

.method public setSelectionCentered(I)V
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 99
    iget v1, p0, Landroid/widget/YearPickerView;->mViewSize:I

    #@2
    div-int/lit8 v1, v1, 0x2

    #@4
    iget v2, p0, Landroid/widget/YearPickerView;->mChildSize:I

    #@6
    div-int/lit8 v2, v2, 0x2

    #@8
    sub-int v0, v1, v2

    #@a
    .line 100
    .local v0, "offset":I
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    #@d
    .line 98
    return-void
.end method

.method public setYear(I)V
    .locals 1
    .param p1, "year"    # I

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/YearPickerView$YearAdapter;->setSelection(I)Z

    #@5
    .line 87
    new-instance v0, Landroid/widget/YearPickerView$2;

    #@7
    invoke-direct {v0, p0, p1}, Landroid/widget/YearPickerView$2;-><init>(Landroid/widget/YearPickerView;I)V

    #@a
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@d
    .line 84
    return-void
.end method
