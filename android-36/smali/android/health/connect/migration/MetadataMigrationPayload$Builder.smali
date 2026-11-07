.class public final Landroid/health/connect/migration/MetadataMigrationPayload$Builder;
.super Ljava/lang/Object;
.source "MetadataMigrationPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/migration/MetadataMigrationPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist MAX_RRP:I = 0x1c84

.field private static final blacklist MIN_RRP:I


# instance fields
.field private blacklist mRecordRetentionPeriodDays:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroid/health/connect/migration/MetadataMigrationPayload$Builder;->mRecordRetentionPeriodDays:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/migration/MetadataMigrationPayload;
    .registers 4

    .line 101
    new-instance v0, Landroid/health/connect/migration/MetadataMigrationPayload;

    iget v1, p0, Landroid/health/connect/migration/MetadataMigrationPayload$Builder;->mRecordRetentionPeriodDays:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/health/connect/migration/MetadataMigrationPayload;-><init>(ILandroid/health/connect/migration/MetadataMigrationPayload-IA;)V

    return-object v0
.end method

.method public whitelist setRecordRetentionPeriodDays(I)Landroid/health/connect/migration/MetadataMigrationPayload$Builder;
    .registers 5
    .param p1, "recordRetentionPeriodDays"    # I

    .line 86
    if-ltz p1, :cond_9

    const/16 v0, 0x1c84

    if-gt p1, v0, :cond_9

    .line 92
    iput p1, p0, Landroid/health/connect/migration/MetadataMigrationPayload$Builder;->mRecordRetentionPeriodDays:I

    .line 93
    return-object p0

    .line 87
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordRetentionPeriodDays is not within the range, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
