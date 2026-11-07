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
.field private final greylist-max-o pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "regex"    # Ljava/lang/String;

    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/net/ssl/SNIMatcher;-><init>(I)V

    .line 343
    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    .line 344
    return-void
.end method


# virtual methods
.method public whitelist test-api matches(Ljavax/net/ssl/SNIServerName;)Z
    .registers 6
    .param p1, "serverName"    # Ljavax/net/ssl/SNIServerName;

    .line 364
    if-eqz p1, :cond_45

    .line 370
    instance-of v0, p1, Ljavax/net/ssl/SNIHostName;

    if-nez v0, :cond_21

    .line 371
    invoke-virtual {p1}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v0

    if-nez v0, :cond_19

    .line 377
    :try_start_c
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {p1}, Ljavax/net/ssl/SNIServerName;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SNIHostName;-><init>([B)V
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_15} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_15} :catch_16

    .line 380
    .local v0, "hostname":Ljavax/net/ssl/SNIHostName;
    goto :goto_24

    .line 378
    .end local v0    # "hostname":Ljavax/net/ssl/SNIHostName;
    :catch_16
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return v1

    .line 372
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The server name type is not host_name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_21
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SNIHostName;

    .line 386
    .local v0, "hostname":Ljavax/net/ssl/SNIHostName;
    :goto_24
    invoke-virtual {v0}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "asciiName":Ljava/lang/String;
    iget-object v2, p0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 388
    const/4 v2, 0x1

    return v2

    .line 393
    :cond_36
    iget-object v2, p0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-static {v1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2

    .line 365
    .end local v0    # "hostname":Ljavax/net/ssl/SNIHostName;
    .end local v1    # "asciiName":Ljava/lang/String;
    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The SNIServerName argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
