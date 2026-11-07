.class Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "ApplicationPackageManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveCallbackDelegate"
.end annotation


# static fields
.field private static final greylist-max-o MSG_CREATED:I = 0x1

.field private static final greylist-max-o MSG_STATUS_CHANGED:I = 0x2


# instance fields
.field final greylist-max-o mCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Looper;)V
    .registers 4
    .param p1, "callback"    # Landroid/content/pm/PackageManager$MoveCallback;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3600
    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    .line 3601
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    .line 3602
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 3603
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 3607
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_34

    .line 3621
    const/4 v0, 0x0

    return v0

    .line 3615
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3616
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    .line 3617
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3618
    return v1

    .line 3609
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3610
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager$MoveCallback;->onCreated(ILandroid/os/Bundle;)V

    .line 3611
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3612
    return v1

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_21
        :pswitch_8
    .end packed-switch
.end method

.method public greylist-max-o onCreated(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3626
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3627
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3628
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 3629
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3630
    return-void
.end method

.method public greylist-max-o onStatusChanged(IIJ)V
    .registers 8
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .line 3634
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3635
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3636
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3637
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 3638
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3639
    return-void
.end method
