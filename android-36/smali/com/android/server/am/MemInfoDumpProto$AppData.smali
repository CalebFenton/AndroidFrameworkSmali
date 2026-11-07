.class public final Lcom/android/server/am/MemInfoDumpProto$AppData;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats;,
        Lcom/android/server/am/MemInfoDumpProto$AppData$ObjectStats;
    }
.end annotation


# static fields
.field public static final blacklist ASSET_ALLOCATIONS:J = 0x10900000004L

.field public static final blacklist OBJECTS:J = 0x10b00000002L

.field public static final blacklist PROCESS_MEMORY:J = 0x10b00000001L

.field public static final blacklist SQL:J = 0x10b00000003L

.field public static final blacklist UNREACHABLE_MEMORY:J = 0x10900000005L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/MemInfoDumpProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/MemInfoDumpProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
