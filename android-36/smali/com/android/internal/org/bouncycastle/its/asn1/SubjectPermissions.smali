.class public Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SubjectPermissions.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;
    .registers 2
    .param p0, "src"    # Ljava/lang/Object;

    .line 24
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;

    if-eqz v0, :cond_8

    .line 26
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;

    return-object v0

    .line 28
    :cond_8
    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 31
    return-object v0

    .line 34
    :cond_c
    return-object v0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method
