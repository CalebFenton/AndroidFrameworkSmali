.class public Landroid/bluetooth/BluetoothClass$Device$Major;
.super Ljava/lang/Object;
.source "BluetoothClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothClass$Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Major"
.end annotation


# static fields
.field public static final whitelist AUDIO_VIDEO:I = 0x400

.field private static final blacklist BITMASK:I = 0x1f00

.field public static final whitelist COMPUTER:I = 0x100

.field public static final whitelist HEALTH:I = 0x900

.field public static final whitelist IMAGING:I = 0x600

.field public static final whitelist MISC:I = 0x0

.field public static final whitelist NETWORKING:I = 0x300

.field public static final whitelist PERIPHERAL:I = 0x500

.field public static final whitelist PHONE:I = 0x200

.field public static final whitelist TOY:I = 0x800

.field public static final whitelist UNCATEGORIZED:I = 0x1f00

.field public static final whitelist WEARABLE:I = 0x700


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
