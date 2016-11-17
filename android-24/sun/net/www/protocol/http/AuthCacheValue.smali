.class public abstract Lsun/net/www/protocol/http/AuthCacheValue;
.super Ljava/lang/Object;
.source "AuthCacheValue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/http/AuthCacheValue$Type;
    }
.end annotation


# static fields
.field protected static cache:Lsun/net/www/protocol/http/AuthCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    new-instance v0, Lsun/net/www/protocol/http/AuthCacheImpl;

    #@2
    invoke-direct {v0}, Lsun/net/www/protocol/http/AuthCacheImpl;-><init>()V

    #@5
    sput-object v0, Lsun/net/www/protocol/http/AuthCacheValue;->cache:Lsun/net/www/protocol/http/AuthCache;

    #@7
    .line 38
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setAuthCache(Lsun/net/www/protocol/http/AuthCache;)V
    .locals 0
    .param p0, "map"    # Lsun/net/www/protocol/http/AuthCache;

    #@0
    .prologue
    .line 51
    sput-object p0, Lsun/net/www/protocol/http/AuthCacheValue;->cache:Lsun/net/www/protocol/http/AuthCache;

    #@2
    .line 50
    return-void
.end method


# virtual methods
.method abstract credentials()Ljava/net/PasswordAuthentication;
.end method

.method abstract getAuthScheme()Lsun/net/www/protocol/http/AuthScheme;
.end method

.method abstract getAuthType()Lsun/net/www/protocol/http/AuthCacheValue$Type;
.end method

.method abstract getHost()Ljava/lang/String;
.end method

.method abstract getPath()Ljava/lang/String;
.end method

.method abstract getPort()I
.end method

.method abstract getProtocolScheme()Ljava/lang/String;
.end method

.method abstract getRealm()Ljava/lang/String;
.end method
