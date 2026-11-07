.class Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;
.super Ljava/lang/Object;
.source "ApkSigningBlockUtils.java"

# interfaces
.implements Landroid/util/apk/DataDigester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSigningBlockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleDigestDataDigester"
.end annotation


# instance fields
.field private final blacklist mMds:[Ljava/security/MessageDigest;


# direct methods
.method constructor blacklist <init>([Ljava/security/MessageDigest;)V
    .registers 2
    .param p1, "mds"    # [Ljava/security/MessageDigest;

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    iput-object p1, p0, Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;->mMds:[Ljava/security/MessageDigest;

    .line 807
    return-void
.end method


# virtual methods
.method public blacklist consume(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 811
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 812
    iget-object v0, p0, Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;->mMds:[Ljava/security/MessageDigest;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 813
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 814
    invoke-virtual {v4, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 812
    .end local v4    # "md":Ljava/security/MessageDigest;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 816
    :cond_16
    return-void
.end method
