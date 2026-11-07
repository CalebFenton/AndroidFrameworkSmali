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
.method public constructor blacklist <init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p2, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2607
    invoke-direct {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 2608
    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .registers 3

    .line 2612
    invoke-super {p0}, Landroid/app/VoiceInteractor$PickOptionRequest;->onCancel()V

    .line 2613
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 2614
    .local v0, "ra":Lcom/android/internal/app/ResolverActivity;
    if-eqz v0, :cond_12

    .line 2615
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmPickOptionRequest(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)V

    .line 2616
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2618
    :cond_12
    return-void
.end method

.method public whitelist onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "finished"    # Z
    .param p2, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "result"    # Landroid/os/Bundle;

    .line 2622
    invoke-super {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 2623
    array-length v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 2626
    return-void

    .line 2629
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 2630
    .local v0, "ra":Lcom/android/internal/app/ResolverActivity;
    if-eqz v0, :cond_2e

    .line 2631
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, p2, v2

    .line 2632
    invoke-virtual {v3}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 2633
    .local v1, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2634
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmPickOptionRequest(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)V

    .line 2635
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2638
    .end local v1    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_2e
    return-void
.end method
