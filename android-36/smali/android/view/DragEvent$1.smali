.class Landroid/view/DragEvent$1;
.super Ljava/lang/Object;
.source "DragEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DragEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/DragEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/DragEvent;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 633
    invoke-static {}, Landroid/view/DragEvent;->obtain()Landroid/view/DragEvent;

    move-result-object v0

    .line 634
    .local v0, "event":Landroid/view/DragEvent;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/DragEvent;->mAction:I

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/view/DragEvent;->mX:F

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/view/DragEvent;->mY:F

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/view/DragEvent;->-$$Nest$fputmOffsetX(Landroid/view/DragEvent;F)V

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/view/DragEvent;->-$$Nest$fputmOffsetY(Landroid/view/DragEvent;F)V

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/DragEvent;->-$$Nest$fputmFlags(Landroid/view/DragEvent;I)V

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    iput-boolean v1, v0, Landroid/view/DragEvent;->mDragResult:Z

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_46

    .line 642
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, v0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 644
    :cond_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_56

    .line 645
    sget-object v1, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipDescription;

    iput-object v1, v0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 647
    :cond_56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_70

    .line 648
    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-static {v0, v1}, Landroid/view/DragEvent;->-$$Nest$fputmDragSurface(Landroid/view/DragEvent;Landroid/view/SurfaceControl;)V

    .line 649
    invoke-static {v0}, Landroid/view/DragEvent;->-$$Nest$fgetmDragSurface(Landroid/view/DragEvent;)Landroid/view/SurfaceControl;

    move-result-object v1

    const-string v2, "DragEvent"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 651
    :cond_70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_81

    .line 652
    nop

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v1

    iput-object v1, v0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    .line 655
    :cond_81
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 631
    invoke-virtual {p0, p1}, Landroid/view/DragEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/DragEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/DragEvent;
    .registers 3
    .param p1, "size"    # I

    .line 659
    new-array v0, p1, [Landroid/view/DragEvent;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 631
    invoke-virtual {p0, p1}, Landroid/view/DragEvent$1;->newArray(I)[Landroid/view/DragEvent;

    move-result-object p1

    return-object p1
.end method
