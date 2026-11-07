.class public Lsun/security/x509/AttributeNameEnumeration;
.super Ljava/util/Vector;
.source "AttributeNameEnumeration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x5433e0c0963cca7eL


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 47
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/util/Vector;-><init>(II)V

    .line 48
    return-void
.end method
