.class Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;
.super Landroid/app/admin/DevicePolicyCache;
.source "DevicePolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyDevicePolicyCache"
.end annotation


# static fields
.field private static final greylist-max-o INSTANCE:Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;
    .registers 1

    sget-object v0, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;->INSTANCE:Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    new-instance v0, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    invoke-direct {v0}, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;-><init>()V

    sput-object v0, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;->INSTANCE:Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyCache;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist canAdminGrantSensorsPermissions()Z
    .registers 2

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getContentProtectionPolicy(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getLauncherShortcutOverrides()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getPasswordQuality(I)I
    .registers 3
    .param p1, "userHandle"    # I

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPermissionPolicy(I)I
    .registers 3
    .param p1, "userHandle"    # I

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isScreenCaptureAllowed(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .line 90
    const/4 v0, 0x1

    return v0
.end method
