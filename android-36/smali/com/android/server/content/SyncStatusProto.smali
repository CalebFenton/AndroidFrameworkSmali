.class public final Lcom/android/server/content/SyncStatusProto;
.super Ljava/lang/Object;
.source "SyncStatusProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStatusProto$StatusInfo;
    }
.end annotation


# static fields
.field public static final blacklist IS_JOB_ATTRIBUTION_FIXED:J = 0x10800000003L

.field public static final blacklist IS_JOB_NAMESPACE_MIGRATED:J = 0x10800000002L

.field public static final blacklist STATUS:J = 0x20b00000001L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
