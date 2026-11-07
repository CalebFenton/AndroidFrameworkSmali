.class public final Landroid/bluetooth/BluetoothMasInstance$MessageType;
.super Ljava/lang/Object;
.source "BluetoothMasInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMasInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageType"
.end annotation


# static fields
.field public static final blacklist EMAIL:I = 0x1

.field public static final blacklist MMS:I = 0x8

.field public static final blacklist SMS_CDMA:I = 0x4

.field public static final blacklist SMS_GSM:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
