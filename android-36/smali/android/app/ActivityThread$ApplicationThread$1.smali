.class Landroid/app/ActivityThread$ApplicationThread$1;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread$ApplicationThread;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/app/ActivityThread$ApplicationThread;

.field final synthetic blacklist val$args:[Ljava/lang/String;

.field final synthetic blacklist val$dup:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Landroid/app/ActivityThread$ApplicationThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2047
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread$1;->this$1:Landroid/app/ActivityThread$ApplicationThread;

    iput-object p2, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$dup:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 2051
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread$1;->this$1:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$dup:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$args:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->-$$Nest$mdumpDatabaseInfo(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_11

    .line 2053
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$dup:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2054
    nop

    .line 2055
    return-void

    .line 2053
    :catchall_11
    move-exception v0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$dup:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2054
    throw v0
.end method
