.class abstract Landroid/opengl/GLWrapperBase;
.super Ljava/lang/Object;
.source "GLWrapperBase.java"

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL;
.implements Ljavax/microedition/khronos/opengles/GL10;
.implements Ljavax/microedition/khronos/opengles/GL10Ext;
.implements Ljavax/microedition/khronos/opengles/GL11;
.implements Ljavax/microedition/khronos/opengles/GL11Ext;
.implements Ljavax/microedition/khronos/opengles/GL11ExtensionPack;


# instance fields
.field protected mgl:Ljavax/microedition/khronos/opengles/GL10;

.field protected mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

.field protected mgl11:Ljavax/microedition/khronos/opengles/GL11;

.field protected mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

.field protected mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    move-object v0, p1

    #@4
    .line 33
    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    #@6
    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    #@8
    .line 34
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL10Ext;

    #@a
    if-eqz v0, :cond_0

    #@c
    move-object v0, p1

    #@d
    .line 35
    check-cast v0, Ljavax/microedition/khronos/opengles/GL10Ext;

    #@f
    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    #@11
    .line 37
    :cond_0
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11;

    #@13
    if-eqz v0, :cond_1

    #@15
    move-object v0, p1

    #@16
    .line 38
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    #@18
    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    #@1a
    .line 40
    :cond_1
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    #@1c
    if-eqz v0, :cond_2

    #@1e
    move-object v0, p1

    #@1f
    .line 41
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    #@21
    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    #@23
    .line 43
    :cond_2
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 44
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@29
    .end local p1    # "gl":Ljavax/microedition/khronos/opengles/GL;
    iput-object p1, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    #@2b
    .line 32
    :cond_3
    return-void
.end method
