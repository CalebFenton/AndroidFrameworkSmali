.class final Ljavax/crypto/CryptoPolicyParser;
.super Ljava/lang/Object;
.source "CryptoPolicyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/CryptoPolicyParser$ParsingException;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getPermissions()[Ljavax/crypto/CryptoPermission;
    .locals 1

    #@0
    .prologue
    .line 43
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method read(Ljava/io/Reader;)V
    .locals 0
    .param p1, "policy"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/CryptoPolicyParser$ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    return-void
.end method
