.class public final Landroid/webkit/PluginData;
.super Ljava/lang/Object;
.source "PluginData.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mContentLength:J

.field private greylist-max-o mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStatusCode:I

.field private greylist-max-o mStream:Ljava/io/InputStream;


# direct methods
.method public constructor greylist <init>(Ljava/io/InputStream;JLjava/util/Map;I)V
    .registers 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "length"    # J
    .param p5, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/webkit/PluginData;->mStream:Ljava/io/InputStream;

    .line 82
    iput-wide p2, p0, Landroid/webkit/PluginData;->mContentLength:J

    .line 83
    iput-object p4, p0, Landroid/webkit/PluginData;->mHeaders:Ljava/util/Map;

    .line 84
    iput p5, p0, Landroid/webkit/PluginData;->mStatusCode:I

    .line 85
    return-void
.end method


# virtual methods
.method public greylist-max-r getContentLength()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    iget-wide v0, p0, Landroid/webkit/PluginData;->mContentLength:J

    return-wide v0
.end method

.method public greylist-max-r getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/webkit/PluginData;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public greylist-max-r getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    iget-object v0, p0, Landroid/webkit/PluginData;->mStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public greylist-max-r getStatusCode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    iget v0, p0, Landroid/webkit/PluginData;->mStatusCode:I

    return v0
.end method
