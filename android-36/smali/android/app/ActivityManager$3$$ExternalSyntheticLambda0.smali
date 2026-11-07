.class public final synthetic Landroid/app/ActivityManager$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/app/ApplicationStartInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;Landroid/app/ApplicationStartInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$3$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

    iput-object p2, p0, Landroid/app/ActivityManager$3$$ExternalSyntheticLambda0;->f$1:Landroid/app/ApplicationStartInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/ActivityManager$3$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;

    iget-object v1, p0, Landroid/app/ActivityManager$3$$ExternalSyntheticLambda0;->f$1:Landroid/app/ApplicationStartInfo;

    invoke-static {v0, v1}, Landroid/app/ActivityManager$3;->lambda$onApplicationStartInfoComplete$0(Landroid/app/ActivityManager$AppStartInfoCallbackWrapper;Landroid/app/ApplicationStartInfo;)V

    return-void
.end method
