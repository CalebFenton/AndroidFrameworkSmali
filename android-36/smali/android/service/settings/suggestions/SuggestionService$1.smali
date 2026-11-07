.class Landroid/service/settings/suggestions/SuggestionService$1;
.super Landroid/service/settings/suggestions/ISuggestionService$Stub;
.source "SuggestionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/settings/suggestions/SuggestionService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/settings/suggestions/SuggestionService;


# direct methods
.method constructor blacklist <init>(Landroid/service/settings/suggestions/SuggestionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/settings/suggestions/SuggestionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 41
    iput-object p1, p0, Landroid/service/settings/suggestions/SuggestionService$1;->this$0:Landroid/service/settings/suggestions/SuggestionService;

    invoke-direct {p0}, Landroid/service/settings/suggestions/ISuggestionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dismissSuggestion(Landroid/service/settings/suggestions/Suggestion;)V
    .registers 3
    .param p1, "suggestion"    # Landroid/service/settings/suggestions/Suggestion;

    .line 55
    iget-object v0, p0, Landroid/service/settings/suggestions/SuggestionService$1;->this$0:Landroid/service/settings/suggestions/SuggestionService;

    invoke-virtual {v0, p1}, Landroid/service/settings/suggestions/SuggestionService;->onSuggestionDismissed(Landroid/service/settings/suggestions/Suggestion;)V

    .line 56
    return-void
.end method

.method public blacklist getSuggestions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroid/service/settings/suggestions/SuggestionService$1;->this$0:Landroid/service/settings/suggestions/SuggestionService;

    invoke-virtual {v0}, Landroid/service/settings/suggestions/SuggestionService;->onGetSuggestions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist launchSuggestion(Landroid/service/settings/suggestions/Suggestion;)V
    .registers 3
    .param p1, "suggestion"    # Landroid/service/settings/suggestions/Suggestion;

    .line 63
    iget-object v0, p0, Landroid/service/settings/suggestions/SuggestionService$1;->this$0:Landroid/service/settings/suggestions/SuggestionService;

    invoke-virtual {v0, p1}, Landroid/service/settings/suggestions/SuggestionService;->onSuggestionLaunched(Landroid/service/settings/suggestions/Suggestion;)V

    .line 64
    return-void
.end method
