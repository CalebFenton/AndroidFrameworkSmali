.class public Landroid/util/apk/SignatureInfo;
.super Ljava/lang/Object;
.source "SignatureInfo.java"


# instance fields
.field public final greylist-max-o apkSigningBlockOffset:J

.field public final greylist-max-o centralDirOffset:J

.field public final greylist-max-o eocd:Ljava/nio/ByteBuffer;

.field public final greylist-max-o eocdOffset:J

.field public final greylist-max-o signatureBlock:Ljava/nio/ByteBuffer;


# direct methods
.method constructor greylist-max-o <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "signatureBlock"    # Ljava/nio/ByteBuffer;
    .param p2, "apkSigningBlockOffset"    # J
    .param p4, "centralDirOffset"    # J
    .param p6, "eocdOffset"    # J
    .param p8, "eocd"    # Ljava/nio/ByteBuffer;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 47
    iput-wide p2, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    .line 48
    iput-wide p4, p0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    .line 49
    iput-wide p6, p0, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    .line 50
    iput-object p8, p0, Landroid/util/apk/SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    .line 51
    return-void
.end method
