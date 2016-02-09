.class Lcom/android/server/InputMethodManagerService$SessionState;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionState"
.end annotation


# instance fields
.field channel:Landroid/view/InputChannel;

.field final client:Lcom/android/server/InputMethodManagerService$ClientState;

.field final method:Lcom/android/internal/view/IInputMethod;

.field session:Lcom/android/internal/view/IInputMethodSession;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .locals 0
    .param p1, "_client"    # Lcom/android/server/InputMethodManagerService$ClientState;
    .param p2, "_method"    # Lcom/android/internal/view/IInputMethod;
    .param p3, "_session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p4, "_channel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 246
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$SessionState;->client:Lcom/android/server/InputMethodManagerService$ClientState;

    #@5
    .line 247
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@7
    .line 248
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@9
    .line 249
    iput-object p4, p0, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@b
    .line 245
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SessionState{uid "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SessionState;->client:Lcom/android/server/InputMethodManagerService$ClientState;

    #@e
    iget v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, " pid "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SessionState;->client:Lcom/android/server/InputMethodManagerService$ClientState;

    #@1d
    iget v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 236
    const-string/jumbo v1, " method "

    #@26
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 237
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    #@2c
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@2f
    move-result v1

    #@30
    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 238
    const-string/jumbo v1, " session "

    #@3b
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 239
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    #@41
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@44
    move-result v1

    #@45
    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 240
    const-string/jumbo v1, " channel "

    #@50
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    .line 240
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    #@56
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 241
    const-string/jumbo v1, "}"

    #@5d
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    return-object v0
.end method
