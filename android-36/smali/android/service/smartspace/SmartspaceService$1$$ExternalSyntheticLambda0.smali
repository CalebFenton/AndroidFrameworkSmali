.class public final synthetic Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda0;
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

    check-cast p2, Landroid/app/smartspace/SmartspaceSessionId;

    check-cast p3, Landroid/app/smartspace/ISmartspaceCallback;

    invoke-static {p1, p2, p3}, Landroid/service/smartspace/SmartspaceService$1;->$r8$lambda$_zo_QNGXZsvbxT35YWBt_JpXeFs(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method
