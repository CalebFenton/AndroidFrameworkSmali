.class Lcom/android/internal/app/EphemeralResolverService$1;
.super Lcom/android/internal/app/IEphemeralResolver$Stub;
.source "EphemeralResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/EphemeralResolverService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/EphemeralResolverService;


# direct methods
.method constructor <init>(Lcom/android/internal/app/EphemeralResolverService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/EphemeralResolverService;

    #@0
    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/app/EphemeralResolverService$1;->this$0:Lcom/android/internal/app/EphemeralResolverService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/app/IEphemeralResolver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getEphemeralResolveInfoList(Landroid/os/IRemoteCallback;II)V
    .locals 2
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "digestPrefix"    # I
    .param p3, "sequence"    # I

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/EphemeralResolverService$1;->this$0:Lcom/android/internal/app/EphemeralResolverService;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/EphemeralResolverService;->-get0(Lcom/android/internal/app/EphemeralResolverService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 62
    return-void
.end method
