.class public final Landroid/hardware/radio/V1_5/OptionalCsgInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "OptionalCsgInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/OptionalCsgInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final blacklist csgInfo:B = 0x1t

.field public static final blacklist noinit:B


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getName(B)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # B

    .line 20
    packed-switch p0, :pswitch_data_c

    .line 23
    const-string v0, "Unknown"

    return-object v0

    .line 22
    :pswitch_6
    const-string v0, "csgInfo"

    return-object v0

    .line 21
    :pswitch_9
    const-string v0, "noinit"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
