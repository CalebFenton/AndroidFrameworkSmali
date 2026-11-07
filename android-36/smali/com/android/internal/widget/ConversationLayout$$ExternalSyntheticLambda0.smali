.class public final synthetic Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/ConversationLayout;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/ConversationLayout;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/ConversationLayout;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/ConversationLayout;

    check-cast p1, Lcom/android/internal/widget/MessagingGroup;

    invoke-static {v0, p1}, Lcom/android/internal/widget/ConversationLayout;->$r8$lambda$yqVyMFOj2KUVULPU5rMn4phW6Yk(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)Z

    move-result p1

    return p1
.end method
