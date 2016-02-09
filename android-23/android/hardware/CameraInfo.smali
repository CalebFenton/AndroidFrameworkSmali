.class public Landroid/hardware/CameraInfo;
.super Ljava/lang/Object;
.source "CameraInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/CameraInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/CameraInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public info:Landroid/hardware/Camera$CameraInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    new-instance v0, Landroid/hardware/CameraInfo$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/CameraInfo$1;-><init>()V

    #@5
    .line 48
    sput-object v0, Landroid/hardware/CameraInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    #@5
    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    #@8
    iput-object v0, p0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    #@a
    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 34
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    #@2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v1

    #@6
    iput v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    #@8
    .line 45
    iget-object v0, p0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    #@a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v1

    #@e
    iput v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    #@10
    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    #@2
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 40
    iget-object v0, p0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    #@9
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 38
    return-void
.end method
