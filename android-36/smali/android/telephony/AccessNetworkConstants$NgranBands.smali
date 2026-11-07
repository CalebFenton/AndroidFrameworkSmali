.class public final Landroid/telephony/AccessNetworkConstants$NgranBands;
.super Ljava/lang/Object;
.source "AccessNetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AccessNetworkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NgranBands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/AccessNetworkConstants$NgranBands$FrequencyRangeGroup;,
        Landroid/telephony/AccessNetworkConstants$NgranBands$NgranBand;
    }
.end annotation


# static fields
.field public static final whitelist BAND_1:I = 0x1

.field public static final whitelist BAND_12:I = 0xc

.field public static final whitelist BAND_14:I = 0xe

.field public static final whitelist BAND_18:I = 0x12

.field public static final whitelist BAND_2:I = 0x2

.field public static final whitelist BAND_20:I = 0x14

.field public static final whitelist BAND_25:I = 0x19

.field public static final whitelist BAND_257:I = 0x101

.field public static final whitelist BAND_258:I = 0x102

.field public static final whitelist BAND_26:I = 0x1a

.field public static final whitelist BAND_260:I = 0x104

.field public static final whitelist BAND_261:I = 0x105

.field public static final whitelist BAND_28:I = 0x1c

.field public static final whitelist BAND_29:I = 0x1d

.field public static final whitelist BAND_3:I = 0x3

.field public static final whitelist BAND_30:I = 0x1e

.field public static final whitelist BAND_34:I = 0x22

.field public static final whitelist BAND_38:I = 0x26

.field public static final whitelist BAND_39:I = 0x27

.field public static final whitelist BAND_40:I = 0x28

.field public static final whitelist BAND_41:I = 0x29

.field public static final whitelist BAND_46:I = 0x2e

.field public static final whitelist BAND_48:I = 0x30

.field public static final whitelist BAND_5:I = 0x5

.field public static final whitelist BAND_50:I = 0x32

.field public static final whitelist BAND_51:I = 0x33

.field public static final whitelist BAND_53:I = 0x35

.field public static final whitelist BAND_65:I = 0x41

.field public static final whitelist BAND_66:I = 0x42

.field public static final whitelist BAND_7:I = 0x7

.field public static final whitelist BAND_70:I = 0x46

.field public static final whitelist BAND_71:I = 0x47

.field public static final whitelist BAND_74:I = 0x4a

.field public static final whitelist BAND_75:I = 0x4b

.field public static final whitelist BAND_76:I = 0x4c

.field public static final whitelist BAND_77:I = 0x4d

.field public static final whitelist BAND_78:I = 0x4e

.field public static final whitelist BAND_79:I = 0x4f

.field public static final whitelist BAND_8:I = 0x8

.field public static final whitelist BAND_80:I = 0x50

.field public static final whitelist BAND_81:I = 0x51

.field public static final whitelist BAND_82:I = 0x52

.field public static final whitelist BAND_83:I = 0x53

.field public static final whitelist BAND_84:I = 0x54

.field public static final whitelist BAND_86:I = 0x56

.field public static final whitelist BAND_89:I = 0x59

.field public static final whitelist BAND_90:I = 0x5a

.field public static final whitelist BAND_91:I = 0x5b

.field public static final whitelist BAND_92:I = 0x5c

.field public static final whitelist BAND_93:I = 0x5d

.field public static final whitelist BAND_94:I = 0x5e

.field public static final whitelist BAND_95:I = 0x5f

.field public static final whitelist BAND_96:I = 0x60

.field public static final whitelist FREQUENCY_RANGE_GROUP_1:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FREQUENCY_RANGE_GROUP_2:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FREQUENCY_RANGE_GROUP_UNKNOWN:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getFrequencyRangeGroup(I)I
    .registers 2
    .param p0, "band"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 884
    sparse-switch p0, :sswitch_data_a

    .line 941
    const/4 v0, 0x0

    return v0

    .line 939
    :sswitch_5
    const/4 v0, 0x2

    return v0

    .line 934
    :sswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_7
        0x3 -> :sswitch_7
        0x5 -> :sswitch_7
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0xc -> :sswitch_7
        0xe -> :sswitch_7
        0x12 -> :sswitch_7
        0x14 -> :sswitch_7
        0x19 -> :sswitch_7
        0x1a -> :sswitch_7
        0x1c -> :sswitch_7
        0x1d -> :sswitch_7
        0x1e -> :sswitch_7
        0x22 -> :sswitch_7
        0x26 -> :sswitch_7
        0x27 -> :sswitch_7
        0x28 -> :sswitch_7
        0x29 -> :sswitch_7
        0x2e -> :sswitch_7
        0x30 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x35 -> :sswitch_7
        0x41 -> :sswitch_7
        0x42 -> :sswitch_7
        0x46 -> :sswitch_7
        0x47 -> :sswitch_7
        0x4a -> :sswitch_7
        0x4b -> :sswitch_7
        0x4c -> :sswitch_7
        0x4d -> :sswitch_7
        0x4e -> :sswitch_7
        0x4f -> :sswitch_7
        0x50 -> :sswitch_7
        0x51 -> :sswitch_7
        0x52 -> :sswitch_7
        0x53 -> :sswitch_7
        0x54 -> :sswitch_7
        0x56 -> :sswitch_7
        0x59 -> :sswitch_7
        0x5a -> :sswitch_7
        0x5b -> :sswitch_7
        0x5c -> :sswitch_7
        0x5d -> :sswitch_7
        0x5e -> :sswitch_7
        0x5f -> :sswitch_7
        0x60 -> :sswitch_7
        0x101 -> :sswitch_5
        0x102 -> :sswitch_5
        0x104 -> :sswitch_5
        0x105 -> :sswitch_5
    .end sparse-switch
.end method
