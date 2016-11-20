.class final synthetic Lcom/android/server/pm/ShortcutService$-void__init__android_content_Context_context_android_os_Looper_looper_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__android_content_Context_context_android_os_Looper_looper_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$-void__init__android_content_Context_context_android_os_Looper_looper_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$-void__init__android_content_Context_context_android_os_Looper_looper_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService-mthref-0()V

    #@5
    return-void
.end method
