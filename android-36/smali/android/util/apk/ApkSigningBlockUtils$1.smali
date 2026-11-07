.class Landroid/util/apk/ApkSigningBlockUtils$1;
.super Ljava/lang/Object;
.source "ApkSigningBlockUtils.java"

# interfaces
.implements Landroid/util/apk/ByteBufferFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrityForVerityBasedAlgorithm([BLjava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist create(I)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "capacity"    # I

    .line 376
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
