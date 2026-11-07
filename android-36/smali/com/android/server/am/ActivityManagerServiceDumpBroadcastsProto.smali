.class public final Lcom/android/server/am/ActivityManagerServiceDumpBroadcastsProto;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpBroadcastsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceDumpBroadcastsProto$MainHandler;
    }
.end annotation


# static fields
.field public static final blacklist BROADCAST_QUEUE:J = 0x20b00000003L

.field public static final blacklist HANDLER:J = 0x10b00000005L

.field public static final blacklist RECEIVER_LIST:J = 0x20b00000001L

.field public static final blacklist RECEIVER_RESOLVER:J = 0x10b00000002L

.field public static final blacklist STICKY_BROADCASTS:J = 0x20b00000004L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
