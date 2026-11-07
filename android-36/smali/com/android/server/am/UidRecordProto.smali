.class public final Lcom/android/server/am/UidRecordProto;
.super Ljava/lang/Object;
.source "UidRecordProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidRecordProto$ProcStateSequence;
    }
.end annotation


# static fields
.field public static final blacklist CHANGE_ACTIVE:I = 0x2

.field public static final blacklist CHANGE_CACHED:I = 0x3

.field public static final blacklist CHANGE_CAPABILITY:I = 0x5

.field public static final blacklist CHANGE_GONE:I = 0x0

.field public static final blacklist CHANGE_IDLE:I = 0x1

.field public static final blacklist CHANGE_PROCADJ:I = 0x7

.field public static final blacklist CHANGE_PROCSTATE:I = 0x6

.field public static final blacklist CHANGE_UNCACHED:I = 0x4

.field public static final blacklist CURRENT:J = 0x10e00000002L

.field public static final blacklist EPHEMERAL:J = 0x10800000003L

.field public static final blacklist FG_SERVICES:J = 0x10800000004L

.field public static final blacklist IDLE:J = 0x10800000007L

.field public static final blacklist LAST_BACKGROUND_TIME:J = 0x10b00000006L

.field public static final blacklist LAST_REPORTED_CHANGES:J = 0x20e00000008L

.field public static final blacklist NETWORK_STATE_UPDATE:J = 0x10b0000000aL

.field public static final blacklist NUM_PROCS:J = 0x10500000009L

.field public static final blacklist UID:J = 0x10500000001L

.field public static final blacklist WHILELIST:J = 0x10800000005L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
