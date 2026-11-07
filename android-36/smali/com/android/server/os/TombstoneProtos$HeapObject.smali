.class public final Lcom/android/server/os/TombstoneProtos$HeapObject;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeapObject"
.end annotation


# static fields
.field public static final blacklist ADDRESS:J = 0x10400000001L

.field public static final blacklist ALLOCATION_BACKTRACE:J = 0x20b00000004L

.field public static final blacklist ALLOCATION_TID:J = 0x10400000003L

.field public static final blacklist DEALLOCATION_BACKTRACE:J = 0x20b00000006L

.field public static final blacklist DEALLOCATION_TID:J = 0x10400000005L

.field public static final blacklist SIZE:J = 0x10400000002L


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

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
