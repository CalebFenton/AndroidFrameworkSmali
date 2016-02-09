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


# static fields
.field public static final MODE_OPEN:I = 0x0

.field public static final MODE_OPEN_FOLDER:I = 0x2

.field public static final MODE_OPEN_MULTIPLE:I = 0x1

.field public static final MODE_SAVE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;
    .locals 1
    .param p0, "resultCode"    # I
    .param p1, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 447
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p0, p1}, Landroid/webkit/WebViewFactoryProvider$Statics;->parseFileChooserResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method


# virtual methods
.method public abstract createIntent()Landroid/content/Intent;
.end method

.method public abstract getAcceptTypes()[Ljava/lang/String;
.end method

.method public abstract getFilenameHint()Ljava/lang/String;
.end method

.method public abstract getMode()I
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract isCaptureEnabled()Z
.end method
