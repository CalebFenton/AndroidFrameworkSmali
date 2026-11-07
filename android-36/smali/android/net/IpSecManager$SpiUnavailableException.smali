.class public final Landroid/net/IpSecManager$SpiUnavailableException;
.super Landroid/util/AndroidException;
.source "IpSecManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpiUnavailableException"
.end annotation


# instance fields
.field private final greylist-max-o mSpi:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "spi"    # I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (spi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 157
    iput p2, p0, Landroid/net/IpSecManager$SpiUnavailableException;->mSpi:I

    .line 158
    return-void
.end method


# virtual methods
.method public whitelist getSpi()I
    .registers 2

    .line 162
    iget v0, p0, Landroid/net/IpSecManager$SpiUnavailableException;->mSpi:I

    return v0
.end method
