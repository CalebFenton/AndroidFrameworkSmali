.class public final synthetic Landroid/net/http/CronetEngineWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/http/CronetExceptionTranslationUtils$CronetRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/http/CronetEngineWrapper;

.field public final synthetic blacklist f$1:Ljava/net/URL;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/http/CronetEngineWrapper;Ljava/net/URL;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/http/CronetEngineWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/net/http/CronetEngineWrapper;

    iput-object p2, p0, Landroid/net/http/CronetEngineWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final blacklist run()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/http/CronetEngineWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/net/http/CronetEngineWrapper;

    iget-object v1, p0, Landroid/net/http/CronetEngineWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/net/URL;

    invoke-static {v0, v1}, Landroid/net/http/CronetEngineWrapper;->$r8$lambda$N5bmx-f5Fe5mRvQLbS9uJOpVIvI(Landroid/net/http/CronetEngineWrapper;Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method
