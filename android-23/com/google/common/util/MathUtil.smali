.class public final Landroid_maps_conflict_avoidance/com/google/common/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field private static final sinArray:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v6, -0x8

    #@2
    const/16 v5, -0xb

    #@4
    const/4 v4, -0x7

    #@5
    const/4 v3, -0x6

    #@6
    const/16 v0, 0x5b

    #@8
    .line 17
    new-array v0, v0, [B

    #@a
    aput-byte v1, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    const/4 v2, 0x4

    #@e
    aput-byte v2, v0, v1

    #@10
    const/4 v1, 0x2

    #@11
    const/16 v2, 0x9

    #@13
    aput-byte v2, v0, v1

    #@15
    const/4 v1, 0x3

    #@16
    const/16 v2, 0xd

    #@18
    aput-byte v2, v0, v1

    #@1a
    const/4 v1, 0x4

    #@1b
    const/16 v2, 0x11

    #@1d
    aput-byte v2, v0, v1

    #@1f
    const/4 v1, 0x5

    #@20
    const/16 v2, 0x16

    #@22
    aput-byte v2, v0, v1

    #@24
    const/4 v1, 0x6

    #@25
    const/16 v2, 0x1a

    #@27
    aput-byte v2, v0, v1

    #@29
    const/4 v1, 0x7

    #@2a
    const/16 v2, 0x1e

    #@2c
    aput-byte v2, v0, v1

    #@2e
    const/16 v1, 0x8

    #@30
    const/16 v2, 0x23

    #@32
    aput-byte v2, v0, v1

    #@34
    const/16 v1, 0x9

    #@36
    const/16 v2, 0x27

    #@38
    aput-byte v2, v0, v1

    #@3a
    const/16 v1, 0xa

    #@3c
    const/16 v2, 0x2b

    #@3e
    aput-byte v2, v0, v1

    #@40
    const/16 v1, 0xb

    #@42
    const/16 v2, 0x30

    #@44
    aput-byte v2, v0, v1

    #@46
    const/16 v1, 0xc

    #@48
    const/16 v2, 0x34

    #@4a
    aput-byte v2, v0, v1

    #@4c
    const/16 v1, 0xd

    #@4e
    const/16 v2, 0x38

    #@50
    aput-byte v2, v0, v1

    #@52
    const/16 v1, 0xe

    #@54
    const/16 v2, 0x3c

    #@56
    aput-byte v2, v0, v1

    #@58
    const/16 v1, 0xf

    #@5a
    const/16 v2, 0x41

    #@5c
    aput-byte v2, v0, v1

    #@5e
    const/16 v1, 0x10

    #@60
    const/16 v2, 0x45

    #@62
    aput-byte v2, v0, v1

    #@64
    const/16 v1, 0x11

    #@66
    const/16 v2, 0x49

    #@68
    aput-byte v2, v0, v1

    #@6a
    const/16 v1, 0x12

    #@6c
    const/16 v2, 0x4d

    #@6e
    aput-byte v2, v0, v1

    #@70
    const/16 v1, 0x13

    #@72
    const/16 v2, 0x51

    #@74
    aput-byte v2, v0, v1

    #@76
    const/16 v1, 0x14

    #@78
    const/16 v2, 0x56

    #@7a
    aput-byte v2, v0, v1

    #@7c
    const/16 v1, 0x15

    #@7e
    const/16 v2, 0x5a

    #@80
    aput-byte v2, v0, v1

    #@82
    const/16 v1, 0x16

    #@84
    const/16 v2, 0x5e

    #@86
    aput-byte v2, v0, v1

    #@88
    const/16 v1, 0x17

    #@8a
    const/16 v2, 0x62

    #@8c
    aput-byte v2, v0, v1

    #@8e
    const/16 v1, 0x18

    #@90
    const/16 v2, 0x66

    #@92
    aput-byte v2, v0, v1

    #@94
    const/16 v1, 0x19

    #@96
    const/16 v2, 0x6a

    #@98
    aput-byte v2, v0, v1

    #@9a
    const/16 v1, 0x1a

    #@9c
    const/16 v2, 0x6e

    #@9e
    aput-byte v2, v0, v1

    #@a0
    const/16 v1, 0x1b

    #@a2
    const/16 v2, 0x71

    #@a4
    aput-byte v2, v0, v1

    #@a6
    const/16 v1, 0x1c

    #@a8
    const/16 v2, 0x75

    #@aa
    aput-byte v2, v0, v1

    #@ac
    const/16 v1, 0x1d

    #@ae
    const/16 v2, 0x79

    #@b0
    aput-byte v2, v0, v1

    #@b2
    const/16 v1, 0x1e

    #@b4
    const/16 v2, 0x7d

    #@b6
    aput-byte v2, v0, v1

    #@b8
    const/16 v1, 0x1f

    #@ba
    const/16 v2, -0x7f

    #@bc
    aput-byte v2, v0, v1

    #@be
    const/16 v1, 0x20

    #@c0
    const/16 v2, -0x7c

    #@c2
    aput-byte v2, v0, v1

    #@c4
    const/16 v1, 0x21

    #@c6
    const/16 v2, -0x78

    #@c8
    aput-byte v2, v0, v1

    #@ca
    const/16 v1, 0x22

    #@cc
    const/16 v2, -0x74

    #@ce
    aput-byte v2, v0, v1

    #@d0
    const/16 v1, 0x23

    #@d2
    const/16 v2, -0x71

    #@d4
    aput-byte v2, v0, v1

    #@d6
    const/16 v1, 0x24

    #@d8
    const/16 v2, -0x6d

    #@da
    aput-byte v2, v0, v1

    #@dc
    const/16 v1, 0x25

    #@de
    const/16 v2, -0x6a

    #@e0
    aput-byte v2, v0, v1

    #@e2
    const/16 v1, 0x26

    #@e4
    const/16 v2, -0x66

    #@e6
    aput-byte v2, v0, v1

    #@e8
    const/16 v1, 0x27

    #@ea
    const/16 v2, -0x63

    #@ec
    aput-byte v2, v0, v1

    #@ee
    const/16 v1, 0x28

    #@f0
    const/16 v2, -0x5f

    #@f2
    aput-byte v2, v0, v1

    #@f4
    const/16 v1, 0x29

    #@f6
    const/16 v2, -0x5c

    #@f8
    aput-byte v2, v0, v1

    #@fa
    const/16 v1, 0x2a

    #@fc
    const/16 v2, -0x59

    #@fe
    aput-byte v2, v0, v1

    #@100
    const/16 v1, 0x2b

    #@102
    const/16 v2, -0x56

    #@104
    aput-byte v2, v0, v1

    #@106
    const/16 v1, 0x2c

    #@108
    const/16 v2, -0x52

    #@10a
    aput-byte v2, v0, v1

    #@10c
    const/16 v1, 0x2d

    #@10e
    const/16 v2, -0x4f

    #@110
    aput-byte v2, v0, v1

    #@112
    const/16 v1, 0x2e

    #@114
    const/16 v2, -0x4c

    #@116
    aput-byte v2, v0, v1

    #@118
    const/16 v1, 0x2f

    #@11a
    const/16 v2, -0x49

    #@11c
    aput-byte v2, v0, v1

    #@11e
    const/16 v1, 0x30

    #@120
    const/16 v2, -0x46

    #@122
    aput-byte v2, v0, v1

    #@124
    const/16 v1, 0x31

    #@126
    const/16 v2, -0x43

    #@128
    aput-byte v2, v0, v1

    #@12a
    const/16 v1, 0x32

    #@12c
    const/16 v2, -0x40

    #@12e
    aput-byte v2, v0, v1

    #@130
    const/16 v1, 0x33

    #@132
    const/16 v2, -0x3e

    #@134
    aput-byte v2, v0, v1

    #@136
    const/16 v1, 0x34

    #@138
    const/16 v2, -0x3b

    #@13a
    aput-byte v2, v0, v1

    #@13c
    const/16 v1, 0x35

    #@13e
    const/16 v2, -0x38

    #@140
    aput-byte v2, v0, v1

    #@142
    const/16 v1, 0x36

    #@144
    const/16 v2, -0x36

    #@146
    aput-byte v2, v0, v1

    #@148
    const/16 v1, 0x37

    #@14a
    const/16 v2, -0x33

    #@14c
    aput-byte v2, v0, v1

    #@14e
    const/16 v1, 0x38

    #@150
    const/16 v2, -0x31

    #@152
    aput-byte v2, v0, v1

    #@154
    const/16 v1, 0x39

    #@156
    const/16 v2, -0x2e

    #@158
    aput-byte v2, v0, v1

    #@15a
    const/16 v1, 0x3a

    #@15c
    const/16 v2, -0x2c

    #@15e
    aput-byte v2, v0, v1

    #@160
    const/16 v1, 0x3b

    #@162
    const/16 v2, -0x2a

    #@164
    aput-byte v2, v0, v1

    #@166
    const/16 v1, 0x3c

    #@168
    const/16 v2, -0x27

    #@16a
    aput-byte v2, v0, v1

    #@16c
    const/16 v1, 0x3d

    #@16e
    const/16 v2, -0x25

    #@170
    aput-byte v2, v0, v1

    #@172
    const/16 v1, 0x3e

    #@174
    const/16 v2, -0x23

    #@176
    aput-byte v2, v0, v1

    #@178
    const/16 v1, 0x3f

    #@17a
    const/16 v2, -0x21

    #@17c
    aput-byte v2, v0, v1

    #@17e
    const/16 v1, 0x40

    #@180
    const/16 v2, -0x1f

    #@182
    aput-byte v2, v0, v1

    #@184
    const/16 v1, 0x41

    #@186
    const/16 v2, -0x1d

    #@188
    aput-byte v2, v0, v1

    #@18a
    const/16 v1, 0x42

    #@18c
    const/16 v2, -0x1c

    #@18e
    aput-byte v2, v0, v1

    #@190
    const/16 v1, 0x43

    #@192
    const/16 v2, -0x1a

    #@194
    aput-byte v2, v0, v1

    #@196
    const/16 v1, 0x44

    #@198
    const/16 v2, -0x18

    #@19a
    aput-byte v2, v0, v1

    #@19c
    const/16 v1, 0x45

    #@19e
    const/16 v2, -0x17

    #@1a0
    aput-byte v2, v0, v1

    #@1a2
    const/16 v1, 0x46

    #@1a4
    const/16 v2, -0x15

    #@1a6
    aput-byte v2, v0, v1

    #@1a8
    const/16 v1, 0x47

    #@1aa
    const/16 v2, -0x14

    #@1ac
    aput-byte v2, v0, v1

    #@1ae
    const/16 v1, 0x48

    #@1b0
    const/16 v2, -0x12

    #@1b2
    aput-byte v2, v0, v1

    #@1b4
    const/16 v1, 0x49

    #@1b6
    const/16 v2, -0x11

    #@1b8
    aput-byte v2, v0, v1

    #@1ba
    const/16 v1, 0x4a

    #@1bc
    const/16 v2, -0x10

    #@1be
    aput-byte v2, v0, v1

    #@1c0
    const/16 v1, 0x4b

    #@1c2
    const/16 v2, -0xf

    #@1c4
    aput-byte v2, v0, v1

    #@1c6
    const/16 v1, 0x4c

    #@1c8
    const/16 v2, -0xd

    #@1ca
    aput-byte v2, v0, v1

    #@1cc
    const/16 v1, 0x4d

    #@1ce
    const/16 v2, -0xc

    #@1d0
    aput-byte v2, v0, v1

    #@1d2
    const/16 v1, 0x4e

    #@1d4
    aput-byte v5, v0, v1

    #@1d6
    const/16 v1, 0x4f

    #@1d8
    aput-byte v5, v0, v1

    #@1da
    const/16 v1, 0x50

    #@1dc
    const/16 v2, -0xa

    #@1de
    aput-byte v2, v0, v1

    #@1e0
    const/16 v1, 0x51

    #@1e2
    const/16 v2, -0x9

    #@1e4
    aput-byte v2, v0, v1

    #@1e6
    const/16 v1, 0x52

    #@1e8
    aput-byte v6, v0, v1

    #@1ea
    const/16 v1, 0x53

    #@1ec
    aput-byte v6, v0, v1

    #@1ee
    const/16 v1, 0x54

    #@1f0
    aput-byte v4, v0, v1

    #@1f2
    const/16 v1, 0x55

    #@1f4
    aput-byte v4, v0, v1

    #@1f6
    const/16 v1, 0x56

    #@1f8
    aput-byte v4, v0, v1

    #@1fa
    const/16 v1, 0x57

    #@1fc
    aput-byte v3, v0, v1

    #@1fe
    const/16 v1, 0x58

    #@200
    aput-byte v3, v0, v1

    #@202
    const/16 v1, 0x59

    #@204
    aput-byte v3, v0, v1

    #@206
    const/16 v1, 0x5a

    #@208
    aput-byte v3, v0, v1

    #@20a
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/MathUtil;->sinArray:[B

    #@20c
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static ceiledDivision(II)I
    .locals 1
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    #@0
    .prologue
    .line 134
    if-gez p0, :cond_0

    #@2
    .line 137
    div-int v0, p0, p1

    #@4
    return v0

    #@5
    .line 135
    :cond_0
    add-int v0, p0, p1

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    div-int/2addr v0, p1

    #@a
    return v0
.end method
