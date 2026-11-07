.class public final synthetic Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/Context;

.field public final synthetic blacklist f$1:[Ljava/lang/String;

.field public final synthetic blacklist f$2:Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda1;->f$2:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MediaScannerConnection$$ExternalSyntheticLambda1;->f$2:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-static {v0, v1, v2}, Landroid/media/MediaScannerConnection;->lambda$scanFile$1(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method
