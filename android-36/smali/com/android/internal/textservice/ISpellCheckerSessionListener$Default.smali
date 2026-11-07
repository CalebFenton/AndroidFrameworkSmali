.class public Lcom/android/internal/textservice/ISpellCheckerSessionListener$Default;
.super Ljava/lang/Object;
.source "ISpellCheckerSessionListener.java"

# interfaces
.implements Lcom/android/internal/textservice/ISpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ISpellCheckerSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 2
    .param p1, "result"    # [Landroid/view/textservice/SentenceSuggestionsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 2
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
