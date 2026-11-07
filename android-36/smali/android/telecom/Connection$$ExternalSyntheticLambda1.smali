.class public final synthetic Landroid/telecom/Connection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telecom/Connection;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telecom/Connection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/Connection;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telecom/Connection$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/Connection;

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-static {v0, p1}, Landroid/telecom/Connection;->$r8$lambda$JahkKOxFKkY-gacugt0mnHTRRBk(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V

    return-void
.end method
