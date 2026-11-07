.class public interface abstract Landroid/webkit/WebViewFactoryProvider$Statics;
.super Ljava/lang/Object;
.source "WebViewFactoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewFactoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Statics"
.end annotation


# virtual methods
.method public abstract whitelist clearClientCertPreferences(Ljava/lang/Runnable;)V
.end method

.method public abstract whitelist enableSlowWholeDocumentDraw()V
.end method

.method public abstract whitelist findAddress(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist freeMemoryForTests()V
.end method

.method public abstract whitelist getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract whitelist getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;
.end method

.method public abstract whitelist initSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist parseFileChooserResult(ILandroid/content/Intent;)[Landroid/net/Uri;
.end method

.method public abstract whitelist setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist setWebContentsDebuggingEnabled(Z)V
.end method
