.class Lorg/apache/harmony/xml/dom/NodeImpl$1;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lorg/w3c/dom/TypeInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/NodeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getTypeName()Ljava/lang/String;
    .registers 2

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getTypeNamespace()Ljava/lang/String;
    .registers 2

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "typeNamespaceArg"    # Ljava/lang/String;
    .param p2, "typeNameArg"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I

    .line 60
    const/4 v0, 0x0

    return v0
.end method
