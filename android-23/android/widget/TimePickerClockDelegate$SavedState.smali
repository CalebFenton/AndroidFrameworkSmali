.class Landroid/widget/TimePickerClockDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerClockDelegate$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/TimePickerClockDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentItemShowing:I

.field private final mHour:I

.field private final mInKbMode:Z

.field private final mIs24HourMode:Z

.field private final mMinute:I

.field private final mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 664
    new-instance v0, Landroid/widget/TimePickerClockDelegate$SavedState$1;

    #@2
    invoke-direct {v0}, Landroid/widget/TimePickerClockDelegate$SavedState$1;-><init>()V

    #@5
    sput-object v0, Landroid/widget/TimePickerClockDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 597
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 619
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@5
    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    #@b
    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    #@11
    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    if-ne v0, v1, :cond_0

    #@17
    move v0, v1

    #@18
    :goto_0
    iput-boolean v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mIs24HourMode:Z

    #@1a
    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    if-ne v0, v1, :cond_1

    #@20
    :goto_1
    iput-boolean v1, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mInKbMode:Z

    #@22
    .line 624
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getClass()Ljava/lang/Class;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mTypedTimes:Ljava/util/ArrayList;

    #@30
    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    iput v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mCurrentItemShowing:I

    #@36
    .line 618
    return-void

    #@37
    :cond_0
    move v0, v2

    #@38
    .line 622
    goto :goto_0

    #@39
    :cond_1
    move v1, v2

    #@3a
    .line 623
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/TimePickerClockDelegate$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;I)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "is24HourMode"    # Z
    .param p5, "isKbMode"    # Z
    .param p7, "currentItemShowing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "IIZZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 609
    .local p6, "typedTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 610
    iput p2, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    #@5
    .line 611
    iput p3, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    #@7
    .line 612
    iput-boolean p4, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mIs24HourMode:Z

    #@9
    .line 613
    iput-boolean p5, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mInKbMode:Z

    #@b
    .line 614
    iput-object p6, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mTypedTimes:Ljava/util/ArrayList;

    #@d
    .line 615
    iput p7, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mCurrentItemShowing:I

    #@f
    .line 608
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;ILandroid/widget/TimePickerClockDelegate$SavedState;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "is24HourMode"    # Z
    .param p5, "isKbMode"    # Z
    .param p6, "typedTimes"    # Ljava/util/ArrayList;
    .param p7, "currentItemShowing"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/widget/TimePickerClockDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;I)V

    #@3
    return-void
.end method


# virtual methods
.method public getCurrentItemShowing()I
    .locals 1

    #@0
    .prologue
    .line 649
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mCurrentItemShowing:I

    #@2
    return v0
.end method

.method public getHour()I
    .locals 1

    #@0
    .prologue
    .line 629
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    #@2
    return v0
.end method

.method public getMinute()I
    .locals 1

    #@0
    .prologue
    .line 633
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    #@2
    return v0
.end method

.method public getTypesTimes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 645
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mTypedTimes:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public inKbMode()Z
    .locals 1

    #@0
    .prologue
    .line 641
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mInKbMode:Z

    #@2
    return v0
.end method

.method public is24HourMode()Z
    .locals 1

    #@0
    .prologue
    .line 637
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mIs24HourMode:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 654
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 655
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 656
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 657
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mIs24HourMode:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    move v0, v1

    #@14
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 658
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mInKbMode:Z

    #@19
    if-eqz v0, :cond_1

    #@1b
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 659
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mTypedTimes:Ljava/util/ArrayList;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@23
    .line 660
    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mCurrentItemShowing:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 653
    return-void

    #@29
    :cond_0
    move v0, v2

    #@2a
    .line 657
    goto :goto_0

    #@2b
    :cond_1
    move v1, v2

    #@2c
    .line 658
    goto :goto_1
.end method
