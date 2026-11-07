.class public final synthetic Landroid/service/contentsuggestions/ContentSuggestionsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/contentsuggestions/ISelectionsCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$$ExternalSyntheticLambda0;->f$0:Landroid/app/contentsuggestions/ISelectionsCallback;

    return-void
.end method


# virtual methods
.method public final whitelist onContentSelectionsAvailable(ILjava/util/List;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService$$ExternalSyntheticLambda0;->f$0:Landroid/app/contentsuggestions/ISelectionsCallback;

    invoke-static {v0, p1, p2}, Landroid/service/contentsuggestions/ContentSuggestionsService;->lambda$wrapSelectionsCallback$0(Landroid/app/contentsuggestions/ISelectionsCallback;ILjava/util/List;)V

    return-void
.end method
