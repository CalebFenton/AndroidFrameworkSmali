.class abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Type;
.super Ljava/lang/Object;
.source "ASN1Type.java"


# instance fields
.field final blacklist javaClass:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2
    .param p1, "javaClass"    # Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Type;->javaClass:Ljava/lang/Class;

    .line 11
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "that"    # Ljava/lang/Object;

    .line 20
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method final blacklist getJavaClass()Ljava/lang/Class;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Type;->javaClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 25
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
