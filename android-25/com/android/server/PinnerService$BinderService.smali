.class final Lcom/android/server/PinnerService$BinderService;
.super Landroid/os/Binder;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PinnerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PinnerService;

    #@0
    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    #@2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PinnerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;)V

    #@3
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    #@2
    invoke-static {v1}, Lcom/android/server/PinnerService;->-get0(Lcom/android/server/PinnerService;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "android.permission.DUMP"

    #@9
    const-string/jumbo v3, "PinnerService"

    #@c
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 334
    const-string/jumbo v1, "Pinned Files:"

    #@12
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15
    .line 335
    monitor-enter p0

    #@16
    .line 336
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    #@19
    invoke-static {v1}, Lcom/android/server/PinnerService;->-get2(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v1

    #@21
    if-ge v0, v1, :cond_0

    #@23
    .line 337
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    #@25
    invoke-static {v1}, Lcom/android/server/PinnerService;->-get2(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Lcom/android/server/PinnerService$PinnedFile;

    #@2f
    iget-object v1, v1, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    #@31
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 336
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 339
    :cond_0
    const/4 v0, 0x0

    #@38
    :goto_1
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    #@3a
    invoke-static {v1}, Lcom/android/server/PinnerService;->-get1(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@41
    move-result v1

    #@42
    if-ge v0, v1, :cond_1

    #@44
    .line 340
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    #@46
    invoke-static {v1}, Lcom/android/server/PinnerService;->-get1(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Lcom/android/server/PinnerService$PinnedFile;

    #@50
    iget-object v1, v1, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    #@52
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    .line 339
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_1

    #@58
    :cond_1
    monitor-exit p0

    #@59
    .line 332
    return-void

    #@5a
    .line 335
    :catchall_0
    move-exception v1

    #@5b
    monitor-exit p0

    #@5c
    throw v1
.end method
