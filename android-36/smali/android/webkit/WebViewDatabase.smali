.class public abstract Landroid/webkit/WebViewDatabase;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# static fields
.field protected static final greylist-max-o LOGTAG:Ljava/lang/String; = "webviewdatabase"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider;->getWebViewDatabase(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist clearFormData()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist clearHttpAuthUsernamePassword()V
.end method

.method public abstract whitelist clearUsernamePassword()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract whitelist hasFormData()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist hasHttpAuthUsernamePassword()Z
.end method

.method public abstract whitelist hasUsernamePassword()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
