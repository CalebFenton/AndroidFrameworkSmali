.class public final Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats$Database;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Database"
.end annotation


# static fields
.field public static final blacklist CACHE:J = 0x10900000005L

.field public static final blacklist CACHE_HITS:J = 0x10500000006L

.field public static final blacklist CACHE_MISSES:J = 0x10500000007L

.field public static final blacklist CACHE_SIZE:J = 0x10500000008L

.field public static final blacklist DB_SIZE:J = 0x10500000003L

.field public static final blacklist LOOKASIDE_B:J = 0x10500000004L

.field public static final blacklist NAME:J = 0x10900000001L

.field public static final blacklist PAGE_SIZE:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats;)V
    .registers 2
    .param p1, "this$2"    # Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
