.class public final Landroid/view/InputChannel;
.super Ljava/lang/Object;
.source "InputChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InputChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputChannel"

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private greylist-max-r mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 39
    nop

    .line 41
    const-class v0, Landroid/view/InputChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 42
    invoke-static {}, Landroid/view/InputChannel;->nativeGetFinalizer()J

    move-result-wide v1

    .line 40
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/InputChannel;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 45
    new-instance v0, Landroid/view/InputChannel$1;

    invoke-direct {v0}, Landroid/view/InputChannel$1;-><init>()V

    sput-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private native blacklist nativeDispose(J)V
.end method

.method private native blacklist nativeDup(J)J
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method

.method private native blacklist nativeGetName(J)Ljava/lang/String;
.end method

.method private native blacklist nativeGetToken(J)Landroid/os/IBinder;
.end method

.method private static native blacklist nativeOpenInputChannelPair(Ljava/lang/String;)[J
.end method

.method private native blacklist nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private native blacklist nativeWriteToParcel(Landroid/os/Parcel;J)V
.end method

.method public static greylist-max-o openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;

    .line 110
    if-eqz p0, :cond_1e

    .line 117
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/InputChannel;

    .line 118
    .local v1, "channels":[Landroid/view/InputChannel;
    invoke-static {p0}, Landroid/view/InputChannel;->nativeOpenInputChannelPair(Ljava/lang/String;)[J

    move-result-object v2

    .line 119
    .local v2, "nativeChannels":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_1d

    .line 120
    new-instance v4, Landroid/view/InputChannel;

    invoke-direct {v4}, Landroid/view/InputChannel;-><init>()V

    aput-object v4, v1, v3

    .line 121
    aget-object v4, v1, v3

    aget-wide v5, v2, v3

    invoke-direct {v4, v5, v6}, Landroid/view/InputChannel;->setNativeInputChannel(J)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 123
    .end local v3    # "i":I
    :cond_1d
    return-object v1

    .line 111
    .end local v1    # "channels":[Landroid/view/InputChannel;
    .end local v2    # "nativeChannels":[J
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setNativeInputChannel(J)V
    .registers 7
    .param p1, "nativeChannel"    # J

    .line 88
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1c

    .line 91
    iget-wide v2, p0, Landroid/view/InputChannel;->mPtr:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_14

    .line 97
    sget-object v0, Landroid/view/InputChannel;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 98
    iput-wide p1, p0, Landroid/view/InputChannel;->mPtr:J

    .line 99
    return-void

    .line 92
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Already has native input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to set native input channel to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist copyTo(Landroid/view/InputChannel;)V
    .registers 6
    .param p1, "outParameter"    # Landroid/view/InputChannel;

    .line 157
    if-eqz p1, :cond_1c

    .line 160
    iget-wide v0, p1, Landroid/view/InputChannel;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 163
    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->nativeDup(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Landroid/view/InputChannel;->setNativeInputChannel(J)V

    .line 164
    return-void

    .line 161
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Other object already has a native input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outParameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o dispose()V
    .registers 3

    .line 141
    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->nativeDispose(J)V

    .line 142
    return-void
.end method

.method public greylist-max-o dup()Landroid/view/InputChannel;
    .registers 4

    .line 170
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    .line 171
    .local v0, "target":Landroid/view/InputChannel;
    iget-wide v1, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v1, v2}, Landroid/view/InputChannel;->nativeDup(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/view/InputChannel;->setNativeInputChannel(J)V

    .line 172
    return-object v0
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .registers 3

    .line 131
    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->nativeGetName(J)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_d

    :cond_a
    const-string/jumbo v1, "uninitialized"

    :goto_d
    return-object v1
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 3

    .line 209
    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->nativeGetToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 181
    if-eqz p1, :cond_10

    .line 184
    invoke-direct {p0, p1}, Landroid/view/InputChannel;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    .line 185
    .local v0, "nativeIn":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 186
    invoke-direct {p0, v0, v1}, Landroid/view/InputChannel;->setNativeInputChannel(J)V

    .line 188
    :cond_f
    return-void

    .line 182
    .end local v0    # "nativeIn":J
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist release()V
    .registers 1

    .line 149
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 205
    invoke-virtual {p0}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 192
    if-eqz p1, :cond_f

    .line 196
    iget-wide v0, p0, Landroid/view/InputChannel;->mPtr:J

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InputChannel;->nativeWriteToParcel(Landroid/os/Parcel;J)V

    .line 198
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_e

    .line 199
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 201
    :cond_e
    return-void

    .line 193
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
