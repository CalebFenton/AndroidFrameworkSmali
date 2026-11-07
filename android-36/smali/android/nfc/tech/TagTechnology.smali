.class public interface abstract Landroid/nfc/tech/TagTechnology;
.super Ljava/lang/Object;
.source "TagTechnology.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final greylist-max-o ISO_DEP:I = 0x3

.field public static final greylist-max-o MIFARE_CLASSIC:I = 0x8

.field public static final greylist-max-o MIFARE_ULTRALIGHT:I = 0x9

.field public static final greylist-max-o NDEF:I = 0x6

.field public static final greylist-max-o NDEF_FORMATABLE:I = 0x7

.field public static final greylist-max-o NFC_A:I = 0x1

.field public static final greylist-max-o NFC_B:I = 0x2

.field public static final greylist-max-o NFC_BARCODE:I = 0xa

.field public static final greylist-max-o NFC_F:I = 0x4

.field public static final greylist-max-o NFC_V:I = 0x5


# virtual methods
.method public abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist getTag()Landroid/nfc/Tag;
.end method

.method public abstract whitelist isConnected()Z
.end method

.method public abstract greylist-max-o reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
