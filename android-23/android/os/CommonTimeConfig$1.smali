.class Landroid/os/CommonTimeConfig$1;
.super Ljava/lang/Object;
.source "CommonTimeConfig.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonTimeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CommonTimeConfig;


# direct methods
.method constructor <init>(Landroid/os/CommonTimeConfig;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/CommonTimeConfig;

    #@0
    .prologue
    .line 421
    iput-object p1, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    #@2
    invoke-static {v0}, Landroid/os/CommonTimeConfig;->-get0(Landroid/os/CommonTimeConfig;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 424
    :try_start_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    #@9
    invoke-static {v0}, Landroid/os/CommonTimeConfig;->-get1(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 425
    iget-object v0, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    #@11
    invoke-static {v0}, Landroid/os/CommonTimeConfig;->-get1(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0}, Landroid/os/CommonTimeConfig$OnServerDiedListener;->onServerDied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 422
    return-void

    #@1a
    .line 423
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method
