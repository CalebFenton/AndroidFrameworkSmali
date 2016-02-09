.class final Landroid/view/AbsSavedState$2;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AbsSavedState;
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
        "Landroid/view/AbsSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/AbsSavedState;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 78
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@4
    move-result-object v0

    #@5
    .line 79
    .local v0, "superState":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    #@7
    .line 80
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "superState must be null"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 82
    :cond_0
    sget-object v1, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    #@12
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;)Landroid/view/AbsSavedState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/AbsSavedState;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 86
    new-array v0, p1, [Landroid/view/AbsSavedState;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/view/AbsSavedState$2;->newArray(I)[Landroid/view/AbsSavedState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
