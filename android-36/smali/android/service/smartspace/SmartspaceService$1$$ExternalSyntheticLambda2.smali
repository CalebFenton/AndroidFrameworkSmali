.class public final synthetic Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    check-cast p1, Landroid/service/smartspace/SmartspaceService;

    check-cast p2, Landroid/app/smartspace/SmartspaceConfig;

    check-cast p3, Landroid/app/smartspace/SmartspaceSessionId;

    invoke-static {p1, p2, p3}, Landroid/service/smartspace/SmartspaceService$1;->$r8$lambda$L6lsvi4rwPHbSAoB5XXcZ9urOGE(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method
