.class final Lcom/android/internal/widget/ActionBarView$SavedState$1;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView$SavedState;
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
        "Lcom/android/internal/widget/ActionBarView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/ActionBarView$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1375
    new-instance v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcel;Lcom/android/internal/widget/ActionBarView$SavedState;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1374
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/ActionBarView$SavedState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/widget/ActionBarView$SavedState;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1379
    new-array v0, p1, [Lcom/android/internal/widget/ActionBarView$SavedState;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1378
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$SavedState$1;->newArray(I)[Lcom/android/internal/widget/ActionBarView$SavedState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
