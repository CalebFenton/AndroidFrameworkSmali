.class public final Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$HeapInfo;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeapInfo"
.end annotation


# static fields
.field public static final blacklist HEAP_ALLOC_KB:J = 0x10500000003L

.field public static final blacklist HEAP_FREE_KB:J = 0x10500000004L

.field public static final blacklist HEAP_SIZE_KB:J = 0x10500000002L

.field public static final blacklist MEM_INFO:J = 0x10b00000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
