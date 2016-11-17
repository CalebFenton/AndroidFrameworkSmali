.class final Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;
.super Ljavax/net/ssl/SNIMatcher;
.source "SNIHostName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/net/ssl/SNIHostName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SNIHostNameMatcher"
.end annotation


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 342
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljavax/net/ssl/SNIMatcher;-><init>(I)V

    #@4
    .line 343
    const/4 v0, 0x2

    #@5
    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    #@b
    .line 341
    return-void
.end method


# virtual methods
.method public matches(Ljavax/net/ssl/SNIServerName;)Z
    .locals 5
    .param p1, "serverName"    # Ljavax/net/ssl/SNIServerName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 364
    if-nez p1, :cond_0

    #@3
    .line 365
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    .line 366
    const-string/jumbo v4, "The SNIServerName argument cannot be null"

    #@8
    .line 365
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3

    #@c
    .line 370
    :cond_0
    instance-of v3, p1, Ljavax/net/ssl/SNIHostName;

    #@e
    if-nez v3, :cond_2

    #@10
    .line 371
    invoke-virtual {p1}, Ljavax/net/ssl/SNIServerName;->getType()I

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 372
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@18
    .line 373
    const-string/jumbo v4, "The server name type is not host_name"

    #@1b
    .line 372
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v3

    #@1f
    .line 377
    :cond_1
    :try_start_0
    new-instance v2, Ljavax/net/ssl/SNIHostName;

    #@21
    invoke-virtual {p1}, Ljavax/net/ssl/SNIServerName;->getEncoded()[B

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Ljavax/net/ssl/SNIHostName;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 386
    .local v2, "hostname":Ljavax/net/ssl/SNIHostName;
    :goto_0
    invoke-virtual {v2}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 387
    .local v0, "asciiName":Ljava/lang/String;
    iget-object v3, p0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    #@2e
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_3

    #@38
    .line 388
    const/4 v3, 0x1

    #@39
    return v3

    #@3a
    .line 378
    .end local v0    # "asciiName":Ljava/lang/String;
    .end local v2    # "hostname":Ljavax/net/ssl/SNIHostName;
    :catch_0
    move-exception v1

    #@3b
    .line 379
    .local v1, "e":Ljava/lang/RuntimeException;
    return v4

    #@3c
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    move-object v2, p1

    #@3d
    .line 382
    nop

    #@3e
    nop

    #@3f
    .restart local v2    # "hostname":Ljavax/net/ssl/SNIHostName;
    goto :goto_0

    #@40
    .line 393
    .restart local v0    # "asciiName":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    #@42
    invoke-static {v0}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    #@4d
    move-result v3

    #@4e
    return v3
.end method
