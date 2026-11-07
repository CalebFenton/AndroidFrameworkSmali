.class public final Lcom/android/server/am/BroadcastQueueProto;
.super Ljava/lang/Object;
.source "BroadcastQueueProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueueProto$BroadcastSummary;
    }
.end annotation


# static fields
.field public static final blacklist FROZEN_BROADCASTS:J = 0x20b00000008L

.field public static final blacklist HISTORICAL_BROADCASTS:J = 0x20b00000005L

.field public static final blacklist HISTORICAL_BROADCASTS_SUMMARY:J = 0x20b00000006L

.field public static final blacklist ORDERED_BROADCASTS:J = 0x20b00000003L

.field public static final blacklist PARALLEL_BROADCASTS:J = 0x20b00000002L

.field public static final blacklist PENDING_BROADCAST:J = 0x10b00000004L

.field public static final blacklist PENDING_BROADCASTS:J = 0x20b00000007L

.field public static final blacklist QUEUE_NAME:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
