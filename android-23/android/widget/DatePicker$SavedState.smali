.class Landroid/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static synthetic -get0(Landroid/widget/DatePicker$SavedState;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/DatePicker$SavedState;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/DatePicker$SavedState;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1189
    new-instance v0, Landroid/widget/DatePicker$SavedState$1;

    #@2
    invoke-direct {v0}, Landroid/widget/DatePicker$SavedState$1;-><init>()V

    #@5
    sput-object v0, Landroid/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1151
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1173
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 1174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    #@9
    .line 1175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    #@f
    .line 1176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    #@15
    .line 1172
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/DatePicker$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    #@0
    .prologue
    .line 1163
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 1164
    iput p2, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    #@5
    .line 1165
    iput p3, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    #@7
    .line 1166
    iput p4, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    #@9
    .line 1162
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$SavedState;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    #@3
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1181
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 1182
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mYear:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 1183
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mMonth:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 1184
    iget v0, p0, Landroid/widget/DatePicker$SavedState;->mDay:I

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 1180
    return-void
.end method
