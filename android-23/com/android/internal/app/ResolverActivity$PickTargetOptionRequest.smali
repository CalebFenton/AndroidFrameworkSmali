.class Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
.super Landroid/app/VoiceInteractor$PickOptionRequest;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PickTargetOptionRequest"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p2, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1726
    invoke-direct {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    #@3
    .line 1725
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1731
    invoke-super {p0}, Landroid/app/VoiceInteractor$PickOptionRequest;->onCancel()V

    #@4
    .line 1732
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->getActivity()Landroid/app/Activity;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    #@a
    .line 1733
    .local v0, "ra":Lcom/android/internal/app/ResolverActivity;
    if-eqz v0, :cond_0

    #@c
    .line 1734
    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->-set1(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    #@f
    .line 1735
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@12
    .line 1730
    :cond_0
    return-void
.end method

.method public onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "finished"    # Z
    .param p2, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1741
    invoke-super {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    #@5
    .line 1742
    array-length v2, p2

    #@6
    const/4 v3, 0x1

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 1745
    return-void

    #@a
    .line 1748
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->getActivity()Landroid/app/Activity;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    #@10
    .line 1749
    .local v0, "ra":Lcom/android/internal/app/ResolverActivity;
    if-eqz v0, :cond_1

    #@12
    .line 1750
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get0(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@15
    move-result-object v2

    #@16
    aget-object v3, p2, v4

    #@18
    invoke-virtual {v3}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getIndex()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@1f
    move-result-object v1

    #@20
    .line 1751
    .local v1, "ti":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 1752
    invoke-static {v0, v5}, Lcom/android/internal/app/ResolverActivity;->-set1(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    #@29
    .line 1753
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    #@2c
    .line 1740
    .end local v1    # "ti":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_1
    return-void
.end method
