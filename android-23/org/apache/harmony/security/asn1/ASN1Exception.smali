.class public final Lorg/apache/harmony/security/asn1/ASN1Exception;
.super Ljava/io/IOException;
.source "ASN1Exception.java"


# static fields
.field private static final serialVersionUID:J = -0x316eb31660ab2b93L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 35
    return-void
.end method
