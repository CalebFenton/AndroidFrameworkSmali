.class final Landroid/widget/AbsListView$SavedState$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/widget/AbsListView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/AbsListView$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1756
    new-instance v0, Landroid/widget/AbsListView$SavedState;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/AbsListView$SavedState;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1755
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/AbsListView$SavedState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/widget/AbsListView$SavedState;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1761
    new-array v0, p1, [Landroid/widget/AbsListView$SavedState;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1760
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$SavedState$1;->newArray(I)[Landroid/widget/AbsListView$SavedState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
