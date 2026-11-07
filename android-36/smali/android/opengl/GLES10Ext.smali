.class public Landroid/opengl/GLES10Ext;
.super Ljava/lang/Object;
.source "GLES10Ext.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 25
    invoke-static {}, Landroid/opengl/GLES10Ext;->_nativeClassInit()V

    .line 26
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native greylist-max-o _nativeClassInit()V
.end method

.method public static native whitelist glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
.end method

.method public static native whitelist glQueryMatrixxOES([II[II)I
.end method
