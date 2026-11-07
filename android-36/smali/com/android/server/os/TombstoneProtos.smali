.class public final Lcom/android/server/os/TombstoneProtos;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/TombstoneProtos$LogMessage;,
        Lcom/android/server/os/TombstoneProtos$LogBuffer;,
        Lcom/android/server/os/TombstoneProtos$FD;,
        Lcom/android/server/os/TombstoneProtos$MemoryMapping;,
        Lcom/android/server/os/TombstoneProtos$MemoryDump;,
        Lcom/android/server/os/TombstoneProtos$ArmMTEMetadata;,
        Lcom/android/server/os/TombstoneProtos$BacktraceFrame;,
        Lcom/android/server/os/TombstoneProtos$Thread;,
        Lcom/android/server/os/TombstoneProtos$Register;,
        Lcom/android/server/os/TombstoneProtos$Cause;,
        Lcom/android/server/os/TombstoneProtos$MemoryError;,
        Lcom/android/server/os/TombstoneProtos$HeapObject;,
        Lcom/android/server/os/TombstoneProtos$Signal;,
        Lcom/android/server/os/TombstoneProtos$Tombstone;,
        Lcom/android/server/os/TombstoneProtos$StackHistoryBuffer;,
        Lcom/android/server/os/TombstoneProtos$StackHistoryBufferEntry;,
        Lcom/android/server/os/TombstoneProtos$CrashDetail;
    }
.end annotation


# static fields
.field public static final blacklist ARM32:I = 0x0

.field public static final blacklist ARM64:I = 0x1

.field public static final blacklist NONE:I = 0x5

.field public static final blacklist RISCV64:I = 0x4

.field public static final blacklist X86:I = 0x2

.field public static final blacklist X86_64:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
