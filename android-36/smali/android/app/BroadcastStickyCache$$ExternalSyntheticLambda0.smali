.class public final synthetic Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IpcDataCache$RemoteCall;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/IApplicationThread;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/content/IntentFilter;

.field public final synthetic blacklist f$4:Ljava/lang/String;

.field public final synthetic blacklist f$5:I

.field public final synthetic blacklist f$6:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;II)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$0:Landroid/app/IApplicationThread;

    iput-object p2, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$3:Landroid/content/IntentFilter;

    iput-object p5, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput p6, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$5:I

    iput p7, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$6:I

    return-void
.end method


# virtual methods
.method public final blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 0
    iget-object v0, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$0:Landroid/app/IApplicationThread;

    iget-object v1, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$3:Landroid/content/IntentFilter;

    iget-object v4, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget v5, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$5:I

    iget v6, p0, Landroid/app/BroadcastStickyCache$$ExternalSyntheticLambda0;->f$6:I

    move-object v7, p1

    check-cast v7, Ljava/lang/Void;

    invoke-static/range {v0 .. v7}, Landroid/app/BroadcastStickyCache;->lambda$getIntent$0(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;IILjava/lang/Void;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
