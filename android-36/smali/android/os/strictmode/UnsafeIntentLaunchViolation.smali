.class public final Landroid/os/strictmode/UnsafeIntentLaunchViolation;
.super Landroid/os/strictmode/Violation;
.source "UnsafeIntentLaunchViolation.java"


# instance fields
.field private transient blacklist mIntent:Landroid/content/Intent;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launch of unsafe intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/os/strictmode/UnsafeIntentLaunchViolation;->mIntent:Landroid/content/Intent;

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "message"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p2}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/os/strictmode/UnsafeIntentLaunchViolation;->mIntent:Landroid/content/Intent;

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/os/strictmode/UnsafeIntentLaunchViolation;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
