.class Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCurrentView:I

.field private final greylist-max-o mListPosition:I

.field private final greylist-max-o mListPositionOffset:I

.field private final greylist-max-o mMaxDate:J

.field private final greylist-max-o mMinDate:J

.field private final greylist-max-o mSelectedDay:I

.field private final greylist-max-o mSelectedMonth:I

.field private final greylist-max-o mSelectedYear:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 794
    new-instance v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState$1;

    invoke-direct {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 736
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    .line 745
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/DatePicker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcelable;IIIJJ)V
    .registers 21
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J

    .line 713
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v11}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    .line 714
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcelable;IIIJJIII)V
    .registers 12
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J
    .param p9, "currentView"    # I
    .param p10, "listPosition"    # I
    .param p11, "listPositionOffset"    # I

    .line 721
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 722
    iput p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 723
    iput p3, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 724
    iput p4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 725
    iput-wide p5, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    .line 726
    iput-wide p7, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    .line 727
    iput p9, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    .line 728
    iput p10, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    .line 729
    iput p11, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    .line 730
    return-void
.end method


# virtual methods
.method public greylist-max-o getCurrentView()I
    .registers 2

    .line 781
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    return v0
.end method

.method public greylist-max-o getListPosition()I
    .registers 2

    .line 785
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    return v0
.end method

.method public greylist-max-o getListPositionOffset()I
    .registers 2

    .line 789
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    return v0
.end method

.method public greylist-max-o getMaxDate()J
    .registers 3

    .line 777
    iget-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    return-wide v0
.end method

.method public greylist-max-o getMinDate()J
    .registers 3

    .line 773
    iget-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    return-wide v0
.end method

.method public greylist-max-o getSelectedDay()I
    .registers 2

    .line 761
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    return v0
.end method

.method public greylist-max-o getSelectedMonth()I
    .registers 2

    .line 765
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    return v0
.end method

.method public greylist-max-o getSelectedYear()I
    .registers 2

    .line 769
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 749
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 750
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    iget-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 754
    iget-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 755
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    return-void
.end method
