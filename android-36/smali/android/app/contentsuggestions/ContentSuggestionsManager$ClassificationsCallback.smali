.class public interface abstract Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;
.super Ljava/lang/Object;
.source "ContentSuggestionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/ContentSuggestionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClassificationsCallback"
.end annotation


# virtual methods
.method public abstract whitelist onContentClassificationsAvailable(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentClassification;",
            ">;)V"
        }
    .end annotation
.end method
