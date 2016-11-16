.class final Lcom/android/server/input/InputManagerService$LocalService;
.super Landroid/hardware/input/InputManagerInternal;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    #@0
    .prologue
    .line 2264
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-direct {p0}, Landroid/hardware/input/InputManagerInternal;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public injectInputEvent(Landroid/view/InputEvent;II)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    #@0
    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->-wrap0(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 2284
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 2285
    .local v0, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 2286
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 2287
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    #@a
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-get1(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x7

    #@f
    const/4 v3, 0x0

    #@10
    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 2283
    return-void
.end method

.method public setDisplayViewports(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .locals 1
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    #@0
    .prologue
    .line 2268
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->-wrap13(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    #@5
    .line 2267
    return-void
.end method

.method public setInteractive(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    #@0
    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get2(Lcom/android/server/input/InputManagerService;)J

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->-wrap7(JZ)V

    #@9
    .line 2277
    return-void
.end method

.method public setPulseGestureEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2298
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->-get0(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    #@5
    move-result-object v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 2299
    const/4 v1, 0x0

    #@9
    .line 2301
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    #@b
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    #@d
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->-get0(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    #@10
    move-result-object v3

    #@11
    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 2302
    .end local v1    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    if-eqz p1, :cond_1

    #@16
    :try_start_1
    const-string/jumbo v3, "1"

    #@19
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1c
    .line 2306
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1f
    .line 2297
    .end local v2    # "writer":Ljava/io/FileWriter;
    :cond_0
    :goto_1
    return-void

    #@20
    .line 2302
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :cond_1
    :try_start_2
    const-string/jumbo v3, "0"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    goto :goto_0

    #@24
    .line 2303
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    #@25
    .line 2304
    .end local v1    # "writer":Ljava/io/FileWriter;
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v3, "InputManager"

    #@28
    const-string/jumbo v4, "Unable to setPulseGestureEnabled"

    #@2b
    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2e
    .line 2306
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@31
    goto :goto_1

    #@32
    .line 2305
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@33
    .line 2306
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@36
    .line 2305
    throw v3

    #@37
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    #@38
    move-object v1, v2

    #@39
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v1, "writer":Ljava/io/FileWriter;
    goto :goto_3

    #@3a
    .line 2303
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    #@3b
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@3c
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public toggleCapsLock(I)V
    .locals 2
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 2293
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get2(Lcom/android/server/input/InputManagerService;)J

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->-wrap8(JI)V

    #@9
    .line 2292
    return-void
.end method
