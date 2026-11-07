.class public final synthetic Landroid/media/AudioManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/AudioManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioManager$$ExternalSyntheticLambda1;->f$0:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/media/AudioManager$$ExternalSyntheticLambda1;->f$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->$r8$lambda$LEvpE2354yaNthQbaYAccBTHjyY(Landroid/media/AudioManager;)Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    move-result-object v0

    return-object v0
.end method
