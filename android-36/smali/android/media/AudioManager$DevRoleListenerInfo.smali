.class Landroid/media/AudioManager$DevRoleListenerInfo;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevRoleListenerInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TT;)V"
        }
    .end annotation

    .line 2842
    .local p0, "this":Landroid/media/AudioManager$DevRoleListenerInfo;, "Landroid/media/AudioManager$DevRoleListenerInfo<TT;>;"
    .local p3, "listener":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2843
    iput-object p2, p0, Landroid/media/AudioManager$DevRoleListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2844
    iput-object p3, p0, Landroid/media/AudioManager$DevRoleListenerInfo;->mListener:Ljava/lang/Object;

    .line 2845
    return-void
.end method
