.class public final synthetic Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$$ExternalSyntheticLambda0;->f$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$$ExternalSyntheticLambda0;->f$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->$r8$lambda$v-zQmMXFQ9fkWva-bGATn7CMvwg(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;Ljava/util/List;)V

    return-void
.end method
