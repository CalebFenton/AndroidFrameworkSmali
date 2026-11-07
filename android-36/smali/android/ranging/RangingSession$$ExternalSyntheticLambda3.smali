.class public final synthetic Landroid/ranging/RangingSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/ranging/RangingSession$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/ranging/RangingSession$Callback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda3;->f$0:Landroid/ranging/RangingSession$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda3;->f$0:Landroid/ranging/RangingSession$Callback;

    invoke-interface {v0}, Landroid/ranging/RangingSession$Callback;->onOpened()V

    return-void
.end method
