.class public Landroid/media/MediaHTTPService;
.super Landroid/media/IMediaHTTPService$Stub;
.source "MediaHTTPService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaHTTPService"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Landroid/media/IMediaHTTPService$Stub;-><init>()V

    #@3
    return-void
.end method

.method static createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    const-string/jumbo v0, "http://"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 35
    const-string/jumbo v0, "https://"

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 34
    if-nez v0, :cond_0

    #@12
    .line 36
    const-string/jumbo v0, "widevine://"

    #@15
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 34
    if-eqz v0, :cond_1

    #@1b
    .line 37
    :cond_0
    new-instance v0, Landroid/media/MediaHTTPService;

    #@1d
    invoke-direct {v0}, Landroid/media/MediaHTTPService;-><init>()V

    #@20
    invoke-virtual {v0}, Landroid/media/MediaHTTPService;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .line 40
    :cond_1
    const/4 v0, 0x0

    #@26
    return-object v0
.end method


# virtual methods
.method public makeHTTPConnection()Landroid/media/IMediaHTTPConnection;
    .locals 1

    #@0
    .prologue
    .line 29
    new-instance v0, Landroid/media/MediaHTTPConnection;

    #@2
    invoke-direct {v0}, Landroid/media/MediaHTTPConnection;-><init>()V

    #@5
    return-object v0
.end method
