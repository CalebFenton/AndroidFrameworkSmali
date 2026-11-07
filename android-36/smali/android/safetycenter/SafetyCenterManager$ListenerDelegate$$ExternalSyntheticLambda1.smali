.class public final synthetic Landroid/safetycenter/SafetyCenterManager$ListenerDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;

.field public final synthetic blacklist f$1:Landroid/safetycenter/SafetyCenterData;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;Landroid/safetycenter/SafetyCenterData;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;

    iput-object p2, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate$$ExternalSyntheticLambda1;->f$1:Landroid/safetycenter/SafetyCenterData;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate$$ExternalSyntheticLambda1;->f$1:Landroid/safetycenter/SafetyCenterData;

    invoke-static {v0, v1}, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->$r8$lambda$gAHYyvO8TRr2TMJIrUPlfESmQUI(Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;Landroid/safetycenter/SafetyCenterData;)V

    return-void
.end method
