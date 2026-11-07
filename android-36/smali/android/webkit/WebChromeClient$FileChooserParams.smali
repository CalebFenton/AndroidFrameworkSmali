.class public abstract Landroid/webkit/WebChromeClient$FileChooserParams;
.super Ljava/lang/Object;
.source "WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FileChooserParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebChromeClient$FileChooserParams$PermissionMode;,
        Landroid/webkit/WebChromeClient$FileChooserParams$Mode;
    }
.end annotation


# static fields
.field public static final blacklist ENABLE_FILE_SYSTEM_ACCESS:J = 0x15c127c5L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_OPEN:I = 0x0

.field public static final greylist-max-o MODE_OPEN_FOLDER:I = 0x2

.field public static final whitelist MODE_OPEN_MULTIPLE:I = 0x1

.field public static final whitelist MODE_SAVE:I = 0x3

.field public static final blacklist PERMISSION_MODE_READ:I = 0x0

.field public static final blacklist PERMISSION_MODE_READ_WRITE:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;
    .registers 3
    .param p0, "resultCode"    # I
    .param p1, "data"    # Landroid/content/Intent;

    .line 630
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/webkit/WebViewFactoryProvider$Statics;->parseFileChooserResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist createIntent()Landroid/content/Intent;
.end method

.method public abstract whitelist getAcceptTypes()[Ljava/lang/String;
.end method

.method public abstract whitelist getFilenameHint()Ljava/lang/String;
.end method

.method public abstract whitelist getMode()I
.end method

.method public blacklist getPermissionMode()I
    .registers 2

    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract whitelist isCaptureEnabled()Z
.end method
