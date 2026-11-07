.class public Landroid/media/audiofx/DynamicsProcessing$Stage;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stage"
.end annotation


# instance fields
.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mInUse:Z


# direct methods
.method public constructor whitelist <init>(ZZ)V
    .registers 3
    .param p1, "inUse"    # Z
    .param p2, "enabled"    # Z

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mInUse:Z

    .line 321
    iput-boolean p2, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    .line 322
    return-void
.end method


# virtual methods
.method public whitelist isEnabled()Z
    .registers 2

    .line 329
    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    return v0
.end method

.method public whitelist isInUse()Z
    .registers 2

    .line 345
    iget-boolean v0, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mInUse:Z

    return v0
.end method

.method public whitelist setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 336
    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    .line 337
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->isInUse()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Stage InUse: %b\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Stage;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 353
    iget-boolean v1, p0, Landroid/media/audiofx/DynamicsProcessing$Stage;->mEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " Stage Enabled: %b\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
