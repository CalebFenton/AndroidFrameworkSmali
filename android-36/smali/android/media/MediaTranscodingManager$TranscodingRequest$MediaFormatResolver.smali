.class abstract Landroid/media/MediaTranscodingManager$TranscodingRequest$MediaFormatResolver;
.super Ljava/lang/Object;
.source "MediaTranscodingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaTranscodingManager$TranscodingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MediaFormatResolver"
.end annotation


# instance fields
.field private blacklist mClientCaps:Landroid/media/ApplicationMediaCapabilities;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/ApplicationMediaCapabilities;)V
    .registers 2

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 853
    iput-object p1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$MediaFormatResolver;->mClientCaps:Landroid/media/ApplicationMediaCapabilities;

    return-void

    .line 851
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Client capabilities must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method blacklist getClientCapabilities()Landroid/media/ApplicationMediaCapabilities;
    .registers 1

    .line 861
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$MediaFormatResolver;->mClientCaps:Landroid/media/ApplicationMediaCapabilities;

    return-object p0
.end method

.method abstract blacklist shouldTranscode()Z
.end method
