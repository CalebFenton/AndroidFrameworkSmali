.class Landroid/widget/TimePickerSpinnerDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerSpinnerDelegate$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/TimePickerSpinnerDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 581
    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState$1;

    #@2
    invoke-direct {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState$1;-><init>()V

    #@5
    sput-object v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 549
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 560
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->mHour:I

    #@9
    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->mMinute:I

    #@f
    .line 559
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/TimePickerSpinnerDelegate$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    #@0
    .prologue
    .line 554
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 555
    iput p2, p0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->mHour:I

    #@5
    .line 556
    iput p3, p0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->mMinute:I

    #@7
    .line 553
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILandroid/widget/TimePickerSpinnerDelegate$SavedState;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;II)V

    #@3
    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    #@0
    .prologue
    .line 566
    iget v0, p0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->mHour:I

    #@2
    return v0
.end method

.method public getMinute()I
    .locals 1

    #@0
    .prologue
    .line 570
    iget v0, p0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->mMinute:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 575
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 576
    iget v0, p0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->mHour:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 577
    iget v0, p0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->mMinute:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 574
    return-void
.end method
