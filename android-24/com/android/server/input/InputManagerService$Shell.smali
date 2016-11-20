.class Lcom/android/server/input/InputManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    #@0
    .prologue
    .line 2232
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$Shell;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$Shell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$Shell;-><init>(Lcom/android/server/input/InputManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2235
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Shell;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/InputManagerService;->onShellCommand(Lcom/android/server/input/InputManagerService$Shell;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onHelp()V
    .locals 2

    #@0
    .prologue
    .line 2240
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 2241
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Input manager commands:"

    #@7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 2242
    const-string/jumbo v1, "  help"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 2243
    const-string/jumbo v1, "    Print this help text."

    #@13
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 2244
    const-string/jumbo v1, ""

    #@19
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 2245
    const-string/jumbo v1, "  setlayout IME_ID IME_SUPTYPE_HASH_CODE DEVICE_DESCRIPTOR VENDOR_ID PRODUCT_ID KEYBOARD_DESCRIPTOR"

    #@1f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 2247
    const-string/jumbo v1, "    Sets a keyboard layout for a given IME subtype and input device pair"

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 2239
    return-void
.end method
