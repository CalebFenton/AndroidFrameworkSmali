.class public final synthetic Landroid/service/rotationresolver/RotationResolverService$1$$ExternalSyntheticLambda0;
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
    check-cast p1, Landroid/service/rotationresolver/RotationResolverService;

    check-cast p2, Landroid/service/rotationresolver/IRotationResolverCallback;

    check-cast p3, Landroid/service/rotationresolver/RotationResolutionRequest;

    check-cast p4, Landroid/os/ICancellationSignal;

    invoke-static {p1, p2, p3, p4}, Landroid/service/rotationresolver/RotationResolverService$1;->$r8$lambda$_sYkl0Zwu5OueDc7egj29Ihhz3Y(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/ICancellationSignal;)V

    return-void
.end method
