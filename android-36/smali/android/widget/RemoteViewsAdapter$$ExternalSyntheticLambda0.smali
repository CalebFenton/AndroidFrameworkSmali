.class public final synthetic Landroid/widget/RemoteViewsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->lambda$saveRemoteViewsCache$0(Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V

    return-void
.end method
