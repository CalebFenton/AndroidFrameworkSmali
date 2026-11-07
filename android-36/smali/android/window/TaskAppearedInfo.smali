.class public final Landroid/window/TaskAppearedInfo;
.super Ljava/lang/Object;
.source "TaskAppearedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLeash:Landroid/view/SurfaceControl;

.field private final blacklist mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/window/TaskAppearedInfo$1;

    invoke-direct {v0}, Landroid/window/TaskAppearedInfo$1;-><init>()V

    sput-object v0, Landroid/window/TaskAppearedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/window/TaskAppearedInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 57
    iput-object p2, p0, Landroid/window/TaskAppearedInfo;->mLeash:Landroid/view/SurfaceControl;

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/window/TaskAppearedInfo;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/window/TaskAppearedInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    iget-object v0, p0, Landroid/window/TaskAppearedInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 63
    iget-object v0, p0, Landroid/window/TaskAppearedInfo;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 64
    return-void
.end method
