.class public final Landroid/window/InputTransferToken;
.super Ljava/lang/Object;
.source "InputTransferToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/InputTransferToken;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field public final blacklist mNativeObject:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 64
    nop

    .line 65
    const-class v0, Landroid/window/InputTransferToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 66
    invoke-static {}, Landroid/window/InputTransferToken;->nativeGetNativeInputTransferTokenFinalizer()J

    move-result-wide v1

    .line 65
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/window/InputTransferToken;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 119
    new-instance v0, Landroid/window/InputTransferToken$1;

    invoke-direct {v0}, Landroid/window/InputTransferToken$1;-><init>()V

    sput-object v0, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 89
    invoke-static {}, Landroid/window/InputTransferToken;->nativeCreate()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/window/InputTransferToken;-><init>(J)V

    .line 90
    return-void
.end method

.method private constructor blacklist <init>(J)V
    .registers 4
    .param p1, "nativeObject"    # J

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Landroid/window/InputTransferToken;->mNativeObject:J

    .line 75
    sget-object v0, Landroid/window/InputTransferToken;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 82
    invoke-static {p1}, Landroid/window/InputTransferToken;->nativeCreate(Landroid/os/IBinder;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/window/InputTransferToken;-><init>(J)V

    .line 83
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 100
    invoke-static {p1}, Landroid/window/InputTransferToken;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/window/InputTransferToken;-><init>(J)V

    .line 101
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/InputTransferToken-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/InputTransferToken;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static native blacklist nativeCreate()J
.end method

.method private static native blacklist nativeCreate(Landroid/os/IBinder;)J
.end method

.method private static native blacklist nativeEquals(JJ)Z
.end method

.method private static native blacklist nativeGetBinderToken(J)Landroid/os/IBinder;
.end method

.method private static native blacklist nativeGetBinderTokenRef(J)J
.end method

.method private static native blacklist nativeGetNativeInputTransferTokenFinalizer()J
.end method

.method private static native blacklist nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 143
    :cond_4
    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_11

    goto :goto_26

    .line 144
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/window/InputTransferToken;

    .line 145
    .local v1, "other":Landroid/window/InputTransferToken;
    iget-wide v2, v1, Landroid/window/InputTransferToken;->mNativeObject:J

    iget-wide v4, p0, Landroid/window/InputTransferToken;->mNativeObject:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    return v0

    .line 146
    :cond_1d
    iget-wide v2, p0, Landroid/window/InputTransferToken;->mNativeObject:J

    iget-wide v4, v1, Landroid/window/InputTransferToken;->mNativeObject:J

    invoke-static {v2, v3, v4, v5}, Landroid/window/InputTransferToken;->nativeEquals(JJ)Z

    move-result v0

    return v0

    .line 143
    .end local v1    # "other":Landroid/window/InputTransferToken;
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 3

    .line 96
    iget-wide v0, p0, Landroid/window/InputTransferToken;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/window/InputTransferToken;->nativeGetBinderToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 134
    iget-wide v0, p0, Landroid/window/InputTransferToken;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/window/InputTransferToken;->nativeGetBinderTokenRef(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    iget-wide v0, p0, Landroid/window/InputTransferToken;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/window/InputTransferToken;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 117
    return-void
.end method
