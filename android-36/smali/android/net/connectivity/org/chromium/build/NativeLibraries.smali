.class public Landroid/net/connectivity/org/chromium/build/NativeLibraries;
.super Ljava/lang/Object;
.source "NativeLibraries.java"


# static fields
.field public static final blacklist CPU_FAMILY_ARM:I = 0x1

.field public static final blacklist CPU_FAMILY_MIPS:I = 0x2

.field public static final blacklist CPU_FAMILY_RISCV:I = 0x4

.field public static final blacklist CPU_FAMILY_UNKNOWN:I = 0x0

.field public static final blacklist CPU_FAMILY_X86:I = 0x3

.field public static blacklist LIBRARIES:[Ljava/lang/String;

.field public static blacklist sCpuFamily:I

.field public static blacklist sSupport32Bit:Z

.field public static blacklist sSupport64Bit:Z

.field public static blacklist sUseLinker:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/net/connectivity/org/chromium/build/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    sput v0, Landroid/net/connectivity/org/chromium/build/NativeLibraries;->sCpuFamily:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
