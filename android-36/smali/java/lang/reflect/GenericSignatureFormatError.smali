.class public Ljava/lang/reflect/GenericSignatureFormatError;
.super Ljava/lang/ClassFormatError;
.source "GenericSignatureFormatError.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x5d1e6be9e4bf48faL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/ClassFormatError;-><init>()V

    .line 45
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method
