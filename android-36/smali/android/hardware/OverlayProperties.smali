.class public final Landroid/hardware/OverlayProperties;
.super Ljava/lang/Object;
.source "OverlayProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/OverlayProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDefaultOverlayProperties:Landroid/hardware/OverlayProperties;

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mCloser:Ljava/lang/Runnable;

.field private blacklist mLutProperties:[Landroid/hardware/LutProperties;

.field private blacklist mNativeObject:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnReadOverlayPropertiesFromParcel(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/hardware/OverlayProperties;->nReadOverlayPropertiesFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 44
    nop

    .line 45
    const-class v0, Landroid/hardware/OverlayProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 46
    invoke-static {}, Landroid/hardware/OverlayProperties;->nGetDestructor()J

    move-result-wide v1

    .line 45
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/hardware/OverlayProperties;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 141
    new-instance v0, Landroid/hardware/OverlayProperties$1;

    invoke-direct {v0}, Landroid/hardware/OverlayProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/OverlayProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .registers 5
    .param p1, "nativeObject"    # J

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_11

    .line 58
    sget-object v0, Landroid/hardware/OverlayProperties;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/OverlayProperties;->mCloser:Ljava/lang/Runnable;

    .line 60
    :cond_11
    iput-wide p1, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/hardware/OverlayProperties-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/OverlayProperties;-><init>(J)V

    return-void
.end method

.method public static blacklist getDefault()Landroid/hardware/OverlayProperties;
    .registers 3

    .line 69
    sget-object v0, Landroid/hardware/OverlayProperties;->sDefaultOverlayProperties:Landroid/hardware/OverlayProperties;

    if-nez v0, :cond_f

    .line 70
    new-instance v0, Landroid/hardware/OverlayProperties;

    invoke-static {}, Landroid/hardware/OverlayProperties;->nCreateDefault()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/hardware/OverlayProperties;-><init>(J)V

    sput-object v0, Landroid/hardware/OverlayProperties;->sDefaultOverlayProperties:Landroid/hardware/OverlayProperties;

    .line 72
    :cond_f
    sget-object v0, Landroid/hardware/OverlayProperties;->sDefaultOverlayProperties:Landroid/hardware/OverlayProperties;

    return-object v0
.end method

.method private static native blacklist nCreateDefault()J
.end method

.method private static native blacklist nGetDestructor()J
.end method

.method private static native blacklist nGetLutProperties(J)[Landroid/hardware/LutProperties;
.end method

.method private static native blacklist nIsCombinationSupported(JII)Z
.end method

.method private static native blacklist nReadOverlayPropertiesFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nSupportMixedColorSpaces(J)Z
.end method

.method private static native blacklist nWriteOverlayPropertiesToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLutProperties()[Landroid/hardware/LutProperties;
    .registers 5

    .line 82
    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_a
    iget-object v0, p0, Landroid/hardware/OverlayProperties;->mLutProperties:[Landroid/hardware/LutProperties;

    if-nez v0, :cond_16

    .line 86
    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/OverlayProperties;->nGetLutProperties(J)[Landroid/hardware/LutProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/OverlayProperties;->mLutProperties:[Landroid/hardware/LutProperties;

    .line 88
    :cond_16
    iget-object v0, p0, Landroid/hardware/OverlayProperties;->mLutProperties:[Landroid/hardware/LutProperties;

    return-object v0
.end method

.method public whitelist isCombinationSupported(II)Z
    .registers 7
    .param p1, "dataspace"    # I
    .param p2, "format"    # I

    .line 101
    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 102
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_a
    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/hardware/OverlayProperties;->nIsCombinationSupported(JII)Z

    move-result v0

    return v0
.end method

.method public whitelist isMixedColorSpacesSupported()Z
    .registers 5

    .line 117
    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 118
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_a
    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/OverlayProperties;->nSupportMixedColorSpaces(J)Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void

    .line 136
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-wide v0, p0, Landroid/hardware/OverlayProperties;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/hardware/OverlayProperties;->nWriteOverlayPropertiesToParcel(JLandroid/os/Parcel;)V

    .line 138
    return-void
.end method
