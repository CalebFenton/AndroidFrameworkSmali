.class public final Lcom/android/server/am/UserStateProto;
.super Ljava/lang/Object;
.source "UserStateProto.java"


# static fields
.field public static final blacklist STATE:J = 0x10e00000001L

.field public static final blacklist STATE_BOOTING:I = 0x0

.field public static final blacklist STATE_RUNNING_LOCKED:I = 0x1

.field public static final blacklist STATE_RUNNING_UNLOCKED:I = 0x3

.field public static final blacklist STATE_RUNNING_UNLOCKING:I = 0x2

.field public static final blacklist STATE_SHUTDOWN:I = 0x5

.field public static final blacklist STATE_STOPPING:I = 0x4

.field public static final blacklist SWITCHING:J = 0x10800000002L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
