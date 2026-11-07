.class public Lcom/android/server/backup/SliceBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "SliceBackupHelper.java"


# static fields
.field static final blacklist BLOB_VERSION:I = 0x1

.field static final blacklist DEBUG:Z

.field static final blacklist KEY_SLICES:Ljava/lang/String; = "slices"

.field static final blacklist TAG:Ljava/lang/String; = "SliceBackupHelper"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 27
    const-string v0, "SliceBackupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/backup/SliceBackupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const-string/jumbo v0, "slices"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 60
    sget-boolean v0, Lcom/android/server/backup/SliceBackupHelper;->DEBUG:Z

    const-string v1, "SliceBackupHelper"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got restore of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1c
    const-string/jumbo v0, "slices"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 64
    :try_start_25
    const-string/jumbo v0, "slice"

    .line 65
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/app/slice/ISliceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/slice/ISliceManager;

    move-result-object v0

    .line 67
    .local v0, "sm":Landroid/app/slice/ISliceManager;
    const/4 v2, 0x0

    invoke-interface {v0, p2, v2}, Landroid/app/slice/ISliceManager;->applyRestore([BI)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_35

    .line 70
    .end local v0    # "sm":Landroid/app/slice/ISliceManager;
    goto :goto_3b

    .line 68
    :catch_35
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Couldn\'t communicate with slice manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3b
    :goto_3b
    return-void
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "newPayload":[B
    const-string/jumbo v1, "slices"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 45
    :try_start_a
    const-string/jumbo v1, "slice"

    .line 46
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/app/slice/ISliceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/slice/ISliceManager;

    move-result-object v1

    .line 48
    .local v1, "sm":Landroid/app/slice/ISliceManager;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/slice/ISliceManager;->getBackupPayload(I)[B

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1c

    move-object v0, v2

    .line 53
    .end local v1    # "sm":Landroid/app/slice/ISliceManager;
    goto :goto_25

    .line 49
    :catch_1c
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SliceBackupHelper"

    const-string v3, "Couldn\'t communicate with slice manager"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    const/4 v0, 0x0

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return-object v0
.end method
