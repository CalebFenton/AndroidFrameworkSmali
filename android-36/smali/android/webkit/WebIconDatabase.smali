.class public abstract Landroid/webkit/WebIconDatabase;
.super Ljava/lang/Object;
.source "WebIconDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebIconDatabase$IconListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/webkit/WebIconDatabase;
    .registers 1

    .line 103
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getWebIconDatabase()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist close()V
.end method

.method public abstract whitelist open(Ljava/lang/String;)V
.end method

.method public abstract whitelist releaseIconForPageUrl(Ljava/lang/String;)V
.end method

.method public abstract whitelist removeAllIcons()V
.end method

.method public abstract whitelist requestIconForPageUrl(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
.end method

.method public abstract whitelist retainIconForPageUrl(Ljava/lang/String;)V
.end method
