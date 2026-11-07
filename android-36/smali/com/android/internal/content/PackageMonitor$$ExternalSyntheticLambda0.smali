.class public final synthetic Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/content/PackageMonitor;

.field public final synthetic blacklist f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/content/PackageMonitor;

    iput-object p2, p0, Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/internal/content/PackageMonitor;->$r8$lambda$bSKEInwdT6Kd7GAyzMZPsXTTqeQ(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V

    return-void
.end method
