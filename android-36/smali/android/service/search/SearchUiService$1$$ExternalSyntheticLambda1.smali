.class public final synthetic Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda1;
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
    check-cast p1, Landroid/service/search/SearchUiService;

    check-cast p2, Landroid/app/search/SearchContext;

    check-cast p3, Landroid/app/search/SearchSessionId;

    invoke-virtual {p1, p2, p3}, Landroid/service/search/SearchUiService;->onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    return-void
.end method
