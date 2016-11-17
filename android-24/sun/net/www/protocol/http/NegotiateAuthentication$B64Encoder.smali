.class Lsun/net/www/protocol/http/NegotiateAuthentication$B64Encoder;
.super Lsun/misc/BASE64Encoder;
.source "NegotiateAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/NegotiateAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "B64Encoder"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/www/protocol/http/NegotiateAuthentication;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/http/NegotiateAuthentication;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/www/protocol/http/NegotiateAuthentication;

    #@0
    .prologue
    .line 204
    iput-object p1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication$B64Encoder;->this$0:Lsun/net/www/protocol/http/NegotiateAuthentication;

    #@2
    invoke-direct {p0}, Lsun/misc/BASE64Encoder;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected bytesPerLine()I
    .locals 1

    #@0
    .prologue
    .line 206
    const v0, 0x186a0

    #@3
    return v0
.end method
