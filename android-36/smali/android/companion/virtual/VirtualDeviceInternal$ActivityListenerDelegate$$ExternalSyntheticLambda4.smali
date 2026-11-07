.class public final synthetic Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda4;->f$0:Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    iput p2, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda4;->f$0:Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, v1}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->$r8$lambda$nJVQ8kY_b5c1qDPKyh5xLPdWH1w(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;I)V

    return-void
.end method
