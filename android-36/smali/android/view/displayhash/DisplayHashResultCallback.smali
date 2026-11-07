.class public interface abstract Landroid/view/displayhash/DisplayHashResultCallback;
.super Ljava/lang/Object;
.source "DisplayHashResultCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/displayhash/DisplayHashResultCallback$DisplayHashErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist DISPLAY_HASH_ERROR_INVALID_BOUNDS:I = -0x2

.field public static final whitelist DISPLAY_HASH_ERROR_INVALID_HASH_ALGORITHM:I = -0x5

.field public static final whitelist DISPLAY_HASH_ERROR_MISSING_WINDOW:I = -0x3

.field public static final whitelist DISPLAY_HASH_ERROR_NOT_VISIBLE_ON_SCREEN:I = -0x4

.field public static final whitelist DISPLAY_HASH_ERROR_TOO_MANY_REQUESTS:I = -0x6

.field public static final whitelist DISPLAY_HASH_ERROR_UNKNOWN:I = -0x1

.field public static final blacklist EXTRA_DISPLAY_HASH:Ljava/lang/String; = "DISPLAY_HASH"

.field public static final blacklist EXTRA_DISPLAY_HASH_ERROR_CODE:Ljava/lang/String; = "DISPLAY_HASH_ERROR_CODE"


# virtual methods
.method public abstract whitelist onDisplayHashError(I)V
.end method

.method public abstract whitelist onDisplayHashResult(Landroid/view/displayhash/DisplayHash;)V
.end method
