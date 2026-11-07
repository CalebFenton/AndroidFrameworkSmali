.class public final synthetic Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 0
    check-cast p1, Landroid/service/displayhash/DisplayHashingService;

    check-cast p2, [B

    check-cast p3, Landroid/hardware/HardwareBuffer;

    check-cast p4, Landroid/graphics/Rect;

    check-cast p5, Ljava/lang/String;

    check-cast p6, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    invoke-virtual/range {p0 .. p5}, Landroid/service/displayhash/DisplayHashingService;->onGenerateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/view/displayhash/DisplayHashResultCallback;)V

    return-void
.end method
