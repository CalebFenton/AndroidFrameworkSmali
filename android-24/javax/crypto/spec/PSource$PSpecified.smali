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
.field public static final DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;


# instance fields
.field private p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 87
    new-instance v0, Ljavax/crypto/spec/PSource$PSpecified;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [B

    #@5
    invoke-direct {v0, v1}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    #@8
    sput-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    #@a
    .line 80
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "p"    # [B

    #@0
    .prologue
    .line 99
    const-string/jumbo v0, "PSpecified"

    #@3
    invoke-direct {p0, v0}, Ljavax/crypto/spec/PSource;-><init>(Ljava/lang/String;)V

    #@6
    .line 82
    const/4 v0, 0x0

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    #@b
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, [B

    #@11
    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    #@13
    .line 98
    return-void
.end method


# virtual methods
.method public getValue()[B
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    #@2
    array-length v0, v0

    #@3
    if-nez v0, :cond_0

    #@5
    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    #@a
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [B

    #@10
    goto :goto_0
.end method
