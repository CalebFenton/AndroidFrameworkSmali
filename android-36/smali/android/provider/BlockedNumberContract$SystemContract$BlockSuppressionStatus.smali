.class public Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;
.super Ljava/lang/Object;
.source "BlockedNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BlockedNumberContract$SystemContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockSuppressionStatus"
.end annotation


# instance fields
.field public final greylist-max-o isSuppressed:Z

.field public final greylist-max-o untilTimestampMillis:J


# direct methods
.method public constructor greylist-max-o <init>(ZJ)V
    .registers 4
    .param p1, "isSuppressed"    # Z
    .param p2, "untilTimestampMillis"    # J

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-boolean p1, p0, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;->isSuppressed:Z

    .line 639
    iput-wide p2, p0, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;->untilTimestampMillis:J

    .line 640
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BlockSuppressionStatus; isSuppressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;->isSuppressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", until="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;->untilTimestampMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
