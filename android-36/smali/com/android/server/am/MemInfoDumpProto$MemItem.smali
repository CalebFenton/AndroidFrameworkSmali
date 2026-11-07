.class public final Lcom/android/server/am/MemInfoDumpProto$MemItem;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemItem"
.end annotation


# static fields
.field public static final blacklist HAS_ACTIVITIES:J = 0x10800000005L

.field public static final blacklist ID:J = 0x10500000003L

.field public static final blacklist IS_PROC:J = 0x10800000004L

.field public static final blacklist LABEL:J = 0x10900000002L

.field public static final blacklist PSS_KB:J = 0x10300000006L

.field public static final blacklist RSS_KB:J = 0x10300000009L

.field public static final blacklist SUB_ITEMS:J = 0x20b00000008L

.field public static final blacklist SWAP_PSS_KB:J = 0x10300000007L

.field public static final blacklist TAG:J = 0x10900000001L


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

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
