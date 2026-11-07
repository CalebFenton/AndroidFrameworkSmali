.class public final Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto$AppData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SqlStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats$Database;
    }
.end annotation


# static fields
.field public static final blacklist DATABASES:J = 0x20b00000004L

.field public static final blacklist MALLOC_SIZE_KB:J = 0x10500000003L

.field public static final blacklist MEMORY_USED_KB:J = 0x10500000001L

.field public static final blacklist PAGECACHE_OVERFLOW_KB:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/MemInfoDumpProto$AppData;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/am/MemInfoDumpProto$AppData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
