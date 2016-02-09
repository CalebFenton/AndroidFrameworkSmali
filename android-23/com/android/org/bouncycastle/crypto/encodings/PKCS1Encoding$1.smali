.class Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    #@0
    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;->this$0:Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 97
    const-string/jumbo v0, "com.android.org.bouncycastle.pkcs1.strict"

    #@3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method
