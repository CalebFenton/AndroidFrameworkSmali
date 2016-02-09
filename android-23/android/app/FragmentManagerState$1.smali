.class final Landroid/app/FragmentManagerState$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerState;
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
        "Landroid/app/FragmentManagerState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/FragmentManagerState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 388
    new-instance v0, Landroid/app/FragmentManagerState;

    #@2
    invoke-direct {v0, p1}, Landroid/app/FragmentManagerState;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 387
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/FragmentManagerState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/app/FragmentManagerState;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 392
    new-array v0, p1, [Landroid/app/FragmentManagerState;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 391
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerState$1;->newArray(I)[Landroid/app/FragmentManagerState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
