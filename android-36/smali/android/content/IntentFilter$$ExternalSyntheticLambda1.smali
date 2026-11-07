.class public final synthetic Landroid/content/IntentFilter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/IntentFilter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/IntentFilter$$ExternalSyntheticLambda1;->f$0:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/content/IntentFilter$$ExternalSyntheticLambda1;->f$0:Landroid/content/IntentFilter;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Landroid/content/IntentFilter;->$r8$lambda$7fG1TJiUF1fBw-hL3L4xfxnN-nI(Landroid/content/IntentFilter;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
