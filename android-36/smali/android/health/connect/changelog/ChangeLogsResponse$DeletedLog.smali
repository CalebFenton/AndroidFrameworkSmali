.class public final Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;
.super Ljava/lang/Object;
.source "ChangeLogsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/changelog/ChangeLogsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeletedLog"
.end annotation


# instance fields
.field private final blacklist mDeletedRecordId:Ljava/lang/String;

.field private final blacklist mDeletedTime:Ljava/time/Instant;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .registers 5
    .param p1, "deletedRecordId"    # Ljava/lang/String;
    .param p2, "deletedTime"    # J

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iput-object p1, p0, Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;->mDeletedRecordId:Ljava/lang/String;

    .line 163
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;->mDeletedTime:Ljava/time/Instant;

    .line 164
    return-void
.end method


# virtual methods
.method public whitelist getDeletedRecordId()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;->mDeletedRecordId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeletedTime()Ljava/time/Instant;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogsResponse$DeletedLog;->mDeletedTime:Ljava/time/Instant;

    return-object v0
.end method
