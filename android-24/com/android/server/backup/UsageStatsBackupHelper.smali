.class public Lcom/android/server/backup/UsageStatsBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "UsageStatsBackupHelper.java"


# static fields
.field static final BLOB_VERSION:I = 0x1

.field static final DEBUG:Z = false

.field static final KEY_USAGE_STATS:Ljava/lang/String; = "usage_stats"

.field static final TAG:Ljava/lang/String; = "UsgStatsBackupHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 30
    new-array v0, v3, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "usage_stats"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    invoke-direct {p0, v3, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    #@c
    .line 29
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    #@0
    .prologue
    .line 55
    const-string/jumbo v5, "usage_stats"

    #@3
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v5

    #@7
    if-eqz v5, :cond_0

    #@9
    .line 57
    const-class v5, Landroid/app/usage/UsageStatsManagerInternal;

    #@b
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    #@11
    .line 58
    .local v2, "localUsageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v0, Ljava/io/DataInputStream;

    #@13
    new-instance v5, Ljava/io/ByteArrayInputStream;

    #@15
    invoke-direct {v5, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@18
    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@1b
    .line 60
    .local v0, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    #@1e
    move-result v4

    #@1f
    .line 61
    .local v4, "user":I
    array-length v5, p2

    #@20
    add-int/lit8 v5, v5, -0x4

    #@22
    new-array v3, v5, [B

    #@24
    .line 62
    .local v3, "restoreData":[B
    array-length v5, v3

    #@25
    const/4 v6, 0x0

    #@26
    invoke-virtual {v0, v3, v6, v5}, Ljava/io/DataInputStream;->read([BII)I

    #@29
    .line 63
    invoke-virtual {v2, v4, p1, v3}, Landroid/app/usage/UsageStatsManagerInternal;->applyRestoredPayload(ILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 54
    .end local v0    # "in":Ljava/io/DataInputStream;
    .end local v2    # "localUsageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    .end local v3    # "restoreData":[B
    .end local v4    # "user":I
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 64
    .restart local v0    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "localUsageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    :catch_0
    move-exception v1

    #@2e
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    const-string/jumbo v4, "usage_stats"

    #@3
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 37
    const-class v4, Landroid/app/usage/UsageStatsManagerInternal;

    #@b
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    #@11
    .line 38
    .local v2, "localUsageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@13
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@16
    .line 39
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    #@18
    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@1b
    .line 41
    .local v3, "out":Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    #@1c
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1f
    .line 42
    const/4 v4, 0x0

    #@20
    invoke-virtual {v2, v4, p1}, Landroid/app/usage/UsageStatsManagerInternal;->getBackupPayload(ILjava/lang/String;)[B

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v3, v4}, Ljava/io/FilterOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 47
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@2a
    move-result-object v4

    #@2b
    return-object v4

    #@2c
    .line 43
    :catch_0
    move-exception v1

    #@2d
    .line 45
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@30
    goto :goto_0

    #@31
    .line 49
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "localUsageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :cond_0
    const/4 v4, 0x0

    #@32
    return-object v4
.end method
