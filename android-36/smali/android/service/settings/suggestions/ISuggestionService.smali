.class public interface abstract Landroid/service/settings/suggestions/ISuggestionService;
.super Ljava/lang/Object;
.source "ISuggestionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/suggestions/ISuggestionService$Stub;,
        Landroid/service/settings/suggestions/ISuggestionService$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o dismissSuggestion(Landroid/service/settings/suggestions/Suggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getSuggestions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o launchSuggestion(Landroid/service/settings/suggestions/Suggestion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
