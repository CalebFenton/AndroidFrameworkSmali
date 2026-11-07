.class public Landroid/util/BackupUtils;
.super Ljava/lang/Object;
.source "BackupUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/BackupUtils$BadVersionException;
    }
.end annotation


# static fields
.field public static final greylist-max-o NOT_NULL:I = 0x1

.field public static final greylist-max-o NULL:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o readString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public static greylist-max-o writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .registers 3
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    if-eqz p1, :cond_a

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 55
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_e

    .line 57
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 59
    :goto_e
    return-void
.end method
