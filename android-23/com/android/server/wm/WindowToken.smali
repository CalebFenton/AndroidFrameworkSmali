.class Lcom/android/server/wm/WindowToken;
.super Ljava/lang/Object;
.source "WindowToken.java"


# instance fields
.field appWindowToken:Lcom/android/server/wm/AppWindowToken;

.field final explicit:Z

.field hasVisible:Z

.field hidden:Z

.field paused:Z

.field sendingToBottom:Z

.field final service:Lcom/android/server/wm/WindowManagerService;

.field stringName:Ljava/lang/String;

.field final token:Landroid/os/IBinder;

.field waitingToShow:Z

.field final windowType:I

.field final windows:Lcom/android/server/wm/WindowList;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V
    .locals 1
    .param p1, "_service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/os/IBinder;
    .param p3, "type"    # I
    .param p4, "_explicit"    # Z

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Lcom/android/server/wm/WindowList;

    #@5
    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@a
    .line 54
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    #@d
    .line 71
    iput-object p1, p0, Lcom/android/server/wm/WindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    #@f
    .line 72
    iput-object p2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    #@11
    .line 73
    iput p3, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    #@13
    .line 74
    iput-boolean p4, p0, Lcom/android/server/wm/WindowToken;->explicit:Z

    #@15
    .line 70
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "windows="

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e
    .line 89
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    const-string/jumbo v0, "windowType="

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    iget v0, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    #@19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1c
    .line 90
    const-string/jumbo v0, " hidden="

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@27
    .line 91
    const-string/jumbo v0, " hasVisible="

    #@2a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@32
    .line 92
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    #@34
    if-nez v0, :cond_0

    #@36
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    #@38
    if-eqz v0, :cond_1

    #@3a
    .line 93
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    const-string/jumbo v0, "waitingToShow="

    #@40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    #@45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@48
    .line 94
    const-string/jumbo v0, " sendingToBottom="

    #@4b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    #@50
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@53
    .line 87
    :cond_1
    return-void
.end method

.method removeAllWindows()V
    .locals 3

    #@0
    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "winNdx":I
    :goto_0
    if-ltz v1, :cond_0

    #@a
    .line 79
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@c
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@12
    .line 82
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@14
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    #@17
    .line 78
    add-int/lit8 v1, v1, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 84
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    #@1c
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->clear()V

    #@1f
    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 102
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "WindowToken{"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 103
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 104
    const-string/jumbo v1, " "

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    const/16 v1, 0x7d

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    #@30
    .line 107
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    #@32
    return-object v1
.end method
