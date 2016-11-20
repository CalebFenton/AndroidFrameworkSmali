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
    .line 115
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
    .line 118
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
    .line 119
    const-string/jumbo v1, "Pinned Files:"

    #@12
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15
    .line 120
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    #@18
    invoke-static {v1}, Lcom/android/server/PinnerService;->-get1(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v1

    #@20
    if-ge v0, v1, :cond_0

    #@22
    .line 121
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    #@24
    invoke-static {v1}, Lcom/android/server/PinnerService;->-get1(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Ljava/lang/String;

    #@2e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31
    .line 120
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 117
    :cond_0
    return-void
.end method
