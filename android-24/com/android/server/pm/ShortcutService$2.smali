.class Lcom/android/server/pm/ShortcutService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 1965
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$2;->getChangingUserId()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->-wrap1(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@9
    .line 1967
    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1983
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$2;->getChangingUserId()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->-wrap2(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@9
    .line 1982
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$2;->getChangingUserId()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->-wrap3(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@9
    .line 1977
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$2;->getChangingUserId()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->-wrap4(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@9
    .line 1972
    return-void
.end method
