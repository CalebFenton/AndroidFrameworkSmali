.class Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;
.super Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture$Stub;
.source "AndroidFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;


# direct methods
.method constructor blacklist <init>(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)V
    .registers 2
    .param p1, "this$0"    # Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 528
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;"
    iput-object p1, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;->this$0:Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/IAndroidFuture$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist complete(Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "resultContainer"    # Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    .line 533
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;, "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;"
    :try_start_0
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;->this$0:Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-virtual {p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 536
    .local v0, "changed":Z
    goto :goto_19

    .line 534
    .end local v0    # "changed":Z
    :catchall_b
    move-exception v0

    .line 535
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;->this$0:Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;->this$0:Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-virtual {v2, v0}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->unwrapExecutionException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v1

    move v0, v1

    .line 537
    .local v0, "changed":Z
    :goto_19
    if-nez v0, :cond_41

    .line 538
    invoke-static {}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ignored, as local future is already completed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$1;->this$0:Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_41
    return-void
.end method
