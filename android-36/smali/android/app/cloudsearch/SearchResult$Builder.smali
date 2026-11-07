.class public final Landroid/app/cloudsearch/SearchResult$Builder;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "extraInfos"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/cloudsearch/SearchResult;
    .registers 3

    .line 238
    new-instance v0, Landroid/app/cloudsearch/SearchResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/cloudsearch/SearchResult;-><init>(Landroid/app/cloudsearch/SearchResult-IA;)V

    return-object v0
.end method

.method public whitelist setExtraInfos(Landroid/os/Bundle;)Landroid/app/cloudsearch/SearchResult$Builder;
    .registers 2
    .param p1, "extraInfos"    # Landroid/os/Bundle;

    .line 232
    return-object p0
.end method

.method public whitelist setScore(F)Landroid/app/cloudsearch/SearchResult$Builder;
    .registers 2
    .param p1, "score"    # F

    .line 226
    return-object p0
.end method

.method public whitelist setSnippet(Ljava/lang/String;)Landroid/app/cloudsearch/SearchResult$Builder;
    .registers 2
    .param p1, "snippet"    # Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/String;)Landroid/app/cloudsearch/SearchResult$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 214
    return-object p0
.end method
