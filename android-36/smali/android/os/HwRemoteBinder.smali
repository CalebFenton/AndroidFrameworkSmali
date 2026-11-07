.class public Landroid/os/HwRemoteBinder;
.super Ljava/lang/Object;
.source "HwRemoteBinder.java"

# interfaces
.implements Landroid/os/IHwBinder;


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "HwRemoteBinder"

.field private static final greylist-max-o sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 56
    invoke-static {}, Landroid/os/HwRemoteBinder;->native_init()J

    move-result-wide v2

    .line 58
    .local v2, "freeFunction":J
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    .line 59
    const-class v1, Landroid/os/HwRemoteBinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v4, 0x80

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/os/HwRemoteBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 62
    .end local v2    # "freeFunction":J
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0}, Landroid/os/HwRemoteBinder;->native_setup_empty()V

    .line 33
    sget-object v0, Landroid/os/HwRemoteBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/HwRemoteBinder;->mNativeContext:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method private static final native greylist-max-o native_init()J
.end method

.method private final native greylist-max-o native_setup_empty()V
.end method

.method private static final greylist-max-o sendDeathNotice(Landroid/os/IHwBinder$DeathRecipient;J)V
    .registers 3
    .param p0, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p1, "cookie"    # J

    .line 65
    invoke-interface {p0, p1, p2}, Landroid/os/IHwBinder$DeathRecipient;->serviceDied(J)V

    .line 66
    return-void
.end method


# virtual methods
.method public final native whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public final native whitelist test-api hashCode()I
.end method

.method public native whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public final native whitelist transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
.end method
