.class Landroid/media/SoundPool$1;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SoundPool;


# direct methods
.method constructor <init>(Landroid/media/SoundPool;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/SoundPool;

    #@0
    .prologue
    .line 168
    iput-object p1, p0, Landroid/media/SoundPool$1;->this$0:Landroid/media/SoundPool;

    #@2
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public opChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Landroid/media/SoundPool$1;->this$0:Landroid/media/SoundPool;

    #@2
    invoke-static {v0}, Landroid/media/SoundPool;->-get1(Landroid/media/SoundPool;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 171
    const/16 v0, 0x1c

    #@9
    if-ne p1, v0, :cond_0

    #@b
    .line 172
    :try_start_0
    iget-object v0, p0, Landroid/media/SoundPool$1;->this$0:Landroid/media/SoundPool;

    #@d
    invoke-static {v0}, Landroid/media/SoundPool;->-wrap0(Landroid/media/SoundPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 169
    return-void

    #@12
    .line 170
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
