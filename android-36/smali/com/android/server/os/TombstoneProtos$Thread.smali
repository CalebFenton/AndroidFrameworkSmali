.class public final Lcom/android/server/os/TombstoneProtos$Thread;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Thread"
.end annotation


# static fields
.field public static final blacklist BACKTRACE_NOTE:J = 0x20900000007L

.field public static final blacklist CURRENT_BACKTRACE:J = 0x20b00000004L

.field public static final blacklist ID:J = 0x10500000001L

.field public static final blacklist MEMORY_DUMP:J = 0x20b00000005L

.field public static final blacklist NAME:J = 0x10900000002L

.field public static final blacklist PAC_ENABLED_KEYS:J = 0x10300000008L

.field public static final blacklist REGISTERS:J = 0x20b00000003L

.field public static final blacklist TAGGED_ADDR_CTRL:J = 0x10300000006L

.field public static final blacklist UNREADABLE_ELF_FILES:J = 0x20900000009L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/os/TombstoneProtos;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
