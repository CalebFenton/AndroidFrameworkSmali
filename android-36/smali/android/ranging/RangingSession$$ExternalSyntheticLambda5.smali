.class public final synthetic Landroid/ranging/RangingSession$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/ranging/RangingSession;

.field public final synthetic blacklist f$1:Landroid/ranging/RangingDevice;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/ranging/RangingSession;Landroid/ranging/RangingDevice;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda5;->f$0:Landroid/ranging/RangingSession;

    iput-object p2, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda5;->f$1:Landroid/ranging/RangingDevice;

    iput p3, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda5;->f$0:Landroid/ranging/RangingSession;

    iget-object v1, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda5;->f$1:Landroid/ranging/RangingDevice;

    iget v2, p0, Landroid/ranging/RangingSession$$ExternalSyntheticLambda5;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/ranging/RangingSession;->$r8$lambda$SHtKMx1zKaouTnuY57n7ZfQDT_A(Landroid/ranging/RangingSession;Landroid/ranging/RangingDevice;I)V

    return-void
.end method
