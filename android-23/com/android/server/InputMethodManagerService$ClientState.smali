.class final Lcom/android/server/InputMethodManagerService$ClientState;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClientState"
.end annotation


# instance fields
.field final binding:Landroid/view/inputmethod/InputBinding;

.field final client:Lcom/android/internal/view/IInputMethodClient;

.field curSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field final inputContext:Lcom/android/internal/view/IInputContext;

.field final pid:I

.field sessionRequested:Z

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .locals 5
    .param p1, "_client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "_inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "_uid"    # I
    .param p4, "_pid"    # I

    #@0
    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 272
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    #@5
    .line 273
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    #@7
    .line 274
    iput p3, p0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@9
    .line 275
    iput p4, p0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@b
    .line 276
    new-instance v0, Landroid/view/inputmethod/InputBinding;

    #@d
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    #@f
    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@15
    iget v3, p0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@17
    const/4 v4, 0x0

    #@18
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/os/IBinder;II)V

    #@1b
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    #@1d
    .line 271
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ClientState{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 266
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 266
    const-string/jumbo v1, " uid "

    #@1b
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 266
    iget v1, p0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@21
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 267
    const-string/jumbo v1, " pid "

    #@28
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 267
    iget v1, p0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@2e
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 267
    const-string/jumbo v1, "}"

    #@35
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method
