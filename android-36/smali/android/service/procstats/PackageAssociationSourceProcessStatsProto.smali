.class public final Landroid/service/procstats/PackageAssociationSourceProcessStatsProto;
.super Ljava/lang/Object;
.source "PackageAssociationSourceProcessStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/procstats/PackageAssociationSourceProcessStatsProto$StateStats;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVE_COUNT:J = 0x10500000005L

.field public static final blacklist ACTIVE_STATE_STATS:J = 0x20b00000006L

.field public static final blacklist PACKAGE_NAME:J = 0x10900000007L

.field public static final blacklist PROCESS_NAME:J = 0x10900000002L

.field public static final blacklist PROCESS_UID:J = 0x10500000001L

.field public static final blacklist TOTAL_COUNT:J = 0x10500000003L

.field public static final blacklist TOTAL_DURATION_MS:J = 0x10300000004L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
