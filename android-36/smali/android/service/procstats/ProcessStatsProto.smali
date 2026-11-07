.class public final Landroid/service/procstats/ProcessStatsProto;
.super Ljava/lang/Object;
.source "ProcessStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/procstats/ProcessStatsProto$Kill;
    }
.end annotation


# static fields
.field public static final blacklist ASSOCS:J = 0x20b00000007L

.field public static final blacklist KILL:J = 0x10b00000003L

.field public static final blacklist PROCESS:J = 0x10900000001L

.field public static final blacklist STATES:J = 0x20b00000005L

.field public static final blacklist TOTAL_RUNNING_STATE:J = 0x10b00000006L

.field public static final blacklist UID:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
