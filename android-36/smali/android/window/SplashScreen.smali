.class public interface abstract Landroid/window/SplashScreen;
.super Ljava/lang/Object;
.source "SplashScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SplashScreen$SplashScreenManagerGlobal;,
        Landroid/window/SplashScreen$SplashScreenImpl;,
        Landroid/window/SplashScreen$OnExitAnimationListener;,
        Landroid/window/SplashScreen$SplashScreenStyle;
    }
.end annotation


# static fields
.field public static final whitelist SPLASH_SCREEN_STYLE_ICON:I = 0x1

.field public static final whitelist SPLASH_SCREEN_STYLE_SOLID_COLOR:I = 0x0

.field public static final blacklist SPLASH_SCREEN_STYLE_UNDEFINED:I = -0x1


# virtual methods
.method public abstract whitelist clearOnExitAnimationListener()V
.end method

.method public abstract whitelist setOnExitAnimationListener(Landroid/window/SplashScreen$OnExitAnimationListener;)V
.end method

.method public abstract whitelist setSplashScreenTheme(I)V
.end method
