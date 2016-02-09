.class public Ljavax/crypto/AEADBadTagException;
.super Ljavax/crypto/BadPaddingException;
.source "AEADBadTagException.java"


# static fields
.field private static final serialVersionUID:J = -0x6c5ef28d211e605L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljavax/crypto/BadPaddingException;-><init>()V

    #@3
    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@3
    .line 40
    return-void
.end method
