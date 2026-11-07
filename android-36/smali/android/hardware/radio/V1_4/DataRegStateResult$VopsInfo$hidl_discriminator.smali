.class public final Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "DataRegStateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final blacklist lteVopsInfo:B = 0x1t

.field public static final blacklist noinit:B


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getName(B)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # B

    .line 15
    packed-switch p0, :pswitch_data_c

    .line 18
    const-string v0, "Unknown"

    return-object v0

    .line 17
    :pswitch_6
    const-string v0, "lteVopsInfo"

    return-object v0

    .line 16
    :pswitch_9
    const-string v0, "noinit"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
