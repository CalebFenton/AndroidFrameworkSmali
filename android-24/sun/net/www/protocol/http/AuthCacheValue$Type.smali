.class public final enum Lsun/net/www/protocol/http/AuthCacheValue$Type;
.super Ljava/lang/Enum;
.source "AuthCacheValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/AuthCacheValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/net/www/protocol/http/AuthCacheValue$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/net/www/protocol/http/AuthCacheValue$Type;

.field public static final enum Proxy:Lsun/net/www/protocol/http/AuthCacheValue$Type;

.field public static final enum Server:Lsun/net/www/protocol/http/AuthCacheValue$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 41
    new-instance v0, Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@4
    const-string/jumbo v1, "Proxy"

    #@7
    invoke-direct {v0, v1, v2}, Lsun/net/www/protocol/http/AuthCacheValue$Type;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lsun/net/www/protocol/http/AuthCacheValue$Type;->Proxy:Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@c
    .line 42
    new-instance v0, Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@e
    const-string/jumbo v1, "Server"

    #@11
    invoke-direct {v0, v1, v3}, Lsun/net/www/protocol/http/AuthCacheValue$Type;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Lsun/net/www/protocol/http/AuthCacheValue$Type;->Server:Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@16
    .line 40
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@19
    sget-object v1, Lsun/net/www/protocol/http/AuthCacheValue$Type;->Proxy:Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Lsun/net/www/protocol/http/AuthCacheValue$Type;->Server:Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Lsun/net/www/protocol/http/AuthCacheValue$Type;->$VALUES:[Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    const-class v0, Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/net/www/protocol/http/AuthCacheValue$Type;
    .locals 1

    #@0
    .prologue
    .line 40
    sget-object v0, Lsun/net/www/protocol/http/AuthCacheValue$Type;->$VALUES:[Lsun/net/www/protocol/http/AuthCacheValue$Type;

    #@2
    return-object v0
.end method
