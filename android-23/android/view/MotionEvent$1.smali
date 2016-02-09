.class final Landroid/view/MotionEvent$1;
.super Ljava/lang/Object;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
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
        "Landroid/view/MotionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    .line 3271
    invoke-static {p1}, Landroid/view/MotionEvent;->createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 3269
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/MotionEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/MotionEvent;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 3275
    new-array v0, p1, [Landroid/view/MotionEvent;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 3274
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$1;->newArray(I)[Landroid/view/MotionEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
