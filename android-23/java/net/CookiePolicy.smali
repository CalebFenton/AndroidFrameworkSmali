.class public interface abstract Ljava/net/CookiePolicy;
.super Ljava/lang/Object;
.source "CookiePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/CookiePolicy$1;,
        Ljava/net/CookiePolicy$2;,
        Ljava/net/CookiePolicy$3;
    }
.end annotation


# static fields
.field public static final ACCEPT_ALL:Ljava/net/CookiePolicy;

.field public static final ACCEPT_NONE:Ljava/net/CookiePolicy;

.field public static final ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    new-instance v0, Ljava/net/CookiePolicy$1;

    #@2
    invoke-direct {v0}, Ljava/net/CookiePolicy$1;-><init>()V

    #@5
    sput-object v0, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    #@7
    .line 42
    new-instance v0, Ljava/net/CookiePolicy$2;

    #@9
    invoke-direct {v0}, Ljava/net/CookiePolicy$2;-><init>()V

    #@c
    sput-object v0, Ljava/net/CookiePolicy;->ACCEPT_NONE:Ljava/net/CookiePolicy;

    #@e
    .line 51
    new-instance v0, Ljava/net/CookiePolicy$3;

    #@10
    invoke-direct {v0}, Ljava/net/CookiePolicy$3;-><init>()V

    #@13
    sput-object v0, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    #@15
    .line 28
    return-void
.end method


# virtual methods
.method public abstract shouldAccept(Ljava/net/URI;Ljava/net/HttpCookie;)Z
.end method
