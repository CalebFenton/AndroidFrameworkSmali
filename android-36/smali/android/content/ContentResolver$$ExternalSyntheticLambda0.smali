.class public final synthetic Landroid/content/ContentResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/ContentInterface;

.field public final synthetic blacklist f$1:Landroid/net/Uri;

.field public final synthetic blacklist f$2:Landroid/os/Bundle;

.field public final synthetic blacklist f$3:Landroid/os/CancellationSignal;

.field public final synthetic blacklist f$4:Landroid/system/Int64Ref;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/ContentInterface;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/system/Int64Ref;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;->f$0:Landroid/content/ContentInterface;

    iput-object p2, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    iput-object p4, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;->f$3:Landroid/os/CancellationSignal;

    iput-object p5, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;->f$4:Landroid/system/Int64Ref;

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;->f$0:Landroid/content/ContentInterface;

    iget-object v1, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;->f$3:Landroid/os/CancellationSignal;

    iget-object v4, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda0;->f$4:Landroid/system/Int64Ref;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->lambda$loadThumbnail$0(Landroid/content/ContentInterface;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/system/Int64Ref;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method
