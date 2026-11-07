.class public final synthetic Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;

    iput p2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->$r8$lambda$p2Us45TFcGJxKVUnZv1-C1muzOI(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;I)V

    return-void
.end method
