.class public final synthetic Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/content/ComponentName;

.field public final synthetic blacklist f$3:Landroid/os/UserHandle;

.field public final synthetic blacklist f$4:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;->f$0:Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    iput p2, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;->f$2:Landroid/content/ComponentName;

    iput-object p4, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;->f$3:Landroid/os/UserHandle;

    iput-object p5, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;->f$4:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;->f$0:Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;->f$2:Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;->f$3:Landroid/os/UserHandle;

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda5;->f$4:Landroid/content/IntentSender;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->$r8$lambda$71KUarUyJDWp7E0Q8jPWObnCYh8(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/IntentSender;)V

    return-void
.end method
