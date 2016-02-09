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
.field public static final ACTIVE_CODENAMES:[Ljava/lang/String;

.field private static final ALL_CODENAMES:[Ljava/lang/String;

.field public static final BASE_OS:Ljava/lang/String;

.field public static final CODENAME:Ljava/lang/String;

.field public static final INCREMENTAL:Ljava/lang/String;

.field public static final PREVIEW_SDK_INT:I

.field public static final RELEASE:Ljava/lang/String;

.field public static final RESOURCES_SDK_INT:I

.field public static final SDK:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SDK_INT:I

.field public static final SECURITY_PATCH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 152
    const-string/jumbo v0, "ro.build.version.incremental"

    #@4
    invoke-static {v0}, Landroid/os/Build;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    #@a
    .line 157
    const-string/jumbo v0, "ro.build.version.release"

    #@d
    invoke-static {v0}, Landroid/os/Build;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    sput-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@13
    .line 162
    const-string/jumbo v0, "ro.build.version.base_os"

    #@16
    const-string/jumbo v1, ""

    #@19
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    #@1f
    .line 168
    const-string/jumbo v0, "ro.build.version.security_patch"

    #@22
    const-string/jumbo v1, ""

    #@25
    .line 167
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    sput-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    #@2b
    .line 177
    const-string/jumbo v0, "ro.build.version.sdk"

    #@2e
    invoke-static {v0}, Landroid/os/Build;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    sput-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #@34
    .line 184
    const-string/jumbo v0, "ro.build.version.sdk"

    #@37
    .line 183
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@3a
    move-result v0

    #@3b
    sput v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3d
    .line 205
    const-string/jumbo v0, "ro.build.version.preview_sdk"

    #@40
    .line 204
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@43
    move-result v0

    #@44
    sput v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    #@46
    .line 211
    const-string/jumbo v0, "ro.build.version.codename"

    #@49
    invoke-static {v0}, Landroid/os/Build;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    sput-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    #@4f
    .line 214
    const-string/jumbo v0, "ro.build.version.all_codenames"

    #@52
    const-string/jumbo v1, ","

    #@55
    invoke-static {v0, v1}, Landroid/os/Build;->-wrap0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    .line 213
    sput-object v0, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    #@5b
    .line 219
    const-string/jumbo v0, "REL"

    #@5e
    sget-object v1, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    #@60
    aget-object v1, v1, v2

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_0

    #@68
    .line 220
    new-array v0, v2, [Ljava/lang/String;

    #@6a
    .line 219
    :goto_0
    sput-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    #@6c
    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6e
    sget-object v1, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    #@70
    array-length v1, v1

    #@71
    add-int/2addr v0, v1

    #@72
    sput v0, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@74
    .line 146
    return-void

    #@75
    .line 220
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    #@77
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
