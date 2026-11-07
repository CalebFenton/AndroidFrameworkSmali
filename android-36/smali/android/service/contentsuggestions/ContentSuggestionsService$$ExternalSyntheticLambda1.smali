.class public final synthetic Landroid/service/contentsuggestions/ContentSuggestionsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/contentsuggestions/IClassificationsCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$$ExternalSyntheticLambda1;->f$0:Landroid/app/contentsuggestions/IClassificationsCallback;

    return-void
.end method


# virtual methods
.method public final whitelist onContentClassificationsAvailable(ILjava/util/List;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$$ExternalSyntheticLambda1;->f$0:Landroid/app/contentsuggestions/IClassificationsCallback;

    invoke-static {v0, p1, p2}, Landroid/service/contentsuggestions/ContentSuggestionsService;->lambda$wrapClassificationCallback$1(Landroid/app/contentsuggestions/IClassificationsCallback;ILjava/util/List;)V

    return-void
.end method
