.class Ljava/nio/charset/Charset$2;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/charset/Charset;->lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$charsetName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 425
    iput-object p1, p0, Ljava/nio/charset/Charset$2;->val$charsetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 425
    invoke-virtual {p0}, Ljava/nio/charset/Charset$2;->run()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/nio/charset/Charset;
    .registers 4

    .line 427
    invoke-static {}, Ljava/nio/charset/Charset;->-$$Nest$smproviders()Ljava/util/Iterator;

    move-result-object v0

    .line 428
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/spi/CharsetProvider;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 429
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/spi/CharsetProvider;

    .line 430
    .local v1, "cp":Ljava/nio/charset/spi/CharsetProvider;
    iget-object v2, p0, Ljava/nio/charset/Charset$2;->val$charsetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/nio/charset/spi/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 431
    .local v2, "cs":Ljava/nio/charset/Charset;
    if-eqz v2, :cond_19

    .line 432
    return-object v2

    .line 433
    .end local v1    # "cp":Ljava/nio/charset/spi/CharsetProvider;
    .end local v2    # "cs":Ljava/nio/charset/Charset;
    :cond_19
    goto :goto_4

    .line 434
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/spi/CharsetProvider;>;"
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method
