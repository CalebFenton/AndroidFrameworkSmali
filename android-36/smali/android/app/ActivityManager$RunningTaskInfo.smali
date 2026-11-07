.class public Landroid/app/ActivityManager$RunningTaskInfo;
.super Landroid/app/TaskInfo;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningTaskInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist description:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist id:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist numRunning:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist thumbnail:Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2936
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 2913
    invoke-direct {p0}, Landroid/app/TaskInfo;-><init>()V

    .line 2914
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2916
    invoke-direct {p0}, Landroid/app/TaskInfo;-><init>()V

    .line 2917
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 2918
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2922
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2926
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 2927
    invoke-super {p0, p1}, Landroid/app/TaskInfo;->readTaskFromParcel(Landroid/os/Parcel;)V

    .line 2928
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2932
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2933
    invoke-super {p0, p1, p2}, Landroid/app/TaskInfo;->writeTaskToParcel(Landroid/os/Parcel;I)V

    .line 2934
    return-void
.end method
