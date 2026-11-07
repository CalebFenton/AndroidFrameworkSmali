.class public interface abstract Landroid/service/games/GameSession$ScreenshotCallback;
.super Ljava/lang/Object;
.source "GameSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenshotCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/GameSession$ScreenshotCallback$ScreenshotFailureStatus;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_TAKE_SCREENSHOT_INTERNAL_ERROR:I


# virtual methods
.method public abstract whitelist onFailure(I)V
.end method

.method public abstract whitelist onSuccess()V
.end method
