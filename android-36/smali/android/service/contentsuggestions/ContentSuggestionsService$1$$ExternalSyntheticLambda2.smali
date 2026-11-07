.class public final synthetic Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    check-cast p1, Landroid/service/contentsuggestions/ContentSuggestionsService;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3}, Landroid/service/contentsuggestions/ContentSuggestionsService;->onNotifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
