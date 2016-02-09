.class Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "CCMBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExposedByteArrayOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;

    #@0
    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->this$0:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;

    #@2
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    #@0
    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->buf:[B

    #@2
    return-object v0
.end method
