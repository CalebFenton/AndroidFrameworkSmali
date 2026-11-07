.class public final Landroid/window/DisplayAreaAppearedInfo;
.super Ljava/lang/Object;
.source "DisplayAreaAppearedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/DisplayAreaAppearedInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayAreaInfo:Landroid/window/DisplayAreaInfo;

.field private final blacklist mLeash:Landroid/view/SurfaceControl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/window/DisplayAreaAppearedInfo$1;

    invoke-direct {v0}, Landroid/window/DisplayAreaAppearedInfo$1;-><init>()V

    sput-object v0, Landroid/window/DisplayAreaAppearedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "displayAreaInfo"    # Landroid/window/DisplayAreaInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/window/DisplayAreaAppearedInfo;->mDisplayAreaInfo:Landroid/window/DisplayAreaInfo;

    .line 59
    iput-object p2, p0, Landroid/window/DisplayAreaAppearedInfo;->mLeash:Landroid/view/SurfaceControl;

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/window/DisplayAreaAppearedInfo;->mDisplayAreaInfo:Landroid/window/DisplayAreaInfo;

    return-object v0
.end method

.method public blacklist getLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/window/DisplayAreaAppearedInfo;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    iget-object v0, p0, Landroid/window/DisplayAreaAppearedInfo;->mDisplayAreaInfo:Landroid/window/DisplayAreaInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 65
    iget-object v0, p0, Landroid/window/DisplayAreaAppearedInfo;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 66
    return-void
.end method
