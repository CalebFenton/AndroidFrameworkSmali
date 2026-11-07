.class public final synthetic Landroid/provider/FontsContract$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/provider/FontRequest;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic blacklist f$3:Ljava/util/concurrent/locks/Lock;

.field public final synthetic blacklist f$4:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic blacklist f$5:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic blacklist f$6:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/provider/FontRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$0:Landroid/provider/FontRequest;

    iput-object p2, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$3:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$4:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$5:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p7, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$6:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 8

    .line 0
    iget-object v0, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$0:Landroid/provider/FontRequest;

    iget-object v1, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$3:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$4:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$5:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v6, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;->f$6:Ljava/util/concurrent/locks/Condition;

    invoke-static/range {v0 .. v6}, Landroid/provider/FontsContract;->lambda$getFontSync$0(Landroid/provider/FontRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V

    return-void
.end method
