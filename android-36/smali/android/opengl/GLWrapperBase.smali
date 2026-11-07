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
.field protected blacklist mgl:Ljavax/microedition/khronos/opengles/GL10;

.field protected blacklist mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

.field protected blacklist mgl11:Ljavax/microedition/khronos/opengles/GL11;

.field protected blacklist mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

.field protected blacklist mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;


# direct methods
.method public constructor blacklist <init>(Ljavax/microedition/khronos/opengles/GL;)V
    .registers 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    .line 34
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL10Ext;

    if-eqz v0, :cond_11

    .line 35
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10Ext;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    .line 37
    :cond_11
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_1a

    .line 38
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    .line 40
    :cond_1a
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-eqz v0, :cond_23

    .line 41
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    .line 43
    :cond_23
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-eqz v0, :cond_2c

    .line 44
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 46
    :cond_2c
    return-void
.end method
