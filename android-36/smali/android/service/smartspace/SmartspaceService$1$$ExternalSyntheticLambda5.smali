.class public final synthetic Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p1, Landroid/service/smartspace/SmartspaceService;

    check-cast p2, Landroid/app/smartspace/SmartspaceSessionId;

    invoke-static {p1, p2}, Landroid/service/smartspace/SmartspaceService$1;->$r8$lambda$NJ3IgkAOxkZC_JEnBs7ZefJs7y4(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method
