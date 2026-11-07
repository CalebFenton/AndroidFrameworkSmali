.class public final synthetic Landroid/app/KeyguardManager$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;JLandroid/os/UserHandle;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/KeyguardManager$5$$ExternalSyntheticLambda0;->f$0:Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;

    iput-wide p2, p0, Landroid/app/KeyguardManager$5$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Landroid/app/KeyguardManager$5$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/app/KeyguardManager$5$$ExternalSyntheticLambda0;->f$0:Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;

    iget-wide v1, p0, Landroid/app/KeyguardManager$5$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Landroid/app/KeyguardManager$5$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2, v3}, Landroid/app/KeyguardManager$5;->lambda$onWeakEscrowTokenActivated$0(Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;JLandroid/os/UserHandle;)V

    return-void
.end method
