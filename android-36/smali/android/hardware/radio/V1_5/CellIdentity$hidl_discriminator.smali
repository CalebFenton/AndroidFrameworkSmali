.class public final Landroid/hardware/radio/V1_5/CellIdentity$hidl_discriminator;
.super Ljava/lang/Object;
.source "CellIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/CellIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final blacklist cdma:B = 0x4t

.field public static final blacklist gsm:B = 0x1t

.field public static final blacklist lte:B = 0x5t

.field public static final blacklist noinit:B = 0x0t

.field public static final blacklist nr:B = 0x6t

.field public static final blacklist tdscdma:B = 0x3t

.field public static final blacklist wcdma:B = 0x2t


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getName(B)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # B

    .line 19
    packed-switch p0, :pswitch_data_1c

    .line 27
    const-string v0, "Unknown"

    return-object v0

    .line 26
    :pswitch_6
    const-string v0, "nr"

    return-object v0

    .line 25
    :pswitch_9
    const-string v0, "lte"

    return-object v0

    .line 24
    :pswitch_c
    const-string v0, "cdma"

    return-object v0

    .line 23
    :pswitch_f
    const-string v0, "tdscdma"

    return-object v0

    .line 22
    :pswitch_12
    const-string v0, "wcdma"

    return-object v0

    .line 21
    :pswitch_15
    const-string v0, "gsm"

    return-object v0

    .line 20
    :pswitch_18
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
