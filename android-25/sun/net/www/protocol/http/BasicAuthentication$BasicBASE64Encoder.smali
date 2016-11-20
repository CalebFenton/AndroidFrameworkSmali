.class Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;
.super Lsun/misc/BASE64Encoder;
.source "BasicAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/BasicAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasicBASE64Encoder"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/www/protocol/http/BasicAuthentication;


# direct methods
.method private constructor <init>(Lsun/net/www/protocol/http/BasicAuthentication;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/www/protocol/http/BasicAuthentication;

    #@0
    .prologue
    .line 206
    iput-object p1, p0, Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;->this$0:Lsun/net/www/protocol/http/BasicAuthentication;

    #@2
    invoke-direct {p0}, Lsun/misc/BASE64Encoder;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lsun/net/www/protocol/http/BasicAuthentication;Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/www/protocol/http/BasicAuthentication;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/net/www/protocol/http/BasicAuthentication$BasicBASE64Encoder;-><init>(Lsun/net/www/protocol/http/BasicAuthentication;)V

    #@3
    return-void
.end method


# virtual methods
.method protected bytesPerLine()I
    .locals 1

    #@0
    .prologue
    .line 209
    const/16 v0, 0x2710

    #@2
    return v0
.end method
