.class public Landroid/window/ScreenCapture$ScreenCaptureListener;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenCaptureListener"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ScreenCapture$ScreenCaptureListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field final blacklist mNativeObject:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 708
    nop

    .line 710
    const-class v0, Landroid/window/ScreenCapture$ScreenCaptureListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/window/ScreenCapture;->-$$Nest$smgetNativeListenerFinalizer()J

    move-result-wide v1

    .line 709
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/window/ScreenCapture$ScreenCaptureListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 744
    new-instance v0, Landroid/window/ScreenCapture$ScreenCaptureListener$1;

    invoke-direct {v0}, Landroid/window/ScreenCapture$ScreenCaptureListener$1;-><init>()V

    sput-object v0, Landroid/window/ScreenCapture$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 722
    invoke-static {p1}, Landroid/window/ScreenCapture;->-$$Nest$smnativeReadListenerFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/ScreenCapture$ScreenCaptureListener;->mNativeObject:J

    .line 723
    sget-object v0, Landroid/window/ScreenCapture$ScreenCaptureListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/window/ScreenCapture$ScreenCaptureListener;->mNativeObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    goto :goto_1b

    .line 725
    :cond_17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/window/ScreenCapture$ScreenCaptureListener;->mNativeObject:J

    .line 727
    :goto_1b
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/ScreenCapture-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$ScreenCaptureListener;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/ObjIntConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ObjIntConsumer<",
            "Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;",
            ">;)V"
        }
    .end annotation

    .line 715
    .local p1, "consumer":Ljava/util/function/ObjIntConsumer;, "Ljava/util/function/ObjIntConsumer<Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    invoke-static {p1}, Landroid/window/ScreenCapture;->-$$Nest$smnativeCreateScreenCaptureListener(Ljava/util/function/ObjIntConsumer;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/ScreenCapture$ScreenCaptureListener;->mNativeObject:J

    .line 717
    sget-object v0, Landroid/window/ScreenCapture$ScreenCaptureListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/window/ScreenCapture$ScreenCaptureListener;->mNativeObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 718
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 736
    iget-wide v0, p0, Landroid/window/ScreenCapture$ScreenCaptureListener;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 737
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_16

    .line 739
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 740
    iget-wide v0, p0, Landroid/window/ScreenCapture$ScreenCaptureListener;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/window/ScreenCapture;->-$$Nest$smnativeWriteListenerToParcel(JLandroid/os/Parcel;)V

    .line 742
    :goto_16
    return-void
.end method
