.class public Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;
.super Lcom/android/org/bouncycastle/asn1/DERIA5String;
.source "NetscapeRevocationURL.java"


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERIA5String;)V
    .locals 1
    .param p1, "str"    # Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@0
    .prologue
    .line 11
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    #@7
    .line 9
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NetscapeRevocationURL: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;->getString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method
