.class public final Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands$hidl_discriminator;
.super Ljava/lang/Object;
.source "RadioAccessSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final blacklist eutranBands:B = 0x2t

.field public static final blacklist geranBands:B = 0x0t

.field public static final blacklist ngranBands:B = 0x3t

.field public static final blacklist utranBands:B = 0x1t


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getName(B)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # B

    .line 29
    packed-switch p0, :pswitch_data_12

    .line 34
    const-string v0, "Unknown"

    return-object v0

    .line 33
    :pswitch_6
    const-string v0, "ngranBands"

    return-object v0

    .line 32
    :pswitch_9
    const-string v0, "eutranBands"

    return-object v0

    .line 31
    :pswitch_c
    const-string v0, "utranBands"

    return-object v0

    .line 30
    :pswitch_f
    const-string v0, "geranBands"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
