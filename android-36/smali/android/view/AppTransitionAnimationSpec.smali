.class public Landroid/view/AppTransitionAnimationSpec;
.super Ljava/lang/Object;
.source "AppTransitionAnimationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist buffer:Landroid/hardware/HardwareBuffer;

.field public final greylist-max-o rect:Landroid/graphics/Rect;

.field public final greylist-max-o taskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/view/AppTransitionAnimationSpec$1;

    invoke-direct {v0}, Landroid/view/AppTransitionAnimationSpec$1;-><init>()V

    sput-object v0, Landroid/view/AppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "buffer"    # Landroid/hardware/HardwareBuffer;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    .line 25
    iput-object p3, p0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 26
    iput-object p2, p0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/hardware/HardwareBuffer;

    .line 27
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    .line 31
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 32
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/hardware/HardwareBuffer;

    .line 33
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 42
    iget v0, p0, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 44
    iget-object v0, p0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 45
    return-void
.end method
