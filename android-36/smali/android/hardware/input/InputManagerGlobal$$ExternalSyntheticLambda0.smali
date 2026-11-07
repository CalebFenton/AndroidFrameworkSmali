.class public final synthetic Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/input/InputManagerGlobal$TestSession;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/input/InputManagerGlobal;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/input/InputManagerGlobal;

    return-void
.end method


# virtual methods
.method public final whitelist test-api close()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0}, Landroid/hardware/input/InputManagerGlobal;->lambda$createTestSession$0(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method
