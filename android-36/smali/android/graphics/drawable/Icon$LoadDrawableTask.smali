.class Landroid/graphics/drawable/Icon$LoadDrawableTask;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDrawableTask"
.end annotation


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;

.field final greylist-max-o mMessage:Landroid/os/Message;

.field final synthetic blacklist this$0:Landroid/graphics/drawable/Icon;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Handler;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1195
    iput-object p1, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->this$0:Landroid/graphics/drawable/Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1196
    iput-object p2, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mContext:Landroid/content/Context;

    .line 1197
    new-instance v0, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;

    invoke-direct {v0, p0, p1, p4}, Landroid/graphics/drawable/Icon$LoadDrawableTask$1;-><init>(Landroid/graphics/drawable/Icon$LoadDrawableTask;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V

    invoke-static {p3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mMessage:Landroid/os/Message;

    .line 1203
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Message;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1205
    iput-object p1, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->this$0:Landroid/graphics/drawable/Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    iput-object p2, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mContext:Landroid/content/Context;

    .line 1207
    iput-object p3, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mMessage:Landroid/os/Message;

    .line 1208
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1212
    iget-object v0, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mMessage:Landroid/os/Message;

    iget-object v1, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->this$0:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1213
    iget-object v0, p0, Landroid/graphics/drawable/Icon$LoadDrawableTask;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1214
    return-void
.end method

.method public greylist-max-o runAsync()V
    .registers 2

    .line 1217
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1218
    return-void
.end method
