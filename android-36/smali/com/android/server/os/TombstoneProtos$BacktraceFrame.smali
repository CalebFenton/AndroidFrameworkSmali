.class public final Lcom/android/server/os/TombstoneProtos$BacktraceFrame;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BacktraceFrame"
.end annotation


# static fields
.field public static final blacklist BUILD_ID:J = 0x10900000008L

.field public static final blacklist FILE_MAP_OFFSET:J = 0x10400000007L

.field public static final blacklist FILE_NAME:J = 0x10900000006L

.field public static final blacklist FUNCTION_NAME:J = 0x10900000004L

.field public static final blacklist FUNCTION_OFFSET:J = 0x10400000005L

.field public static final blacklist PC:J = 0x10400000002L

.field public static final blacklist REL_PC:J = 0x10400000001L

.field public static final blacklist SP:J = 0x10400000003L


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

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
