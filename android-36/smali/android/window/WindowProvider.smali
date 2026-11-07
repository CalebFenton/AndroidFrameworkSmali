.class public interface abstract Landroid/window/WindowProvider;
.super Ljava/lang/Object;
.source "WindowProvider.java"


# static fields
.field public static final blacklist KEY_IS_WINDOW_PROVIDER_SERVICE:Ljava/lang/String; = "android.windowContext.isWindowProviderService"


# virtual methods
.method public abstract blacklist getWindowContextOptions()Landroid/os/Bundle;
.end method

.method public abstract blacklist getWindowContextToken()Landroid/os/IBinder;
.end method

.method public abstract blacklist getWindowType()I
.end method
