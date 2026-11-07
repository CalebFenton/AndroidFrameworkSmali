.class Ldalvik/system/VMRuntime$SdkVersionContainer;
.super Ljava/lang/Object;
.source "VMRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/VMRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdkVersionContainer"
.end annotation


# static fields
.field private static final blacklist sdkExtensionS:I

.field private static final blacklist sdkVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsdkExtensionS()I
    .registers 1

    sget v0, Ldalvik/system/VMRuntime$SdkVersionContainer;->sdkExtensionS:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsdkVersion()I
    .registers 1

    sget v0, Ldalvik/system/VMRuntime$SdkVersionContainer;->sdkVersion:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 421
    const/4 v0, 0x0

    invoke-static {v0}, Ldalvik/system/VMRuntime;->-$$Nest$smgetSdkVersionNative(I)I

    move-result v1

    sput v1, Ldalvik/system/VMRuntime$SdkVersionContainer;->sdkVersion:I

    .line 422
    nop

    .line 423
    const-string v1, "build.version.extensions.s"

    invoke-static {v1, v0}, Ldalvik/system/VMRuntime;->-$$Nest$smgetIntSystemProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ldalvik/system/VMRuntime$SdkVersionContainer;->sdkExtensionS:I

    .line 422
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
