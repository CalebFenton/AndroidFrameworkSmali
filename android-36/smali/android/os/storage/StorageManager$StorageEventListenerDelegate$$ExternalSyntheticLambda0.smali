.class public final synthetic Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

.field public final synthetic blacklist f$1:Landroid/os/storage/DiskInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iput-object p2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/os/storage/DiskInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/os/storage/DiskInfo;

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->$r8$lambda$6QXIC9Wq1cJu8wcwSYoN2ozBOcI(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;)V

    return-void
.end method
