.class public final Lcom/android/server/job/JobStorePersistStatsProto;
.super Ljava/lang/Object;
.source "JobStorePersistStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobStorePersistStatsProto$Stats;
    }
.end annotation


# static fields
.field public static final blacklist FIRST_LOAD:J = 0x10b00000001L

.field public static final blacklist LAST_SAVE:J = 0x10b00000002L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
