.class final synthetic Lcom/android/server/pm/ShortcutService$LocalService$-void_onSystemLocaleChangedNoLock__LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService$LocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onSystemLocaleChangedNoLock__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/pm/ShortcutService$LocalService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$LocalService;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService$-void_onSystemLocaleChangedNoLock__LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService$LocalService;

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService$-void_onSystemLocaleChangedNoLock__LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService$LocalService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$LocalService;->-com_android_server_pm_ShortcutService$LocalService_lambda$4()V

    #@5
    return-void
.end method
