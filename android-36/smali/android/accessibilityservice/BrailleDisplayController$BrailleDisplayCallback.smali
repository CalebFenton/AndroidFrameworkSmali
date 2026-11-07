.class public interface abstract Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;
.super Ljava/lang/Object;
.source "BrailleDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/BrailleDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BrailleDisplayCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist FLAG_ERROR_BRAILLE_DISPLAY_NOT_FOUND:I = 0x2

.field public static final whitelist FLAG_ERROR_CANNOT_ACCESS:I = 0x1


# virtual methods
.method public abstract whitelist onConnected([B)V
.end method

.method public abstract whitelist onConnectionFailed(I)V
.end method

.method public abstract whitelist onDisconnected()V
.end method

.method public abstract whitelist onInput([B)V
.end method
