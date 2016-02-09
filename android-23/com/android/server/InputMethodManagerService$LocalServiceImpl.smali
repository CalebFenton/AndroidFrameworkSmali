.class final Lcom/android/server/InputMethodManagerService$LocalServiceImpl;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalServiceImpl"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 3740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3741
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    #@5
    .line 3740
    return-void
.end method


# virtual methods
.method public setInteractive(Z)V
    .locals 5
    .param p1, "interactive"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3747
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    #@3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    #@5
    .line 3748
    if-eqz p1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 3747
    :goto_0
    const/16 v4, 0xbd6

    #@a
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 3745
    return-void

    #@12
    :cond_0
    move v0, v1

    #@13
    .line 3748
    goto :goto_0
.end method
