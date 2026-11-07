.class public final synthetic Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/MessagingGroup;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/MessagingGroup;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/widget/MessagingGroup;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/widget/MessagingGroup;

    check-cast p1, Lcom/android/internal/widget/MessagingMessage;

    invoke-static {v0, p1}, Lcom/android/internal/widget/MessagingGroup;->$r8$lambda$n5AsO7zNzS_MtbzACdAJwedZLXk(Lcom/android/internal/widget/MessagingGroup;Lcom/android/internal/widget/MessagingMessage;)Z

    move-result p1

    return p1
.end method
