.class final Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$ECB$1;
.super Ljava/lang/Object;
.source "AES.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$ECB;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public get()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    #@0
    .prologue
    .line 82
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    #@5
    return-object v0
.end method
