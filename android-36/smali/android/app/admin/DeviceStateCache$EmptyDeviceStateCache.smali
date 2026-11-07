.class Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;
.super Landroid/app/admin/DeviceStateCache;
.source "DeviceStateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DeviceStateCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyDeviceStateCache"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;
    .registers 1

    sget-object v0, Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;->INSTANCE:Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;

    invoke-direct {v0}, Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;->INSTANCE:Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Landroid/app/admin/DeviceStateCache;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isDeviceProvisioned()Z
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserOrganizationManaged(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .line 73
    const/4 v0, 0x0

    return v0
.end method
