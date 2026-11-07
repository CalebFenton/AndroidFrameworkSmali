.class public Lorg/apache/xalan/templates/ElemOtherwise;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemOtherwise.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x19de0fb3dda62b13L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 55
    const-string p0, "otherwise"

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x27

    return p0
.end method
