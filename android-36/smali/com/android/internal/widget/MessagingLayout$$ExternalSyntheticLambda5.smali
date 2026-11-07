.class public final synthetic Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/MessagingLayout;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/MessagingLayout;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/widget/MessagingLayout;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/widget/MessagingLayout;

    check-cast p1, Lcom/android/internal/widget/MessagingGroup;

    invoke-static {v0, p1}, Lcom/android/internal/widget/MessagingLayout;->$r8$lambda$248fl5uqIjPq-VF87Aq8LbUGTVg(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingGroup;)Z

    move-result p1

    return p1
.end method
