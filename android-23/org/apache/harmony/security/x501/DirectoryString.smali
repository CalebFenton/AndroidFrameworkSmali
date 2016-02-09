.class public final Lorg/apache/harmony/security/x501/DirectoryString;
.super Ljava/lang/Object;
.source "DirectoryString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x501/DirectoryString$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 50
    new-instance v0, Lorg/apache/harmony/security/x501/DirectoryString$1;

    #@2
    const/4 v1, 0x5

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 51
    sget-object v2, Lorg/apache/harmony/security/asn1/ASN1StringType;->TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    .line 52
    sget-object v2, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@c
    const/4 v3, 0x1

    #@d
    aput-object v2, v1, v3

    #@f
    .line 53
    sget-object v2, Lorg/apache/harmony/security/asn1/ASN1StringType;->UNIVERSALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@11
    const/4 v3, 0x2

    #@12
    aput-object v2, v1, v3

    #@14
    .line 54
    sget-object v2, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@16
    const/4 v3, 0x3

    #@17
    aput-object v2, v1, v3

    #@19
    .line 55
    sget-object v2, Lorg/apache/harmony/security/asn1/ASN1StringType;->BMPSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@1b
    const/4 v3, 0x4

    #@1c
    aput-object v2, v1, v3

    #@1e
    .line 50
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x501/DirectoryString$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@21
    sput-object v0, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@23
    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
