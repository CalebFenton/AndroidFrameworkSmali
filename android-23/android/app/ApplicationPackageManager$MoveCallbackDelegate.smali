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
.field private static final MSG_CREATED:I = 0x1

.field private static final MSG_STATUS_CHANGED:I = 0x2


# instance fields
.field final mCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Looper;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/PackageManager$MoveCallback;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2157
    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    #@3
    .line 2158
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    #@5
    .line 2159
    new-instance v0, Landroid/os/Handler;

    #@7
    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@a
    iput-object v0, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mHandler:Landroid/os/Handler;

    #@c
    .line 2157
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 2164
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 2178
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 2166
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@c
    .line 2167
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    #@e
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@10
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@12
    check-cast v1, Landroid/os/Bundle;

    #@14
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager$MoveCallback;->onCreated(ILandroid/os/Bundle;)V

    #@17
    .line 2168
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1a
    .line 2169
    return v5

    #@1b
    .line 2172
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1f
    .line 2173
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    #@21
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@23
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@25
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@27
    check-cast v1, Ljava/lang/Long;

    #@29
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@2c
    move-result-wide v6

    #@2d
    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    #@30
    .line 2174
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@33
    .line 2175
    return v5

    #@34
    .line 2164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreated(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2183
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 2184
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@6
    .line 2185
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 2186
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mHandler:Landroid/os/Handler;

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 2182
    return-void
.end method

.method public onStatusChanged(IIJ)V
    .locals 3
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    #@0
    .prologue
    .line 2191
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 2192
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@6
    .line 2193
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@8
    .line 2194
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v1

    #@c
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@e
    .line 2195
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mHandler:Landroid/os/Handler;

    #@10
    const/4 v2, 0x2

    #@11
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@18
    .line 2190
    return-void
.end method
