.class public interface abstract Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnKeyboardActionListener"
.end annotation


# virtual methods
.method public abstract whitelist onKey(I[I)V
.end method

.method public abstract whitelist onPress(I)V
.end method

.method public abstract whitelist onRelease(I)V
.end method

.method public abstract whitelist onText(Ljava/lang/CharSequence;)V
.end method

.method public abstract whitelist swipeDown()V
.end method

.method public abstract whitelist swipeLeft()V
.end method

.method public abstract whitelist swipeRight()V
.end method

.method public abstract whitelist swipeUp()V
.end method
