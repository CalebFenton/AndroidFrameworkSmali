.class public Lcom/android/org/bouncycastle/asn1/DERNull;
.super Lcom/android/org/bouncycastle/asn1/ASN1Null;
.source "DERNull.java"


# static fields
.field public static final INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

.field private static final zeroBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 11
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERNull;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERNull;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@7
    .line 13
    const/4 v0, 0x0

    #@8
    new-array v0, v0, [B

    #@a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    #@c
    .line 8
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Null;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    #@2
    const/4 v1, 0x5

    #@3
    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@6
    .line 36
    return-void
.end method

.method encodedLength()I
    .locals 1

    #@0
    .prologue
    .line 31
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 26
    const/4 v0, 0x0

    #@1
    return v0
.end method
