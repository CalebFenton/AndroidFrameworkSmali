.class Landroid/app/UiModeManager$1;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/UiModeManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/UiModeManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/UiModeManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 795
    iput-object p1, p0, Landroid/app/UiModeManager$1;->this$0:Landroid/app/UiModeManager;

    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 3
    .param p1, "query"    # Ljava/lang/Void;

    .line 800
    iget-object v0, p0, Landroid/app/UiModeManager$1;->this$0:Landroid/app/UiModeManager;

    invoke-static {v0}, Landroid/app/UiModeManager;->-$$Nest$mgetCurrentModeTypeFromServer(Landroid/app/UiModeManager;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 795
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/app/UiModeManager$1;->apply(Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
