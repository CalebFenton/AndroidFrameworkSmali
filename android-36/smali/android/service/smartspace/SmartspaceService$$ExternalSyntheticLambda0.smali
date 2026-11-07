.class public final synthetic Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/smartspace/SmartspaceService;

.field public final synthetic blacklist f$1:Ljava/util/ArrayList;

.field public final synthetic blacklist f$2:Landroid/service/smartspace/SmartspaceService$CallbackWrapper;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;->f$0:Landroid/service/smartspace/SmartspaceService;

    iput-object p2, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;->f$2:Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;->f$0:Landroid/service/smartspace/SmartspaceService;

    iget-object v1, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;->f$2:Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    invoke-static {v0, v1, v2}, Landroid/service/smartspace/SmartspaceService;->$r8$lambda$X2GHqjIaYN5npavClfuuWaFRXvQ(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method
