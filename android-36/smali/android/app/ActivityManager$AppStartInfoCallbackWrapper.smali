.class final Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppStartInfoCallbackWrapper"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/ApplicationStartInfo;",
            ">;)V"
        }
    .end annotation

    .line 4367
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/ApplicationStartInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4368
    iput-object p1, p0, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4369
    iput-object p2, p0, Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    .line 4370
    return-void
.end method
