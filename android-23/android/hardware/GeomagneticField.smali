.class public Landroid/hardware/GeomagneticField;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/GeomagneticField$LegendreTable;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BASE_TIME:J

.field private static final DELTA_G:[[F

.field private static final DELTA_H:[[F

.field private static final EARTH_REFERENCE_RADIUS_KM:F = 6371.2f

.field private static final EARTH_SEMI_MAJOR_AXIS_KM:F = 6378.137f

.field private static final EARTH_SEMI_MINOR_AXIS_KM:F = 6356.7524f

.field private static final G_COEFF:[[F

.field private static final H_COEFF:[[F

.field private static final SCHMIDT_QUASI_NORM_FACTORS:[[F


# instance fields
.field private mGcLatitudeRad:F

.field private mGcLongitudeRad:F

.field private mGcRadiusKm:F

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x1

    #@5
    const-class v0, Landroid/hardware/GeomagneticField;

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    move v0, v1

    #@e
    :goto_0
    sput-boolean v0, Landroid/hardware/GeomagneticField;->-assertionsDisabled:Z

    #@10
    .line 52
    const/16 v0, 0xd

    #@12
    new-array v0, v0, [[F

    #@14
    .line 53
    new-array v3, v2, [F

    #@16
    const/4 v4, 0x0

    #@17
    aput v4, v3, v1

    #@19
    aput-object v3, v0, v1

    #@1b
    .line 54
    new-array v3, v5, [F

    #@1d
    fill-array-data v3, :array_0

    #@20
    aput-object v3, v0, v2

    #@22
    .line 55
    new-array v3, v6, [F

    #@24
    fill-array-data v3, :array_1

    #@27
    aput-object v3, v0, v5

    #@29
    .line 56
    new-array v3, v7, [F

    #@2b
    fill-array-data v3, :array_2

    #@2e
    aput-object v3, v0, v6

    #@30
    .line 57
    const/4 v3, 0x5

    #@31
    new-array v3, v3, [F

    #@33
    fill-array-data v3, :array_3

    #@36
    aput-object v3, v0, v7

    #@38
    .line 58
    const/4 v3, 0x6

    #@39
    new-array v3, v3, [F

    #@3b
    fill-array-data v3, :array_4

    #@3e
    const/4 v4, 0x5

    #@3f
    aput-object v3, v0, v4

    #@41
    .line 59
    const/4 v3, 0x7

    #@42
    new-array v3, v3, [F

    #@44
    fill-array-data v3, :array_5

    #@47
    const/4 v4, 0x6

    #@48
    aput-object v3, v0, v4

    #@4a
    .line 60
    const/16 v3, 0x8

    #@4c
    new-array v3, v3, [F

    #@4e
    fill-array-data v3, :array_6

    #@51
    const/4 v4, 0x7

    #@52
    aput-object v3, v0, v4

    #@54
    .line 61
    const/16 v3, 0x9

    #@56
    new-array v3, v3, [F

    #@58
    fill-array-data v3, :array_7

    #@5b
    const/16 v4, 0x8

    #@5d
    aput-object v3, v0, v4

    #@5f
    .line 62
    const/16 v3, 0xa

    #@61
    new-array v3, v3, [F

    #@63
    fill-array-data v3, :array_8

    #@66
    const/16 v4, 0x9

    #@68
    aput-object v3, v0, v4

    #@6a
    .line 63
    const/16 v3, 0xb

    #@6c
    new-array v3, v3, [F

    #@6e
    fill-array-data v3, :array_9

    #@71
    const/16 v4, 0xa

    #@73
    aput-object v3, v0, v4

    #@75
    .line 64
    const/16 v3, 0xc

    #@77
    new-array v3, v3, [F

    #@79
    fill-array-data v3, :array_a

    #@7c
    const/16 v4, 0xb

    #@7e
    aput-object v3, v0, v4

    #@80
    .line 65
    const/16 v3, 0xd

    #@82
    new-array v3, v3, [F

    #@84
    fill-array-data v3, :array_b

    #@87
    const/16 v4, 0xc

    #@89
    aput-object v3, v0, v4

    #@8b
    .line 52
    sput-object v0, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    #@8d
    .line 67
    const/16 v0, 0xd

    #@8f
    new-array v0, v0, [[F

    #@91
    .line 68
    new-array v3, v2, [F

    #@93
    const/4 v4, 0x0

    #@94
    aput v4, v3, v1

    #@96
    aput-object v3, v0, v1

    #@98
    .line 69
    new-array v3, v5, [F

    #@9a
    fill-array-data v3, :array_c

    #@9d
    aput-object v3, v0, v2

    #@9f
    .line 70
    new-array v3, v6, [F

    #@a1
    fill-array-data v3, :array_d

    #@a4
    aput-object v3, v0, v5

    #@a6
    .line 71
    new-array v3, v7, [F

    #@a8
    fill-array-data v3, :array_e

    #@ab
    aput-object v3, v0, v6

    #@ad
    .line 72
    const/4 v3, 0x5

    #@ae
    new-array v3, v3, [F

    #@b0
    fill-array-data v3, :array_f

    #@b3
    aput-object v3, v0, v7

    #@b5
    .line 73
    const/4 v3, 0x6

    #@b6
    new-array v3, v3, [F

    #@b8
    fill-array-data v3, :array_10

    #@bb
    const/4 v4, 0x5

    #@bc
    aput-object v3, v0, v4

    #@be
    .line 74
    const/4 v3, 0x7

    #@bf
    new-array v3, v3, [F

    #@c1
    fill-array-data v3, :array_11

    #@c4
    const/4 v4, 0x6

    #@c5
    aput-object v3, v0, v4

    #@c7
    .line 75
    const/16 v3, 0x8

    #@c9
    new-array v3, v3, [F

    #@cb
    fill-array-data v3, :array_12

    #@ce
    const/4 v4, 0x7

    #@cf
    aput-object v3, v0, v4

    #@d1
    .line 76
    const/16 v3, 0x9

    #@d3
    new-array v3, v3, [F

    #@d5
    fill-array-data v3, :array_13

    #@d8
    const/16 v4, 0x8

    #@da
    aput-object v3, v0, v4

    #@dc
    .line 77
    const/16 v3, 0xa

    #@de
    new-array v3, v3, [F

    #@e0
    fill-array-data v3, :array_14

    #@e3
    const/16 v4, 0x9

    #@e5
    aput-object v3, v0, v4

    #@e7
    .line 78
    const/16 v3, 0xb

    #@e9
    new-array v3, v3, [F

    #@eb
    fill-array-data v3, :array_15

    #@ee
    const/16 v4, 0xa

    #@f0
    aput-object v3, v0, v4

    #@f2
    .line 79
    const/16 v3, 0xc

    #@f4
    new-array v3, v3, [F

    #@f6
    fill-array-data v3, :array_16

    #@f9
    const/16 v4, 0xb

    #@fb
    aput-object v3, v0, v4

    #@fd
    .line 80
    const/16 v3, 0xd

    #@ff
    new-array v3, v3, [F

    #@101
    fill-array-data v3, :array_17

    #@104
    const/16 v4, 0xc

    #@106
    aput-object v3, v0, v4

    #@108
    .line 67
    sput-object v0, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    #@10a
    .line 82
    const/16 v0, 0xd

    #@10c
    new-array v0, v0, [[F

    #@10e
    .line 83
    new-array v3, v2, [F

    #@110
    const/4 v4, 0x0

    #@111
    aput v4, v3, v1

    #@113
    aput-object v3, v0, v1

    #@115
    .line 84
    new-array v3, v5, [F

    #@117
    fill-array-data v3, :array_18

    #@11a
    aput-object v3, v0, v2

    #@11c
    .line 85
    new-array v3, v6, [F

    #@11e
    fill-array-data v3, :array_19

    #@121
    aput-object v3, v0, v5

    #@123
    .line 86
    new-array v3, v7, [F

    #@125
    fill-array-data v3, :array_1a

    #@128
    aput-object v3, v0, v6

    #@12a
    .line 87
    const/4 v3, 0x5

    #@12b
    new-array v3, v3, [F

    #@12d
    fill-array-data v3, :array_1b

    #@130
    aput-object v3, v0, v7

    #@132
    .line 88
    const/4 v3, 0x6

    #@133
    new-array v3, v3, [F

    #@135
    fill-array-data v3, :array_1c

    #@138
    const/4 v4, 0x5

    #@139
    aput-object v3, v0, v4

    #@13b
    .line 89
    const/4 v3, 0x7

    #@13c
    new-array v3, v3, [F

    #@13e
    fill-array-data v3, :array_1d

    #@141
    const/4 v4, 0x6

    #@142
    aput-object v3, v0, v4

    #@144
    .line 90
    const/16 v3, 0x8

    #@146
    new-array v3, v3, [F

    #@148
    fill-array-data v3, :array_1e

    #@14b
    const/4 v4, 0x7

    #@14c
    aput-object v3, v0, v4

    #@14e
    .line 91
    const/16 v3, 0x9

    #@150
    new-array v3, v3, [F

    #@152
    fill-array-data v3, :array_1f

    #@155
    const/16 v4, 0x8

    #@157
    aput-object v3, v0, v4

    #@159
    .line 92
    const/16 v3, 0xa

    #@15b
    new-array v3, v3, [F

    #@15d
    fill-array-data v3, :array_20

    #@160
    const/16 v4, 0x9

    #@162
    aput-object v3, v0, v4

    #@164
    .line 93
    const/16 v3, 0xb

    #@166
    new-array v3, v3, [F

    #@168
    fill-array-data v3, :array_21

    #@16b
    const/16 v4, 0xa

    #@16d
    aput-object v3, v0, v4

    #@16f
    .line 94
    const/16 v3, 0xc

    #@171
    new-array v3, v3, [F

    #@173
    fill-array-data v3, :array_22

    #@176
    const/16 v4, 0xb

    #@178
    aput-object v3, v0, v4

    #@17a
    .line 95
    const/16 v3, 0xd

    #@17c
    new-array v3, v3, [F

    #@17e
    fill-array-data v3, :array_23

    #@181
    const/16 v4, 0xc

    #@183
    aput-object v3, v0, v4

    #@185
    .line 82
    sput-object v0, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    #@187
    .line 97
    const/16 v0, 0xd

    #@189
    new-array v0, v0, [[F

    #@18b
    .line 98
    new-array v3, v2, [F

    #@18d
    const/4 v4, 0x0

    #@18e
    aput v4, v3, v1

    #@190
    aput-object v3, v0, v1

    #@192
    .line 99
    new-array v1, v5, [F

    #@194
    fill-array-data v1, :array_24

    #@197
    aput-object v1, v0, v2

    #@199
    .line 100
    new-array v1, v6, [F

    #@19b
    fill-array-data v1, :array_25

    #@19e
    aput-object v1, v0, v5

    #@1a0
    .line 101
    new-array v1, v7, [F

    #@1a2
    fill-array-data v1, :array_26

    #@1a5
    aput-object v1, v0, v6

    #@1a7
    .line 102
    const/4 v1, 0x5

    #@1a8
    new-array v1, v1, [F

    #@1aa
    fill-array-data v1, :array_27

    #@1ad
    aput-object v1, v0, v7

    #@1af
    .line 103
    const/4 v1, 0x6

    #@1b0
    new-array v1, v1, [F

    #@1b2
    fill-array-data v1, :array_28

    #@1b5
    const/4 v3, 0x5

    #@1b6
    aput-object v1, v0, v3

    #@1b8
    .line 104
    const/4 v1, 0x7

    #@1b9
    new-array v1, v1, [F

    #@1bb
    fill-array-data v1, :array_29

    #@1be
    const/4 v3, 0x6

    #@1bf
    aput-object v1, v0, v3

    #@1c1
    .line 105
    const/16 v1, 0x8

    #@1c3
    new-array v1, v1, [F

    #@1c5
    fill-array-data v1, :array_2a

    #@1c8
    const/4 v3, 0x7

    #@1c9
    aput-object v1, v0, v3

    #@1cb
    .line 106
    const/16 v1, 0x9

    #@1cd
    new-array v1, v1, [F

    #@1cf
    fill-array-data v1, :array_2b

    #@1d2
    const/16 v3, 0x8

    #@1d4
    aput-object v1, v0, v3

    #@1d6
    .line 107
    const/16 v1, 0xa

    #@1d8
    new-array v1, v1, [F

    #@1da
    fill-array-data v1, :array_2c

    #@1dd
    const/16 v3, 0x9

    #@1df
    aput-object v1, v0, v3

    #@1e1
    .line 108
    const/16 v1, 0xb

    #@1e3
    new-array v1, v1, [F

    #@1e5
    fill-array-data v1, :array_2d

    #@1e8
    const/16 v3, 0xa

    #@1ea
    aput-object v1, v0, v3

    #@1ec
    .line 109
    const/16 v1, 0xc

    #@1ee
    new-array v1, v1, [F

    #@1f0
    fill-array-data v1, :array_2e

    #@1f3
    const/16 v3, 0xb

    #@1f5
    aput-object v1, v0, v3

    #@1f7
    .line 110
    const/16 v1, 0xd

    #@1f9
    new-array v1, v1, [F

    #@1fb
    fill-array-data v1, :array_2f

    #@1fe
    const/16 v3, 0xc

    #@200
    aput-object v1, v0, v3

    #@202
    .line 97
    sput-object v0, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    #@204
    .line 113
    new-instance v0, Ljava/util/GregorianCalendar;

    #@206
    const/16 v1, 0x7da

    #@208
    invoke-direct {v0, v1, v2, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    #@20b
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@20e
    move-result-wide v0

    #@20f
    .line 112
    sput-wide v0, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    #@211
    .line 119
    sget-object v0, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    #@213
    array-length v0, v0

    #@214
    invoke-static {v0}, Landroid/hardware/GeomagneticField;->computeSchmidtQuasiNormFactors(I)[[F

    #@217
    move-result-object v0

    #@218
    .line 118
    sput-object v0, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    #@21a
    .line 33
    return-void

    #@21b
    :cond_0
    move v0, v2

    #@21c
    goto/16 :goto_0

    #@21e
    .line 54
    :array_0
    .array-data 4
        -0x39198ecd
        -0x3b39b666    # -1586.3f
    .end array-data

    #@226
    .line 55
    :array_1
    .array-data 4
        -0x3aea3666    # -2396.6f
        0x453d219a    # 3026.1f
        0x44d09333    # 1668.6f
    .end array-data

    #@230
    .line 56
    :array_2
    .array-data 4
        0x44a78333    # 1340.1f
        -0x3aee9ccd    # -2326.2f
        0x4499fccd    # 1231.9f
        0x441e8000    # 634.0f
    .end array-data

    #@23c
    .line 57
    :array_3
    .array-data 4
        0x44642666    # 912.6f
        0x444a399a    # 808.9f
        0x4326b333    # 166.7f
        -0x3c4d7333    # -357.1f
        0x42b2cccd    # 89.4f
    .end array-data

    #@24a
    .line 58
    :array_4
    .array-data 4
        -0x3c99199a    # -230.9f
        0x43b2999a    # 357.2f
        0x43484ccd    # 200.3f
        -0x3cf2e666    # -141.1f
        -0x3cdd0000    # -163.0f
        -0x3f066666    # -7.8f
    .end array-data

    #@25a
    .line 59
    :array_5
    .array-data 4
        0x4291999a    # 72.8f
        0x42893333    # 68.6f
        0x42980000    # 76.0f
        -0x3cf2999a    # -141.4f
        -0x3e49999a    # -22.8f
        0x41533333    # 13.2f
        -0x3d643333    # -77.9f
    .end array-data

    #@26c
    .line 60
    :array_6
    .array-data 4
        0x42a10000    # 80.5f
        -0x3d69cccd    # -75.1f
        -0x3f69999a    # -4.7f
        0x42353333    # 45.3f
        0x415e6666    # 13.9f
        0x41266666    # 10.4f
        0x3fd9999a    # 1.7f
        0x409ccccd    # 4.9f
    .end array-data

    #@280
    .line 61
    :array_7
    .array-data 4
        0x41c33333    # 24.4f
        0x4101999a    # 8.1f
        -0x3e980000    # -14.5f
        -0x3f4ccccd    # -5.6f
        -0x3e65999a    # -19.3f
        0x41380000    # 11.5f
        0x412e6666    # 10.9f
        -0x3e9e6666    # -14.1f
        -0x3f933333    # -3.7f
    .end array-data

    #@296
    .line 62
    :array_8
    .array-data 4
        0x40accccd    # 5.4f
        0x41166666    # 9.4f
        0x4059999a    # 3.4f
        -0x3f59999a    # -5.2f
        0x40466666    # 3.1f
        -0x3eb9999a    # -12.4f
        -0x40cccccd    # -0.7f
        0x41066666    # 8.4f
        -0x3ef80000    # -8.5f
        -0x3ede6666    # -10.1f
    .end array-data

    #@2ae
    .line 63
    :array_9
    .array-data 4
        -0x40000000    # -2.0f
        -0x3f366666    # -6.3f
        0x3f666666    # 0.9f
        -0x40733333    # -1.1f
        -0x41b33333    # -0.2f
        0x40200000    # 2.5f
        -0x41666666    # -0.3f
        0x400ccccd    # 2.2f
        0x40466666    # 3.1f
        -0x40800000    # -1.0f
        -0x3fcccccd    # -2.8f
    .end array-data

    #@2c8
    .line 64
    :array_a
    .array-data 4
        0x40400000    # 3.0f
        -0x40400000    # -1.5f
        -0x3ff9999a    # -2.1f
        0x3fd9999a    # 1.7f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x40b33333    # -0.8f
        0x3ecccccd    # 0.4f
        0x3fe66666    # 1.8f
        0x3dcccccd    # 0.1f
        0x3f333333    # 0.7f
        0x40733333    # 3.8f
    .end array-data

    #@2e4
    .line 65
    :array_b
    .array-data 4
        -0x3ff33333    # -2.2f
        -0x41b33333    # -0.2f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        -0x40e66666    # -0.6f
        0x3f666666    # 0.9f
        -0x42333333    # -0.1f
        0x3f000000    # 0.5f
        -0x41333333    # -0.4f
        -0x41333333    # -0.4f
        0x3e4ccccd    # 0.2f
        -0x40b33333    # -0.8f
        0x0
    .end array-data

    #@302
    .line 69
    :array_c
    .array-data 4
        0x0
        0x459a8333    # 4944.4f
    .end array-data

    #@30a
    .line 70
    :array_d
    .array-data 4
        0x0
        -0x3ad6c4cd    # -2707.7f
        -0x3beff99a    # -576.1f
    .end array-data

    #@314
    .line 71
    :array_e
    .array-data 4
        0x0
        -0x3cdfcccd    # -160.2f
        0x437be666    # 251.9f
        -0x3bf9d99a    # -536.6f
    .end array-data

    #@320
    .line 72
    :array_f
    .array-data 4
        0x0
        0x438f3333    # 286.4f
        -0x3caccccd    # -211.2f
        0x43244ccd    # 164.3f
        -0x3c657333    # -309.1f
    .end array-data

    #@32e
    .line 73
    :array_10
    .array-data 4
        0x0
        0x42326666    # 44.6f
        0x433ce666    # 188.9f
        -0x3d13999a    # -118.2f
        0x0
        0x42c9cccd    # 100.9f
    .end array-data

    #@33e
    .line 74
    :array_11
    .array-data 4
        0x0
        -0x3e59999a    # -20.8f
        0x42306666    # 44.1f
        0x42760000    # 61.5f
        -0x3d7b6666    # -66.3f
        0x40466666    # 3.1f
        0x425c0000    # 55.0f
    .end array-data

    #@350
    .line 75
    :array_12
    .array-data 4
        0x0
        -0x3d986666    # -57.9f
        -0x3e573333    # -21.1f
        0x40d00000    # 6.5f
        0x41c73333    # 24.9f
        0x40e00000    # 7.0f
        -0x3e226666    # -27.7f
        -0x3faccccd    # -3.3f
    .end array-data

    #@364
    .line 76
    :array_13
    .array-data 4
        0x0
        0x41300000    # 11.0f
        -0x3e600000    # -20.0f
        0x413e6666    # 11.9f
        -0x3e74cccd    # -17.4f
        0x4185999a    # 16.7f
        0x40e00000    # 7.0f
        -0x3ed33333    # -10.8f
        0x3fd9999a    # 1.7f
    .end array-data

    #@37a
    .line 77
    :array_14
    .array-data 4
        0x0
        -0x3e5c0000    # -20.5f
        0x41380000    # 11.5f
        0x414ccccd    # 12.8f
        -0x3f19999a    # -7.2f
        -0x3f133333    # -7.4f
        0x41000000    # 8.0f
        0x40066666    # 2.1f
        -0x3f3ccccd    # -6.1f
        0x40e00000    # 7.0f
    .end array-data

    #@392
    .line 78
    :array_15
    .array-data 4
        0x0
        0x40333333    # 2.8f
        -0x42333333    # -0.1f
        0x40966666    # 4.7f
        0x408ccccd    # 4.4f
        -0x3f19999a    # -7.2f
        -0x40800000    # -1.0f
        -0x3f866666    # -3.9f
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
        -0x3efb3333    # -8.3f
    .end array-data

    #@3ac
    .line 79
    :array_16
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3fd9999a    # 1.7f
        -0x40e66666    # -0.6f
        -0x4019999a    # -1.8f
        0x3f666666    # 0.9f
        -0x41333333    # -0.4f
        -0x3fe00000    # -2.5f
        -0x4059999a    # -1.3f
        -0x3ff9999a    # -2.1f
        -0x400ccccd    # -1.9f
        -0x4019999a    # -1.8f
    .end array-data

    #@3c8
    .line 80
    :array_17
    .array-data 4
        0x0
        -0x4099999a    # -0.9f
        0x3e99999a    # 0.3f
        0x40066666    # 2.1f
        -0x3fe00000    # -2.5f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x0
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        -0x4099999a    # -0.9f
        -0x41b33333    # -0.2f
        0x3f666666    # 0.9f
    .end array-data

    #@3e6
    .line 84
    :array_18
    .array-data 4
        0x4139999a    # 11.6f
        0x41840000    # 16.5f
    .end array-data

    #@3ee
    .line 85
    :array_19
    .array-data 4
        -0x3ebe6666    # -12.1f
        -0x3f733333    # -4.4f
        0x3ff33333    # 1.9f
    .end array-data

    #@3f8
    .line 86
    :array_1a
    .array-data 4
        0x3ecccccd    # 0.4f
        -0x3f7ccccd    # -4.1f
        -0x3fc66666    # -2.9f
        -0x3f09999a    # -7.7f
    .end array-data

    #@404
    .line 87
    :array_1b
    .array-data 4
        -0x4019999a    # -1.8f
        0x40133333    # 2.3f
        -0x3ef4cccd    # -8.7f
        0x40933333    # 4.6f
        -0x3ff9999a    # -2.1f
    .end array-data

    #@412
    .line 88
    :array_1c
    .array-data 4
        -0x40800000    # -1.0f
        0x3f19999a    # 0.6f
        -0x4019999a    # -1.8f
        -0x40800000    # -1.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    #@422
    .line 89
    :array_1d
    .array-data 4
        -0x41b33333    # -0.2f
        -0x41b33333    # -0.2f
        -0x42333333    # -0.1f
        0x40000000    # 2.0f
        -0x40266666    # -1.7f
        -0x41666666    # -0.3f
        0x3fd9999a    # 1.7f
    .end array-data

    #@434
    .line 90
    :array_1e
    .array-data 4
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        -0x40e66666    # -0.6f
        0x3fa66666    # 1.3f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        -0x40cccccd    # -0.7f
        0x3f19999a    # 0.6f
    .end array-data

    #@448
    .line 91
    :array_1f
    .array-data 4
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
        -0x40e66666    # -0.6f
        0x3e4ccccd    # 0.2f
        -0x41b33333    # -0.2f
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
        -0x40e66666    # -0.6f
        0x3e4ccccd    # 0.2f
    .end array-data

    #@45e
    .line 92
    :array_20
    .array-data 4
        0x0
        -0x42333333    # -0.1f
        0x0
        0x3e99999a    # 0.3f
        -0x41333333    # -0.4f
        -0x41666666    # -0.3f
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        -0x41333333    # -0.4f
        -0x41b33333    # -0.2f
    .end array-data

    #@476
    .line 93
    :array_21
    .array-data 4
        0x0
        0x0
        -0x42333333    # -0.1f
        0x3e4ccccd    # 0.2f
        0x0
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        0x0
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        -0x41b33333    # -0.2f
    .end array-data

    #@490
    .line 94
    :array_22
    .array-data 4
        0x0
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
        0x0
    .end array-data

    #@4ac
    .line 95
    :array_23
    .array-data 4
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    #@4ca
    .line 99
    :array_24
    .array-data 4
        0x0
        -0x3e30cccd    # -25.9f
    .end array-data

    #@4d2
    .line 100
    :array_25
    .array-data 4
        0x0
        -0x3e4c0000    # -22.5f
        -0x3ec33333    # -11.8f
    .end array-data

    #@4dc
    .line 101
    :array_26
    .array-data 4
        0x0
        0x40e9999a    # 7.3f
        -0x3f866666    # -3.9f
        -0x3fd9999a    # -2.6f
    .end array-data

    #@4e8
    .line 102
    :array_27
    .array-data 4
        0x0
        0x3f8ccccd    # 1.1f
        0x402ccccd    # 2.7f
        0x4079999a    # 3.9f
        -0x40b33333    # -0.8f
    .end array-data

    #@4f6
    .line 103
    :array_28
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3fe66666    # 1.8f
        0x3f99999a    # 1.2f
        0x40800000    # 4.0f
        -0x40e66666    # -0.6f
    .end array-data

    #@506
    .line 104
    :array_29
    .array-data 4
        0x0
        -0x41b33333    # -0.2f
        -0x3ff9999a    # -2.1f
        -0x41333333    # -0.4f
        -0x40e66666    # -0.6f
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
    .end array-data

    #@518
    .line 105
    :array_2a
    .array-data 4
        0x0
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        -0x40b33333    # -0.8f
        -0x41666666    # -0.3f
        0x3e99999a    # 0.3f
    .end array-data

    #@52c
    .line 106
    :array_2b
    .array-data 4
        0x0
        -0x42333333    # -0.1f
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
    .end array-data

    #@542
    .line 107
    :array_2c
    .array-data 4
        0x0
        0x0
        -0x41b33333    # -0.2f
        0x0
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
        0x0
        -0x41b33333    # -0.2f
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
    .end array-data

    #@55a
    .line 108
    :array_2d
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        0x0
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        0x0
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        0x0
        -0x42333333    # -0.1f
    .end array-data

    #@574
    .line 109
    :array_2e
    .array-data 4
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x3dcccccd    # 0.1f
        0x0
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        0x0
        -0x42333333    # -0.1f
    .end array-data

    #@590
    .line 110
    :array_2f
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(FFFJ)V
    .locals 26
    .param p1, "gdLatitudeDeg"    # F
    .param p2, "gdLongitudeDeg"    # F
    .param p3, "altitudeMeters"    # F
    .param p4, "timeMillis"    # J

    #@0
    .prologue
    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 139
    sget-object v20, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    #@5
    move-object/from16 v0, v20

    #@7
    array-length v2, v0

    #@8
    .line 144
    .local v2, "MAX_N":I
    const v20, -0x3d4c0001    # -89.99999f

    #@b
    move/from16 v0, v20

    #@d
    move/from16 v1, p1

    #@f
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@12
    move-result v20

    #@13
    .line 143
    const v21, 0x42b3ffff    # 89.99999f

    #@16
    move/from16 v0, v21

    #@18
    move/from16 v1, v20

    #@1a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@1d
    move-result p1

    #@1e
    .line 145
    invoke-direct/range {p0 .. p3}, Landroid/hardware/GeomagneticField;->computeGeocentricCoordinates(FFF)V

    #@21
    .line 149
    sget-boolean v20, Landroid/hardware/GeomagneticField;->-assertionsDisabled:Z

    #@23
    if-nez v20, :cond_1

    #@25
    sget-object v20, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    #@27
    move-object/from16 v0, v20

    #@29
    array-length v0, v0

    #@2a
    move/from16 v20, v0

    #@2c
    sget-object v21, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    #@2e
    move-object/from16 v0, v21

    #@30
    array-length v0, v0

    #@31
    move/from16 v21, v0

    #@33
    move/from16 v0, v20

    #@35
    move/from16 v1, v21

    #@37
    if-ne v0, v1, :cond_0

    #@39
    const/16 v20, 0x1

    #@3b
    :goto_0
    if-nez v20, :cond_1

    #@3d
    new-instance v20, Ljava/lang/AssertionError;

    #@3f
    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    #@42
    throw v20

    #@43
    :cond_0
    const/16 v20, 0x0

    #@45
    goto :goto_0

    #@46
    .line 156
    :cond_1
    new-instance v11, Landroid/hardware/GeomagneticField$LegendreTable;

    #@48
    add-int/lit8 v20, v2, -0x1

    #@4a
    .line 157
    move-object/from16 v0, p0

    #@4c
    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    #@4e
    move/from16 v21, v0

    #@50
    move/from16 v0, v21

    #@52
    float-to-double v0, v0

    #@53
    move-wide/from16 v22, v0

    #@55
    const-wide v24, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@5a
    sub-double v22, v24, v22

    #@5c
    move-wide/from16 v0, v22

    #@5e
    double-to-float v0, v0

    #@5f
    move/from16 v21, v0

    #@61
    .line 156
    move/from16 v0, v20

    #@63
    move/from16 v1, v21

    #@65
    invoke-direct {v11, v0, v1}, Landroid/hardware/GeomagneticField$LegendreTable;-><init>(IF)V

    #@68
    .line 161
    .local v11, "legendre":Landroid/hardware/GeomagneticField$LegendreTable;
    add-int/lit8 v20, v2, 0x2

    #@6a
    move/from16 v0, v20

    #@6c
    new-array v0, v0, [F

    #@6e
    move-object/from16 v16, v0

    #@70
    .line 162
    .local v16, "relativeRadiusPower":[F
    const/high16 v20, 0x3f800000    # 1.0f

    #@72
    const/16 v21, 0x0

    #@74
    aput v20, v16, v21

    #@76
    .line 163
    move-object/from16 v0, p0

    #@78
    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    #@7a
    move/from16 v20, v0

    #@7c
    const v21, 0x45c7199a

    #@7f
    div-float v20, v21, v20

    #@81
    const/16 v21, 0x1

    #@83
    aput v20, v16, v21

    #@85
    .line 164
    const/4 v9, 0x2

    #@86
    .local v9, "i":I
    :goto_1
    move-object/from16 v0, v16

    #@88
    array-length v0, v0

    #@89
    move/from16 v20, v0

    #@8b
    move/from16 v0, v20

    #@8d
    if-ge v9, v0, :cond_2

    #@8f
    .line 165
    add-int/lit8 v20, v9, -0x1

    #@91
    aget v20, v16, v20

    #@93
    .line 166
    const/16 v21, 0x1

    #@95
    aget v21, v16, v21

    #@97
    .line 165
    mul-float v20, v20, v21

    #@99
    aput v20, v16, v9

    #@9b
    .line 164
    add-int/lit8 v9, v9, 0x1

    #@9d
    goto :goto_1

    #@9e
    .line 171
    :cond_2
    new-array v0, v2, [F

    #@a0
    move-object/from16 v17, v0

    #@a2
    .line 172
    .local v17, "sinMLon":[F
    new-array v3, v2, [F

    #@a4
    .line 173
    .local v3, "cosMLon":[F
    const/16 v20, 0x0

    #@a6
    const/16 v21, 0x0

    #@a8
    aput v20, v17, v21

    #@aa
    .line 174
    const/high16 v20, 0x3f800000    # 1.0f

    #@ac
    const/16 v21, 0x0

    #@ae
    aput v20, v3, v21

    #@b0
    .line 175
    move-object/from16 v0, p0

    #@b2
    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    #@b4
    move/from16 v20, v0

    #@b6
    move/from16 v0, v20

    #@b8
    float-to-double v0, v0

    #@b9
    move-wide/from16 v20, v0

    #@bb
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    #@be
    move-result-wide v20

    #@bf
    move-wide/from16 v0, v20

    #@c1
    double-to-float v0, v0

    #@c2
    move/from16 v20, v0

    #@c4
    const/16 v21, 0x1

    #@c6
    aput v20, v17, v21

    #@c8
    .line 176
    move-object/from16 v0, p0

    #@ca
    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    #@cc
    move/from16 v20, v0

    #@ce
    move/from16 v0, v20

    #@d0
    float-to-double v0, v0

    #@d1
    move-wide/from16 v20, v0

    #@d3
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    #@d6
    move-result-wide v20

    #@d7
    move-wide/from16 v0, v20

    #@d9
    double-to-float v0, v0

    #@da
    move/from16 v20, v0

    #@dc
    const/16 v21, 0x1

    #@de
    aput v20, v3, v21

    #@e0
    .line 178
    const/4 v14, 0x2

    #@e1
    .local v14, "m":I
    :goto_2
    if-ge v14, v2, :cond_3

    #@e3
    .line 181
    shr-int/lit8 v18, v14, 0x1

    #@e5
    .line 182
    .local v18, "x":I
    sub-int v20, v14, v18

    #@e7
    aget v20, v17, v20

    #@e9
    aget v21, v3, v18

    #@eb
    mul-float v20, v20, v21

    #@ed
    sub-int v21, v14, v18

    #@ef
    aget v21, v3, v21

    #@f1
    aget v22, v17, v18

    #@f3
    mul-float v21, v21, v22

    #@f5
    add-float v20, v20, v21

    #@f7
    aput v20, v17, v14

    #@f9
    .line 183
    sub-int v20, v14, v18

    #@fb
    aget v20, v3, v20

    #@fd
    aget v21, v3, v18

    #@ff
    mul-float v20, v20, v21

    #@101
    sub-int v21, v14, v18

    #@103
    aget v21, v17, v21

    #@105
    aget v22, v17, v18

    #@107
    mul-float v21, v21, v22

    #@109
    sub-float v20, v20, v21

    #@10b
    aput v20, v3, v14

    #@10d
    .line 178
    add-int/lit8 v14, v14, 0x1

    #@10f
    goto :goto_2

    #@110
    .line 186
    .end local v18    # "x":I
    :cond_3
    move-object/from16 v0, p0

    #@112
    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    #@114
    move/from16 v20, v0

    #@116
    move/from16 v0, v20

    #@118
    float-to-double v0, v0

    #@119
    move-wide/from16 v20, v0

    #@11b
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    #@11e
    move-result-wide v20

    #@11f
    move-wide/from16 v0, v20

    #@121
    double-to-float v0, v0

    #@122
    move/from16 v20, v0

    #@124
    const/high16 v21, 0x3f800000    # 1.0f

    #@126
    div-float v10, v21, v20

    #@128
    .line 188
    .local v10, "inverseCosLatitude":F
    sget-wide v20, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    #@12a
    sub-long v20, p4, v20

    #@12c
    move-wide/from16 v0, v20

    #@12e
    long-to-float v0, v0

    #@12f
    move/from16 v20, v0

    #@131
    const v21, 0x50eaf626

    #@134
    div-float v19, v20, v21

    #@136
    .line 194
    .local v19, "yearsSinceBase":F
    const/4 v5, 0x0

    #@137
    .line 195
    .local v5, "gcX":F
    const/4 v6, 0x0

    #@138
    .line 196
    .local v6, "gcY":F
    const/4 v7, 0x0

    #@139
    .line 198
    .local v7, "gcZ":F
    const/4 v15, 0x1

    #@13a
    .local v15, "n":I
    :goto_3
    if-ge v15, v2, :cond_5

    #@13c
    .line 199
    const/4 v14, 0x0

    #@13d
    :goto_4
    if-gt v14, v15, :cond_4

    #@13f
    .line 201
    sget-object v20, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    #@141
    aget-object v20, v20, v15

    #@143
    aget v20, v20, v14

    #@145
    sget-object v21, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    #@147
    aget-object v21, v21, v15

    #@149
    aget v21, v21, v14

    #@14b
    mul-float v21, v21, v19

    #@14d
    add-float v4, v20, v21

    #@14f
    .line 202
    .local v4, "g":F
    sget-object v20, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    #@151
    aget-object v20, v20, v15

    #@153
    aget v20, v20, v14

    #@155
    sget-object v21, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    #@157
    aget-object v21, v21, v15

    #@159
    aget v21, v21, v14

    #@15b
    mul-float v21, v21, v19

    #@15d
    add-float v8, v20, v21

    #@15f
    .line 209
    .local v8, "h":F
    add-int/lit8 v20, v15, 0x2

    #@161
    aget v20, v16, v20

    #@163
    .line 210
    aget v21, v3, v14

    #@165
    mul-float v21, v21, v4

    #@167
    aget v22, v17, v14

    #@169
    mul-float v22, v22, v8

    #@16b
    add-float v21, v21, v22

    #@16d
    .line 209
    mul-float v20, v20, v21

    #@16f
    .line 211
    iget-object v0, v11, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    #@171
    move-object/from16 v21, v0

    #@173
    aget-object v21, v21, v15

    #@175
    aget v21, v21, v14

    #@177
    .line 209
    mul-float v20, v20, v21

    #@179
    .line 212
    sget-object v21, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    #@17b
    aget-object v21, v21, v15

    #@17d
    aget v21, v21, v14

    #@17f
    .line 209
    mul-float v20, v20, v21

    #@181
    add-float v5, v5, v20

    #@183
    .line 216
    add-int/lit8 v20, v15, 0x2

    #@185
    aget v20, v16, v20

    #@187
    int-to-float v0, v14

    #@188
    move/from16 v21, v0

    #@18a
    mul-float v20, v20, v21

    #@18c
    .line 217
    aget v21, v17, v14

    #@18e
    mul-float v21, v21, v4

    #@190
    aget v22, v3, v14

    #@192
    mul-float v22, v22, v8

    #@194
    sub-float v21, v21, v22

    #@196
    .line 216
    mul-float v20, v20, v21

    #@198
    .line 218
    iget-object v0, v11, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@19a
    move-object/from16 v21, v0

    #@19c
    aget-object v21, v21, v15

    #@19e
    aget v21, v21, v14

    #@1a0
    .line 216
    mul-float v20, v20, v21

    #@1a2
    .line 219
    sget-object v21, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    #@1a4
    aget-object v21, v21, v15

    #@1a6
    aget v21, v21, v14

    #@1a8
    .line 216
    mul-float v20, v20, v21

    #@1aa
    mul-float v20, v20, v10

    #@1ac
    add-float v6, v6, v20

    #@1ae
    .line 223
    add-int/lit8 v20, v15, 0x1

    #@1b0
    move/from16 v0, v20

    #@1b2
    int-to-float v0, v0

    #@1b3
    move/from16 v20, v0

    #@1b5
    add-int/lit8 v21, v15, 0x2

    #@1b7
    aget v21, v16, v21

    #@1b9
    mul-float v20, v20, v21

    #@1bb
    .line 224
    aget v21, v3, v14

    #@1bd
    mul-float v21, v21, v4

    #@1bf
    aget v22, v17, v14

    #@1c1
    mul-float v22, v22, v8

    #@1c3
    add-float v21, v21, v22

    #@1c5
    .line 223
    mul-float v20, v20, v21

    #@1c7
    .line 225
    iget-object v0, v11, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    #@1c9
    move-object/from16 v21, v0

    #@1cb
    aget-object v21, v21, v15

    #@1cd
    aget v21, v21, v14

    #@1cf
    .line 223
    mul-float v20, v20, v21

    #@1d1
    .line 226
    sget-object v21, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    #@1d3
    aget-object v21, v21, v15

    #@1d5
    aget v21, v21, v14

    #@1d7
    .line 223
    mul-float v20, v20, v21

    #@1d9
    sub-float v7, v7, v20

    #@1db
    .line 199
    add-int/lit8 v14, v14, 0x1

    #@1dd
    goto/16 :goto_4

    #@1df
    .line 198
    .end local v4    # "g":F
    .end local v8    # "h":F
    :cond_4
    add-int/lit8 v15, v15, 0x1

    #@1e1
    goto/16 :goto_3

    #@1e3
    .line 233
    :cond_5
    move/from16 v0, p1

    #@1e5
    float-to-double v0, v0

    #@1e6
    move-wide/from16 v20, v0

    #@1e8
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    #@1eb
    move-result-wide v20

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    #@1f0
    move/from16 v22, v0

    #@1f2
    move/from16 v0, v22

    #@1f4
    float-to-double v0, v0

    #@1f5
    move-wide/from16 v22, v0

    #@1f7
    sub-double v12, v20, v22

    #@1f9
    .line 234
    .local v12, "latDiffRad":D
    float-to-double v0, v5

    #@1fa
    move-wide/from16 v20, v0

    #@1fc
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    #@1ff
    move-result-wide v22

    #@200
    mul-double v20, v20, v22

    #@202
    .line 235
    float-to-double v0, v7

    #@203
    move-wide/from16 v22, v0

    #@205
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    #@208
    move-result-wide v24

    #@209
    mul-double v22, v22, v24

    #@20b
    .line 234
    add-double v20, v20, v22

    #@20d
    move-wide/from16 v0, v20

    #@20f
    double-to-float v0, v0

    #@210
    move/from16 v20, v0

    #@212
    move/from16 v0, v20

    #@214
    move-object/from16 v1, p0

    #@216
    iput v0, v1, Landroid/hardware/GeomagneticField;->mX:F

    #@218
    .line 236
    move-object/from16 v0, p0

    #@21a
    iput v6, v0, Landroid/hardware/GeomagneticField;->mY:F

    #@21c
    .line 237
    neg-float v0, v5

    #@21d
    move/from16 v20, v0

    #@21f
    move/from16 v0, v20

    #@221
    float-to-double v0, v0

    #@222
    move-wide/from16 v20, v0

    #@224
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    #@227
    move-result-wide v22

    #@228
    mul-double v20, v20, v22

    #@22a
    .line 238
    float-to-double v0, v7

    #@22b
    move-wide/from16 v22, v0

    #@22d
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    #@230
    move-result-wide v24

    #@231
    mul-double v22, v22, v24

    #@233
    .line 237
    add-double v20, v20, v22

    #@235
    move-wide/from16 v0, v20

    #@237
    double-to-float v0, v0

    #@238
    move/from16 v20, v0

    #@23a
    move/from16 v0, v20

    #@23c
    move-object/from16 v1, p0

    #@23e
    iput v0, v1, Landroid/hardware/GeomagneticField;->mZ:F

    #@240
    .line 138
    return-void
.end method

.method private computeGeocentricCoordinates(FFF)V
    .locals 12
    .param p1, "gdLatitudeDeg"    # F
    .param p2, "gdLongitudeDeg"    # F
    .param p3, "altitudeMeters"    # F

    #@0
    .prologue
    .line 307
    const/high16 v8, 0x447a0000    # 1000.0f

    #@2
    div-float v0, p3, v8

    #@4
    .line 310
    .local v0, "altitudeKm":F
    float-to-double v8, p1

    #@5
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    #@8
    move-result-wide v2

    #@9
    .line 311
    .local v2, "gdLatRad":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    #@c
    move-result-wide v8

    #@d
    double-to-float v1, v8

    #@e
    .line 312
    .local v1, "clat":F
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    #@11
    move-result-wide v8

    #@12
    double-to-float v6, v8

    #@13
    .line 313
    .local v6, "slat":F
    div-float v7, v6, v1

    #@15
    .line 308
    .local v7, "tlat":F
    const v8, 0x4c1b2f2f    # 4.0680636E7f

    #@18
    .line 315
    mul-float/2addr v8, v1

    #@19
    mul-float/2addr v8, v1

    #@1a
    .line 309
    const v9, 0x4c1a253b    # 4.04083E7f

    #@1d
    .line 315
    mul-float/2addr v9, v6

    #@1e
    mul-float/2addr v9, v6

    #@1f
    add-float/2addr v8, v9

    #@20
    float-to-double v8, v8

    #@21
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    #@24
    move-result-wide v8

    #@25
    double-to-float v4, v8

    #@26
    .line 317
    .local v4, "latRad":F
    mul-float v8, v4, v0

    #@28
    .line 309
    const v9, 0x4c1a253b    # 4.04083E7f

    #@2b
    .line 317
    add-float/2addr v8, v9

    #@2c
    mul-float/2addr v8, v7

    #@2d
    .line 318
    mul-float v9, v4, v0

    #@2f
    .line 308
    const v10, 0x4c1b2f2f    # 4.0680636E7f

    #@32
    .line 318
    add-float/2addr v9, v10

    #@33
    .line 317
    div-float/2addr v8, v9

    #@34
    float-to-double v8, v8

    #@35
    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    #@38
    move-result-wide v8

    #@39
    double-to-float v8, v8

    #@3a
    iput v8, p0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    #@3c
    .line 320
    float-to-double v8, p2

    #@3d
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    #@40
    move-result-wide v8

    #@41
    double-to-float v8, v8

    #@42
    iput v8, p0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    #@44
    .line 322
    mul-float v8, v0, v0

    #@46
    .line 323
    const/high16 v9, 0x40000000    # 2.0f

    #@48
    mul-float/2addr v9, v0

    #@49
    .line 308
    const v10, 0x4c1b2f2f    # 4.0680636E7f

    #@4c
    .line 323
    mul-float/2addr v10, v1

    #@4d
    mul-float/2addr v10, v1

    #@4e
    .line 309
    const v11, 0x4c1a253b    # 4.04083E7f

    #@51
    .line 324
    mul-float/2addr v11, v6

    #@52
    mul-float/2addr v11, v6

    #@53
    .line 323
    add-float/2addr v10, v11

    #@54
    float-to-double v10, v10

    #@55
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    #@58
    move-result-wide v10

    #@59
    double-to-float v10, v10

    #@5a
    mul-float/2addr v9, v10

    #@5b
    .line 322
    add-float/2addr v8, v9

    #@5c
    .line 325
    const v9, 0x58bc2457

    #@5f
    mul-float/2addr v9, v1

    #@60
    mul-float/2addr v9, v1

    #@61
    const v10, 0x58b9a1a1

    #@64
    mul-float/2addr v10, v6

    #@65
    mul-float/2addr v10, v6

    #@66
    add-float/2addr v9, v10

    #@67
    .line 308
    const v10, 0x4c1b2f2f    # 4.0680636E7f

    #@6a
    .line 326
    mul-float/2addr v10, v1

    #@6b
    mul-float/2addr v10, v1

    #@6c
    .line 309
    const v11, 0x4c1a253b    # 4.04083E7f

    #@6f
    .line 326
    mul-float/2addr v11, v6

    #@70
    mul-float/2addr v11, v6

    #@71
    add-float/2addr v10, v11

    #@72
    .line 325
    div-float/2addr v9, v10

    #@73
    .line 322
    add-float v5, v8, v9

    #@75
    .line 327
    .local v5, "radSq":F
    float-to-double v8, v5

    #@76
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    #@79
    move-result-wide v8

    #@7a
    double-to-float v8, v8

    #@7b
    iput v8, p0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    #@7d
    .line 306
    return-void
.end method

.method private static computeSchmidtQuasiNormFactors(I)[[F
    .locals 11
    .param p0, "maxN"    # I

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 394
    add-int/lit8 v3, p0, 0x1

    #@5
    new-array v2, v3, [[F

    #@7
    .line 395
    .local v2, "schmidtQuasiNorm":[[F
    new-array v3, v5, [F

    #@9
    const/high16 v6, 0x3f800000    # 1.0f

    #@b
    aput v6, v3, v10

    #@d
    aput-object v3, v2, v10

    #@f
    .line 396
    const/4 v1, 0x1

    #@10
    .local v1, "n":I
    :goto_0
    if-gt v1, p0, :cond_2

    #@12
    .line 397
    add-int/lit8 v3, v1, 0x1

    #@14
    new-array v3, v3, [F

    #@16
    aput-object v3, v2, v1

    #@18
    .line 398
    aget-object v3, v2, v1

    #@1a
    .line 399
    add-int/lit8 v6, v1, -0x1

    #@1c
    aget-object v6, v2, v6

    #@1e
    aget v6, v6, v10

    #@20
    mul-int/lit8 v7, v1, 0x2

    #@22
    add-int/lit8 v7, v7, -0x1

    #@24
    int-to-float v7, v7

    #@25
    mul-float/2addr v6, v7

    #@26
    int-to-float v7, v1

    #@27
    div-float/2addr v6, v7

    #@28
    .line 398
    aput v6, v3, v10

    #@2a
    .line 400
    const/4 v0, 0x1

    #@2b
    .local v0, "m":I
    :goto_1
    if-gt v0, v1, :cond_1

    #@2d
    .line 401
    aget-object v6, v2, v1

    #@2f
    aget-object v3, v2, v1

    #@31
    add-int/lit8 v7, v0, -0x1

    #@33
    aget v7, v3, v7

    #@35
    .line 402
    sub-int v3, v1, v0

    #@37
    add-int/lit8 v8, v3, 0x1

    #@39
    if-ne v0, v5, :cond_0

    #@3b
    move v3, v4

    #@3c
    :goto_2
    mul-int/2addr v3, v8

    #@3d
    int-to-float v3, v3

    #@3e
    .line 403
    add-int v8, v1, v0

    #@40
    int-to-float v8, v8

    #@41
    .line 402
    div-float/2addr v3, v8

    #@42
    float-to-double v8, v3

    #@43
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    #@46
    move-result-wide v8

    #@47
    double-to-float v3, v8

    #@48
    .line 401
    mul-float/2addr v3, v7

    #@49
    aput v3, v6, v0

    #@4b
    .line 400
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_1

    #@4e
    :cond_0
    move v3, v5

    #@4f
    .line 402
    goto :goto_2

    #@50
    .line 396
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@52
    goto :goto_0

    #@53
    .line 406
    .end local v0    # "m":I
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getDeclination()F
    .locals 4

    #@0
    .prologue
    .line 268
    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    #@2
    float-to-double v0, v0

    #@3
    iget v2, p0, Landroid/hardware/GeomagneticField;->mX:F

    #@5
    float-to-double v2, v2

    #@6
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@9
    move-result-wide v0

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    #@d
    move-result-wide v0

    #@e
    double-to-float v0, v0

    #@f
    return v0
.end method

.method public getFieldStrength()F
    .locals 3

    #@0
    .prologue
    .line 291
    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    #@2
    iget v1, p0, Landroid/hardware/GeomagneticField;->mX:F

    #@4
    mul-float/2addr v0, v1

    #@5
    iget v1, p0, Landroid/hardware/GeomagneticField;->mY:F

    #@7
    iget v2, p0, Landroid/hardware/GeomagneticField;->mY:F

    #@9
    mul-float/2addr v1, v2

    #@a
    add-float/2addr v0, v1

    #@b
    iget v1, p0, Landroid/hardware/GeomagneticField;->mZ:F

    #@d
    iget v2, p0, Landroid/hardware/GeomagneticField;->mZ:F

    #@f
    mul-float/2addr v1, v2

    #@10
    add-float/2addr v0, v1

    #@11
    float-to-double v0, v0

    #@12
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@15
    move-result-wide v0

    #@16
    double-to-float v0, v0

    #@17
    return v0
.end method

.method public getHorizontalStrength()F
    .locals 4

    #@0
    .prologue
    .line 284
    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    #@2
    float-to-double v0, v0

    #@3
    iget v2, p0, Landroid/hardware/GeomagneticField;->mY:F

    #@5
    float-to-double v2, v2

    #@6
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    #@9
    move-result-wide v0

    #@a
    double-to-float v0, v0

    #@b
    return v0
.end method

.method public getInclination()F
    .locals 4

    #@0
    .prologue
    .line 276
    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    #@2
    float-to-double v0, v0

    #@3
    .line 277
    invoke-virtual {p0}, Landroid/hardware/GeomagneticField;->getHorizontalStrength()F

    #@6
    move-result v2

    #@7
    float-to-double v2, v2

    #@8
    .line 276
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@b
    move-result-wide v0

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    #@f
    move-result-wide v0

    #@10
    double-to-float v0, v0

    #@11
    return v0
.end method

.method public getX()F
    .locals 1

    #@0
    .prologue
    .line 245
    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    #@2
    return v0
.end method

.method public getY()F
    .locals 1

    #@0
    .prologue
    .line 252
    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    #@2
    return v0
.end method

.method public getZ()F
    .locals 1

    #@0
    .prologue
    .line 259
    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    #@2
    return v0
.end method
