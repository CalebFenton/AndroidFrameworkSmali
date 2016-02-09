.class Landroid/widget/DatePickerCalendarDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePickerCalendarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePickerCalendarDelegate$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/DatePickerCalendarDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentView:I

.field private final mListPosition:I

.field private final mListPositionOffset:I

.field private final mMaxDate:J

.field private final mMinDate:J

.field private final mSelectedDay:I

.field private final mSelectedMonth:I

.field private final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 695
    new-instance v0, Landroid/widget/DatePickerCalendarDelegate$SavedState$1;

    #@2
    invoke-direct {v0}, Landroid/widget/DatePickerCalendarDelegate$SavedState$1;-><init>()V

    #@5
    sput-object v0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 606
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 637
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedYear:I

    #@9
    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedMonth:I

    #@f
    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedDay:I

    #@15
    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMinDate:J

    #@1b
    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1e
    move-result-wide v0

    #@1f
    iput-wide v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMaxDate:J

    #@21
    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mCurrentView:I

    #@27
    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPosition:I

    #@2d
    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPositionOffset:I

    #@33
    .line 636
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/DatePickerCalendarDelegate$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIJJIII)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J
    .param p9, "currentView"    # I
    .param p10, "listPosition"    # I
    .param p11, "listPositionOffset"    # I

    #@0
    .prologue
    .line 622
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 623
    iput p2, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedYear:I

    #@5
    .line 624
    iput p3, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedMonth:I

    #@7
    .line 625
    iput p4, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedDay:I

    #@9
    .line 626
    iput-wide p5, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMinDate:J

    #@b
    .line 627
    iput-wide p7, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMaxDate:J

    #@d
    .line 628
    iput p9, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mCurrentView:I

    #@f
    .line 629
    iput p10, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPosition:I

    #@11
    .line 630
    iput p11, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPositionOffset:I

    #@13
    .line 621
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIJJIIILandroid/widget/DatePickerCalendarDelegate$SavedState;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J
    .param p9, "currentView"    # I
    .param p10, "listPosition"    # I
    .param p11, "listPositionOffset"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p11}, Landroid/widget/DatePickerCalendarDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    #@3
    return-void
.end method


# virtual methods
.method public getCurrentView()I
    .locals 1

    #@0
    .prologue
    .line 682
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mCurrentView:I

    #@2
    return v0
.end method

.method public getListPosition()I
    .locals 1

    #@0
    .prologue
    .line 686
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPosition:I

    #@2
    return v0
.end method

.method public getListPositionOffset()I
    .locals 1

    #@0
    .prologue
    .line 690
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPositionOffset:I

    #@2
    return v0
.end method

.method public getMaxDate()J
    .locals 2

    #@0
    .prologue
    .line 678
    iget-wide v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMaxDate:J

    #@2
    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    #@0
    .prologue
    .line 674
    iget-wide v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMinDate:J

    #@2
    return-wide v0
.end method

.method public getSelectedDay()I
    .locals 1

    #@0
    .prologue
    .line 662
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedDay:I

    #@2
    return v0
.end method

.method public getSelectedMonth()I
    .locals 1

    #@0
    .prologue
    .line 666
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedMonth:I

    #@2
    return v0
.end method

.method public getSelectedYear()I
    .locals 1

    #@0
    .prologue
    .line 670
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedYear:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 650
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 651
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedYear:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 652
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedMonth:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 653
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedDay:I

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 654
    iget-wide v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMinDate:J

    #@14
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 655
    iget-wide v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMaxDate:J

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1c
    .line 656
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mCurrentView:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 657
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPosition:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 658
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPositionOffset:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 649
    return-void
.end method
