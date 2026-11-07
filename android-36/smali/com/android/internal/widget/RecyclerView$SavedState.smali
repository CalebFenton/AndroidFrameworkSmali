.class public Lcom/android/internal/widget/RecyclerView$SavedState;
.super Landroid/view/AbsSavedState;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/RecyclerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mLayoutState:Landroid/os/Parcelable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11242
    new-instance v0, Lcom/android/internal/widget/RecyclerView$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/RecyclerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 11221
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcel;)V

    .line 11222
    const-class v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 11223
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 11229
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 11230
    return-void
.end method


# virtual methods
.method blacklist copyFrom(Lcom/android/internal/widget/RecyclerView$SavedState;)V
    .registers 3
    .param p1, "other"    # Lcom/android/internal/widget/RecyclerView$SavedState;

    .line 11239
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 11240
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 11234
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 11235
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 11236
    return-void
.end method
