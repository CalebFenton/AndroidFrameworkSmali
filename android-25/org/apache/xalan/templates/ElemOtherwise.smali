.class public Lorg/apache/xalan/templates/ElemOtherwise;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemOtherwise.java"


# static fields
.field static final serialVersionUID:J = 0x19de0fb3dda62b13L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 55
    const-string/jumbo v0, "otherwise"

    #@3
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 45
    const/16 v0, 0x27

    #@2
    return v0
.end method
