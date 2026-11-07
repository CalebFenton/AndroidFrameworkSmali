.class public final Landroid/os/SystemPropertiesProto$DalvikVm;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DalvikVm"
.end annotation


# static fields
.field public static final greylist-max-o APPIMAGEFORMAT:J = 0x10900000001L

.field public static final greylist-max-o BACKGROUNDGCTYPE:J = 0x10900000002L

.field public static final greylist-max-o CHECKJNI:J = 0x10800000003L

.field public static final greylist-max-o DEX2OAT_FILTER:J = 0x10900000004L

.field public static final greylist-max-o DEX2OAT_FLAGS:J = 0x10900000005L

.field public static final greylist-max-o DEX2OAT_THREADS:J = 0x10500000006L

.field public static final greylist-max-o DEX2OAT_XMS:J = 0x10900000007L

.field public static final greylist-max-o DEX2OAT_XMX:J = 0x10900000008L

.field public static final greylist-max-o DEXOPT_SECONDARY:J = 0x10800000009L

.field public static final greylist-max-o EXECUTION_MODE:J = 0x1090000000aL

.field public static final greylist-max-o EXTRA_OPTS:J = 0x1090000000bL

.field public static final greylist-max-o GCTYPE:J = 0x1090000000cL

.field public static final greylist-max-o HEAPGROWTHLIMIT:J = 0x1090000000dL

.field public static final greylist-max-o HEAPMAXFREE:J = 0x1090000000eL

.field public static final greylist-max-o HEAPMINFREE:J = 0x1090000000fL

.field public static final greylist-max-o HEAPSIZE:J = 0x10900000010L

.field public static final greylist-max-o HEAPSTARTSIZE:J = 0x10900000011L

.field public static final greylist-max-o HEAPTARGETUTILIZATION:J = 0x10100000012L

.field public static final greylist-max-o HOT_STARTUP_METHOD_SAMPLES:J = 0x10500000013L

.field public static final greylist-max-o IMAGE_DEX2OAT_FILTER:J = 0x10900000014L

.field public static final greylist-max-o IMAGE_DEX2OAT_FLAGS:J = 0x10900000015L

.field public static final greylist-max-o IMAGE_DEX2OAT_THREADS:J = 0x10500000016L

.field public static final greylist-max-o IMAGE_DEX2OAT_XMS:J = 0x10900000017L

.field public static final greylist-max-o IMAGE_DEX2OAT_XMX:J = 0x10900000018L

.field public static final greylist-max-o ISA_ARM64_FEATURES:J = 0x1090000001bL

.field public static final greylist-max-o ISA_ARM64_VARIANT:J = 0x1090000001cL

.field public static final greylist-max-o ISA_ARM_FEATURES:J = 0x10900000019L

.field public static final greylist-max-o ISA_ARM_VARIANT:J = 0x1090000001aL

.field public static final greylist-max-o ISA_MIPS64_FEATURES:J = 0x1090000001fL

.field public static final greylist-max-o ISA_MIPS64_VARIANT:J = 0x10900000020L

.field public static final greylist-max-o ISA_MIPS_FEATURES:J = 0x1090000001dL

.field public static final greylist-max-o ISA_MIPS_VARIANT:J = 0x1090000001eL

.field public static final greylist-max-o ISA_UNKNOWN_FEATURES:J = 0x10900000021L

.field public static final greylist-max-o ISA_UNKNOWN_VARIANT:J = 0x10900000022L

.field public static final greylist-max-o ISA_X86_64_FEATURES:J = 0x10900000023L

.field public static final greylist-max-o ISA_X86_64_VARIANT:J = 0x10900000024L

.field public static final greylist-max-o ISA_X86_FEATURES:J = 0x10900000025L

.field public static final greylist-max-o ISA_X86_VARIANT:J = 0x10900000026L

.field public static final greylist-max-o JITINITIALSIZE:J = 0x10900000027L

.field public static final greylist-max-o JITMAXSIZE:J = 0x10900000028L

.field public static final greylist-max-o JITPRITHREADWEIGHT:J = 0x10500000029L

.field public static final greylist-max-o JITTHRESHOLD:J = 0x1050000002aL

.field public static final greylist-max-o JITTRANSITIONWEIGHT:J = 0x1050000002bL

.field public static final greylist-max-o JNIOPTS:J = 0x1090000002cL

.field public static final greylist-max-o LOCKPROF_THRESHOLD:J = 0x1050000002dL

.field public static final greylist-max-o METHOD_TRACE:J = 0x1080000002eL

.field public static final greylist-max-o METHOD_TRACE_FILE:J = 0x1090000002fL

.field public static final greylist-max-o METHOD_TRACE_FILE_SIZ:J = 0x10500000030L

.field public static final greylist-max-o METHOD_TRACE_STREAM:J = 0x10800000031L

.field public static final greylist-max-o PROFILESYSTEMSERVER:J = 0x10800000032L

.field public static final greylist-max-o STACK_TRACE_DIR:J = 0x10900000033L

.field public static final greylist-max-o USEJIT:J = 0x10800000034L

.field public static final greylist-max-o USEJITPROFILES:J = 0x10800000035L

.field public static final greylist-max-o ZYGOTE_MAX_BOOT_RETRY:J = 0x10500000036L


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemPropertiesProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/SystemPropertiesProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
