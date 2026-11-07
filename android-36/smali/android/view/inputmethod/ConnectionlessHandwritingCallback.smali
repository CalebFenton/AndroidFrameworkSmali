.class public interface abstract Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
.super Ljava/lang/Object;
.source "ConnectionlessHandwritingCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/ConnectionlessHandwritingCallback$ConnectionlessHandwritingError;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTIONLESS_HANDWRITING_ERROR_NO_TEXT_RECOGNIZED:I = 0x0

.field public static final whitelist CONNECTIONLESS_HANDWRITING_ERROR_OTHER:I = 0x2

.field public static final whitelist CONNECTIONLESS_HANDWRITING_ERROR_UNSUPPORTED:I = 0x1


# virtual methods
.method public abstract whitelist onError(I)V
.end method

.method public abstract whitelist onResult(Ljava/lang/CharSequence;)V
.end method
