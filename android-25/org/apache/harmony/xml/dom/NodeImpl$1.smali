.class final Lorg/apache/harmony/xml/dom/NodeImpl$1;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lorg/w3c/dom/TypeInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/NodeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getTypeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "typeNamespaceArg"    # Ljava/lang/String;
    .param p2, "typeNameArg"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    return v0
.end method
