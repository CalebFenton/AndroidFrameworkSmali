.class public interface abstract Landroid/text/Spannable;
.super Ljava/lang/Object;
.source "Spannable.java"

# interfaces
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Spannable$Factory;
    }
.end annotation


# virtual methods
.method public abstract whitelist removeSpan(Ljava/lang/Object;)V
.end method

.method public greylist-max-o removeSpan(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .line 59
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public abstract whitelist setSpan(Ljava/lang/Object;III)V
.end method
