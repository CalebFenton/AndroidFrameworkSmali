.class public interface abstract Lcom/android/internal/widget/IMessagingLayout;
.super Ljava/lang/Object;
.source "IMessagingLayout.java"


# virtual methods
.method public abstract blacklist getContext()Landroid/content/Context;
.end method

.method public abstract blacklist getMessagingGroups()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;
.end method

.method public abstract blacklist setMessagingClippingDisabled(Z)V
.end method
