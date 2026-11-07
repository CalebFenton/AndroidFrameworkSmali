.class public final synthetic Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    check-cast p1, Landroid/service/displayhash/DisplayHashingService;

    check-cast p2, [B

    check-cast p3, Landroid/view/displayhash/DisplayHash;

    check-cast p4, Landroid/os/RemoteCallback;

    invoke-static {p1, p2, p3, p4}, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->$r8$lambda$NV6g_6QNBhFMehF0NaRzYbUgOGU(Landroid/service/displayhash/DisplayHashingService;[BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V

    return-void
.end method
