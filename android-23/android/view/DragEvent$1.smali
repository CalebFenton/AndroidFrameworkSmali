.class final Landroid/view/DragEvent$1;
.super Ljava/lang/Object;
.source "DragEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DragEvent;
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
        "Landroid/view/DragEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/DragEvent;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 488
    invoke-static {}, Landroid/view/DragEvent;->obtain()Landroid/view/DragEvent;

    #@4
    move-result-object v0

    #@5
    .line 489
    .local v0, "event":Landroid/view/DragEvent;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v2

    #@9
    iput v2, v0, Landroid/view/DragEvent;->mAction:I

    #@b
    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@e
    move-result v2

    #@f
    iput v2, v0, Landroid/view/DragEvent;->mX:F

    #@11
    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@14
    move-result v2

    #@15
    iput v2, v0, Landroid/view/DragEvent;->mY:F

    #@17
    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    const/4 v1, 0x1

    #@1e
    :cond_0
    iput-boolean v1, v0, Landroid/view/DragEvent;->mDragResult:Z

    #@20
    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 494
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Landroid/content/ClipData;

    #@2e
    iput-object v1, v0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    #@30
    .line 496
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_2

    #@36
    .line 497
    sget-object v1, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Landroid/content/ClipDescription;

    #@3e
    iput-object v1, v0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    #@40
    .line 499
    :cond_2
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 487
    invoke-virtual {p0, p1}, Landroid/view/DragEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/DragEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/DragEvent;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 503
    new-array v0, p1, [Landroid/view/DragEvent;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 502
    invoke-virtual {p0, p1}, Landroid/view/DragEvent$1;->newArray(I)[Landroid/view/DragEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
