.class public final Ljavax/crypto/spec/PSource$PSpecified;
.super Ljavax/crypto/spec/PSource;
.source "PSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/spec/PSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PSpecified"
.end annotation


# static fields
.field public static final whitelist test-api DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;


# instance fields
.field private greylist-max-o p:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 84
    new-instance v0, Ljavax/crypto/spec/PSource$PSpecified;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    sput-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    return-void
.end method

.method public constructor whitelist test-api <init>([B)V
    .registers 3
    .param p1, "p"    # [B

    .line 96
    const-string v0, "PSpecified"

    invoke-direct {p0, v0}, Ljavax/crypto/spec/PSource;-><init>(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    .line 97
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    .line 98
    return-void
.end method


# virtual methods
.method public whitelist test-api getValue()[B
    .registers 2

    .line 105
    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    array-length v0, v0

    if-nez v0, :cond_8

    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    goto :goto_10

    :cond_8
    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_10
    return-object v0
.end method
