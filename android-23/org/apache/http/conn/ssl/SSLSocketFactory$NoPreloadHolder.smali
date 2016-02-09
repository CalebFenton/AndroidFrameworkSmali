.class Lorg/apache/http/conn/ssl/SSLSocketFactory$NoPreloadHolder;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/conn/ssl/SSLSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lorg/apache/http/conn/ssl/SSLSocketFactory;


# direct methods
.method static synthetic -get0()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 1

    #@0
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory$NoPreloadHolder;->DEFAULT_FACTORY:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 166
    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V

    #@6
    sput-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory$NoPreloadHolder;->DEFAULT_FACTORY:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    #@8
    .line 162
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
