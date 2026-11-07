.class public final synthetic Landroid/ranging/RangingSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/ranging/RangingSession;

.field public final synthetic blacklist f$1:Landroid/ranging/RangingDevice;

.field public final synthetic blacklist f$2:Landroid/ranging/RangingData;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/ranging/RangingSession;Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda1;->f$0:Landroid/ranging/RangingSession;

    iput-object p2, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda1;->f$1:Landroid/ranging/RangingDevice;

    iput-object p3, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda1;->f$2:Landroid/ranging/RangingData;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda1;->f$0:Landroid/ranging/RangingSession;

    iget-object v1, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda1;->f$1:Landroid/ranging/RangingDevice;

    iget-object v2, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda1;->f$2:Landroid/ranging/RangingData;

    invoke-static {v0, v1, v2}, Landroid/ranging/RangingSession;->$r8$lambda$peTSJ1xDCzA7ANsIwLgd6KOxHcE(Landroid/ranging/RangingSession;Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V

    return-void
.end method
