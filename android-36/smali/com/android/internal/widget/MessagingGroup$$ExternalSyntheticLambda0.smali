.class public final synthetic Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewGroup;

.field public final synthetic blacklist f$1:Landroid/view/View;

.field public final synthetic blacklist f$2:Lcom/android/internal/widget/MessagingMessage;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/internal/widget/MessagingMessage;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/widget/MessagingMessage;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/widget/MessagingMessage;

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/MessagingGroup;->lambda$removeMessage$0(Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/internal/widget/MessagingMessage;)V

    return-void
.end method
