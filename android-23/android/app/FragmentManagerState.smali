.class final Landroid/app/FragmentManagerState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentManagerState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/FragmentManagerState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActive:[Landroid/app/FragmentState;

.field mAdded:[I

.field mBackStack:[Landroid/app/BackStackState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 386
    new-instance v0, Landroid/app/FragmentManagerState$1;

    #@2
    invoke-direct {v0}, Landroid/app/FragmentManagerState$1;-><init>()V

    #@5
    .line 385
    sput-object v0, Landroid/app/FragmentManagerState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 361
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 370
    sget-object v0, Landroid/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Landroid/app/FragmentState;

    #@b
    iput-object v0, p0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@d
    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/app/FragmentManagerState;->mAdded:[I

    #@13
    .line 372
    sget-object v0, Landroid/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, [Landroid/app/BackStackState;

    #@1b
    iput-object v0, p0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    #@1d
    .line 369
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 376
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 380
    iget-object v0, p0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@5
    .line 381
    iget-object v0, p0, Landroid/app/FragmentManagerState;->mAdded:[I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@a
    .line 382
    iget-object v0, p0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    #@c
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@f
    .line 379
    return-void
.end method
