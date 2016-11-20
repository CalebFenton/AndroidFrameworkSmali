.class Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
.super Ljava/lang/Object;
.source "AuthenticationHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/AuthenticationHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SchemeMapValue"
.end annotation


# instance fields
.field parser:Lsun/net/www/HeaderParser;

.field raw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/net/www/HeaderParser;Ljava/lang/String;)V
    .locals 0
    .param p1, "h"    # Lsun/net/www/HeaderParser;
    .param p2, "r"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p2, p0, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;->raw:Ljava/lang/String;

    #@5
    iput-object p1, p0, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;->parser:Lsun/net/www/HeaderParser;

    #@7
    return-void
.end method
