.class public final synthetic Lcom/android/internal/widget/PeopleHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/CachingIconView;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/CachingIconView;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/PeopleHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/CachingIconView;

    iput-boolean p2, p0, Lcom/android/internal/widget/PeopleHelper$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/widget/PeopleHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/CachingIconView;

    iget-boolean v1, p0, Lcom/android/internal/widget/PeopleHelper$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->lambda$animateViewForceHidden$0(Lcom/android/internal/widget/CachingIconView;Z)V

    return-void
.end method
