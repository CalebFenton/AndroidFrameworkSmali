.class Lcom/android/internal/view/menu/IconMenuView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "IconMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/IconMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/view/menu/IconMenuView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist focusedPosition:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 738
    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/view/menu/IconMenuView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 728
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    .line 730
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/view/menu/IconMenuView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcelable;I)V
    .registers 3
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "focusedPosition"    # I

    .line 719
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 720
    iput p2, p0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    .line 721
    return-void
.end method


# virtual methods
.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 734
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 735
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    return-void
.end method
