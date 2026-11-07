.class public final synthetic Lcom/android/ims/ImsManager$InstanceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/ims/FeatureConnector$ManagerFactory;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsManager$InstanceManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsManager$InstanceManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsManager$InstanceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/ImsManager$InstanceManager;

    return-void
.end method


# virtual methods
.method public final blacklist createManager(Landroid/content/Context;I)Lcom/android/ims/FeatureUpdates;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/ims/ImsManager$InstanceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/ImsManager$InstanceManager;

    invoke-static {v0, p1, p2}, Lcom/android/ims/ImsManager$InstanceManager;->$r8$lambda$GbiWC-UArTra26keVVSYscl8IIQ(Lcom/android/ims/ImsManager$InstanceManager;Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    return-object p1
.end method
