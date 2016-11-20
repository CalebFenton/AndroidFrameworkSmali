.class Llibcore/io/Base64$InvalidBase64ByteException;
.super Ljava/lang/Exception;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvalidBase64ByteException"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Llibcore/io/Base64$InvalidBase64ByteException;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Llibcore/io/Base64$InvalidBase64ByteException;-><init>()V

    #@3
    return-void
.end method
