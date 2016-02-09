.class Landroid/widget/Toolbar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toolbar$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/Toolbar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public expandedMenuItemId:I

.field public isOverflowOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1918
    new-instance v0, Landroid/widget/Toolbar$SavedState$1;

    #@2
    invoke-direct {v0}, Landroid/widget/Toolbar$SavedState$1;-><init>()V

    #@5
    sput-object v0, Landroid/widget/Toolbar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1897
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1902
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@4
    .line 1903
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    #@a
    .line 1904
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    iput-boolean v0, p0, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    #@13
    .line 1901
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 1908
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 1907
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1913
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 1914
    iget v0, p0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 1915
    iget-boolean v0, p0, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1912
    return-void

    #@11
    .line 1915
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method
