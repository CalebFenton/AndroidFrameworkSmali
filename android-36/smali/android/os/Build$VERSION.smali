.class public Landroid/os/Build$VERSION;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VERSION"
.end annotation


# static fields
.field public static final greylist ACTIVE_CODENAMES:[Ljava/lang/String;

.field private static final greylist-max-o ALL_CODENAMES:[Ljava/lang/String;

.field public static final whitelist BASE_OS:Ljava/lang/String;

.field public static final whitelist CODENAME:Ljava/lang/String;

.field public static final blacklist DEVICE_INITIAL_SDK_INT:I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist INCREMENTAL:Ljava/lang/String;

.field public static final whitelist KNOWN_CODENAMES:Ljava/util/Set;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MEDIA_PERFORMANCE_CLASS:I

.field public static final greylist-max-o MIN_SUPPORTED_TARGET_SDK_INT:I

.field public static final whitelist PREVIEW_SDK_FINGERPRINT:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREVIEW_SDK_INT:I

.field public static final whitelist RELEASE:Ljava/lang/String;

.field public static final whitelist RELEASE_OR_CODENAME:Ljava/lang/String;

.field public static final whitelist RELEASE_OR_PREVIEW_DISPLAY:Ljava/lang/String;

.field public static final blacklist RESOURCES_SDK_INT:I

.field public static final whitelist SDK:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SDK_INT:I

.field public static final whitelist SDK_INT_FULL:I

.field public static final whitelist SECURITY_PATCH:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 341
    const-string/jumbo v0, "ro.build.version.incremental"

    invoke-static {v0}, Landroid/os/Build;->-$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 350
    const-string/jumbo v0, "ro.build.version.release"

    invoke-static {v0}, Landroid/os/Build;->-$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 356
    const-string/jumbo v0, "ro.build.version.release_or_codename"

    invoke-static {v0}, Landroid/os/Build;->-$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    .line 363
    const-string/jumbo v0, "ro.build.version.release_or_preview_display"

    invoke-static {v0}, Landroid/os/Build;->-$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->RELEASE_OR_PREVIEW_DISPLAY:Ljava/lang/String;

    .line 369
    const-string/jumbo v0, "ro.build.version.base_os"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    .line 375
    const-string/jumbo v0, "ro.build.version.security_patch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 389
    invoke-static {}, Landroid/sysprop/DeviceProperties;->media_performance_class()Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->MEDIA_PERFORMANCE_CLASS:I

    .line 398
    const-string/jumbo v0, "ro.build.version.sdk"

    invoke-static {v0}, Landroid/os/Build;->-$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 412
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 434
    const-string/jumbo v0, "ro.build.version.sdk_full"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Build;->parseFullVersion(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    .line 450
    nop

    .line 451
    const-string/jumbo v0, "ro.product.first_api_level"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 471
    const-string/jumbo v0, "ro.build.version.preview_sdk"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    .line 491
    const-string/jumbo v0, "ro.build.version.preview_sdk_fingerprint"

    const-string v1, "REL"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_FINGERPRINT:Ljava/lang/String;

    .line 498
    const-string/jumbo v0, "ro.build.version.codename"

    invoke-static {v0}, Landroid/os/Build;->-$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 513
    new-instance v0, Landroid/util/ArraySet;

    .line 514
    const-string/jumbo v3, "ro.build.version.known_codenames"

    const-string v4, ","

    invoke-static {v3, v4}, Landroid/os/Build;->-$$Nest$smgetStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Landroid/os/Build$VERSION;->KNOWN_CODENAMES:Ljava/util/Set;

    .line 516
    nop

    .line 517
    const-string/jumbo v0, "ro.build.version.all_codenames"

    invoke-static {v0, v4}, Landroid/os/Build;->-$$Nest$smgetStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    .line 524
    sget-object v0, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 525
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_b9

    :cond_b7
    sget-object v0, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    :goto_b9
    sput-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    .line 534
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 543
    const-string/jumbo v0, "ro.build.version.min_supported_target_sdk"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->MIN_SUPPORTED_TARGET_SDK_INT:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
