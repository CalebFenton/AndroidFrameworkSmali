.class Landroid/media/AudioManager$FocusEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/AudioManager;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2129
    iput-object p1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 2131
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@9
    move-result-object v0

    #@a
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    #@c
    .line 2132
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@f
    move-result-object v0

    #@10
    .line 2135
    :cond_0
    if-eqz v0, :cond_1

    #@12
    .line 2137
    new-instance v1, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;

    #@14
    invoke-direct {v1, p0, v0}, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;-><init>(Landroid/media/AudioManager$FocusEventHandlerDelegate;Landroid/os/Looper;)V

    #@17
    iput-object v1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@19
    .line 2129
    :goto_0
    return-void

    #@1a
    .line 2152
    :cond_1
    iput-object v1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@1c
    goto :goto_0
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 2157
    iget-object v0, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method
