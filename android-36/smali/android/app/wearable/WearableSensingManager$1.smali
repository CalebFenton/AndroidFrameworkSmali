.class Landroid/app/wearable/WearableSensingManager$1;
.super Landroid/app/wearable/IWearableSensingCallback$Stub;
.source "WearableSensingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/wearable/WearableSensingManager;->createWearableSensingCallback(Ljava/util/concurrent/Executor;)Landroid/app/wearable/IWearableSensingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/wearable/WearableSensingManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$Gtfj7A2IVR2kFtlzeg6PG4SBaLs(Landroid/app/wearable/WearableSensingManager$1;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/wearable/WearableSensingManager$1;->lambda$openFile$1(Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$i795Q_Cs00OS0UpdXPr6oXxDvq4(Landroid/app/wearable/WearableSensingManager$1;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/wearable/WearableSensingManager$1;->lambda$openFile$0(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/wearable/WearableSensingManager;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/wearable/WearableSensingManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 716
    iput-object p1, p0, Landroid/app/wearable/WearableSensingManager$1;->this$0:Landroid/app/wearable/WearableSensingManager;

    iput-object p2, p0, Landroid/app/wearable/WearableSensingManager$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Landroid/app/wearable/IWearableSensingCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$openFile$0(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 9
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 725
    const-string v0, "Error closing ParcelFileDescriptor."

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/wearable/WearableSensingManager$1;->this$0:Landroid/app/wearable/WearableSensingManager;

    invoke-static {v2}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$fgetmContext(Landroid/app/wearable/WearableSensingManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 726
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 728
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 729
    const/high16 v3, 0x10000000

    :try_start_15
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v2, v3

    .line 733
    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Successfully opened a file with ParcelFileDescriptor."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_23} :catch_37
    .catchall {:try_start_15 .. :try_end_23} :catchall_35

    .line 740
    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 741
    if-eqz v2, :cond_4b

    .line 743
    :try_start_28
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 750
    :goto_2b
    goto :goto_4b

    .line 744
    :catch_2c
    move-exception v3

    .line 745
    .local v3, "ex":Ljava/io/IOException;
    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "ex":Ljava/io/IOException;
    goto :goto_2b

    .line 740
    :catchall_35
    move-exception v3

    goto :goto_4c

    .line 737
    :catch_37
    move-exception v3

    .line 738
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_38
    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cannot open file."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_35

    .line 740
    nop

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 741
    if-eqz v2, :cond_4b

    .line 743
    :try_start_47
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_2c

    goto :goto_2b

    .line 753
    :cond_4b
    :goto_4b
    return-void

    .line 740
    :goto_4c
    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 741
    if-eqz v2, :cond_5d

    .line 743
    :try_start_51
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 750
    goto :goto_5d

    .line 744
    :catch_55
    move-exception v4

    .line 745
    .local v4, "ex":Ljava/io/IOException;
    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_5d
    :goto_5d
    throw v3
.end method

.method private synthetic blacklist lambda$openFile$1(Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 723
    new-instance v0, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3}, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/wearable/WearableSensingManager$1;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 720
    .local p2, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    invoke-static {}, Landroid/app/wearable/WearableSensingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWearableSensingCallback#openFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Landroid/app/wearable/WearableSensingManager$1;->val$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/app/wearable/WearableSensingManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/wearable/WearableSensingManager$1;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 754
    return-void
.end method
