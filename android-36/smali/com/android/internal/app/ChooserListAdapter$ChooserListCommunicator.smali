.class public interface abstract Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
.super Ljava/lang/Object;
.source "ChooserListAdapter.java"

# interfaces
.implements Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChooserListCommunicator"
.end annotation


# virtual methods
.method public abstract blacklist getMaxRankedTargets()I
.end method

.method public abstract blacklist isSendAction(Landroid/content/Intent;)Z
.end method

.method public abstract blacklist sendListViewUpdateMessage(Landroid/os/UserHandle;)V
.end method

.method public abstract blacklist shouldShowContentPreview()Z
.end method

.method public abstract blacklist shouldShowServiceTargets()Z
.end method
