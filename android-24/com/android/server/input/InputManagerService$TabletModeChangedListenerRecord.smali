.class final Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabletModeChangedListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/input/ITabletModeChangedListener;

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "pid"    # I
    .param p3, "listener"    # Landroid/hardware/input/ITabletModeChangedListener;

    #@0
    .prologue
    .line 2186
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2187
    iput p2, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mPid:I

    #@7
    .line 2188
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mListener:Landroid/hardware/input/ITabletModeChangedListener;

    #@9
    .line 2186
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 2196
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    iget v1, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mPid:I

    #@4
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->-wrap10(Lcom/android/server/input/InputManagerService;I)V

    #@7
    .line 2192
    return-void
.end method

.method public notifyTabletModeChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    #@0
    .prologue
    .line 2201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mListener:Landroid/hardware/input/ITabletModeChangedListener;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/input/ITabletModeChangedListener;->onTabletModeChanged(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2199
    :goto_0
    return-void

    #@6
    .line 2202
    :catch_0
    move-exception v0

    #@7
    .line 2203
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputManager"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Failed to notify process "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget v3, p0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mPid:I

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 2204
    const-string/jumbo v3, " that tablet mode changed, assuming it died."

    #@1f
    .line 2203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    .line 2205
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->binderDied()V

    #@2d
    goto :goto_0
.end method
