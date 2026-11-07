.class public final synthetic Landroid/service/contentsuggestions/ContentSuggestionsService$1$$ExternalSyntheticLambda3;
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

    check-cast p2, Landroid/app/contentsuggestions/SelectionsRequest;

    check-cast p3, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;

    invoke-virtual {p1, p2, p3}, Landroid/service/contentsuggestions/ContentSuggestionsService;->onSuggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;)V

    return-void
.end method
