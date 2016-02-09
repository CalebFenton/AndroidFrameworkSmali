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
.field private final p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 69
    new-instance v0, Ljavax/crypto/spec/PSource$PSpecified;

    #@2
    invoke-direct {v0}, Ljavax/crypto/spec/PSource$PSpecified;-><init>()V

    #@5
    sput-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    #@7
    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 72
    const-string/jumbo v0, "PSpecified"

    #@3
    invoke-direct {p0, v0}, Ljavax/crypto/spec/PSource;-><init>(Ljava/lang/String;)V

    #@6
    .line 73
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@8
    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    #@a
    .line 71
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "p"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 86
    const-string/jumbo v0, "PSpecified"

    #@4
    invoke-direct {p0, v0}, Ljavax/crypto/spec/PSource;-><init>(Ljava/lang/String;)V

    #@7
    .line 87
    if-nez p1, :cond_0

    #@9
    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "p == null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 92
    :cond_0
    array-length v0, p1

    #@13
    new-array v0, v0, [B

    #@15
    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    #@17
    .line 93
    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    #@19
    array-length v1, p1

    #@1a
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1d
    .line 85
    return-void
.end method


# virtual methods
.method public getValue()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 102
    iget-object v1, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 103
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    #@8
    iget-object v2, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 104
    return-object v0
.end method
