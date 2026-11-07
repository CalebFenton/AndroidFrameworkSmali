.class public final synthetic Landroid/service/autofill/InlineSuggestionRenderService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p1, Landroid/service/autofill/InlineSuggestionRenderService;

    check-cast p2, Landroid/os/RemoteCallback;

    invoke-static {p1, p2}, Landroid/service/autofill/InlineSuggestionRenderService$2;->$r8$lambda$g9hl4CUuJ1dr7Y9jzkKZijhA2uk(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/os/RemoteCallback;)V

    return-void
.end method
