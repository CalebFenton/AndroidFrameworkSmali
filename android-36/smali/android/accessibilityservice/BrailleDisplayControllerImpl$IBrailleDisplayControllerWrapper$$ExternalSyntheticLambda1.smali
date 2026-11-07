.class public final synthetic Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    invoke-interface {v0}, Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;->onDisconnected()V

    return-void
.end method
