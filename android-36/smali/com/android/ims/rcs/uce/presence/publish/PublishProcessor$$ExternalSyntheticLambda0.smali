.class public final synthetic Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

.field public final synthetic blacklist f$1:Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    iput-object p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->$r8$lambda$ltFNqLCN9BPg_g4Gy-MdxW9s-gk(Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;Ljava/lang/Integer;)V

    return-void
.end method
