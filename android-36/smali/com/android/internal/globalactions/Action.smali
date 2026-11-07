.class public interface abstract Lcom/android/internal/globalactions/Action;
.super Ljava/lang/Object;
.source "Action.java"


# virtual methods
.method public abstract blacklist create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public abstract blacklist getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract blacklist isEnabled()Z
.end method

.method public abstract blacklist onPress()V
.end method

.method public abstract blacklist showBeforeProvisioning()Z
.end method

.method public abstract blacklist showDuringKeyguard()Z
.end method
