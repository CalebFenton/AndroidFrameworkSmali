.class Lcom/android/internal/widget/ActionBarView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/widget/ActionBarView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expandedMenuItemId:I

.field isOverflowOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1373
    new-instance v0, Lcom/android/internal/widget/ActionBarView$SavedState$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/widget/ActionBarView$SavedState$1;-><init>()V

    #@5
    .line 1372
    sput-object v0, Lcom/android/internal/widget/ActionBarView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1351
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1360
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@4
    .line 1361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    #@a
    .line 1362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    #@13
    .line 1359
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/widget/ActionBarView$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 1356
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 1355
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1367
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 1368
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 1369
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1366
    return-void

    #@11
    .line 1369
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method
