.class public final enum Landroid/icu/text/TimeZoneFormat$Style;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/TimeZoneFormat$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;


# instance fields
.field final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    const/16 v5, 0x100

    #@5
    const/16 v4, 0x80

    #@7
    .line 81
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@9
    const-string/jumbo v1, "GENERIC_LOCATION"

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {v0, v1, v2, v6}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@10
    .line 86
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@12
    .line 87
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@14
    const-string/jumbo v1, "GENERIC_LONG"

    #@17
    invoke-direct {v0, v1, v6, v7}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@1a
    .line 92
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@1c
    .line 93
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@1e
    const-string/jumbo v1, "GENERIC_SHORT"

    #@21
    invoke-direct {v0, v1, v7, v8}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@24
    .line 98
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@26
    .line 99
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@28
    const-string/jumbo v1, "SPECIFIC_LONG"

    #@2b
    const/4 v2, 0x3

    #@2c
    .line 104
    const/16 v3, 0x8

    #@2e
    .line 99
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@31
    .line 104
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@33
    .line 105
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@35
    const-string/jumbo v1, "SPECIFIC_SHORT"

    #@38
    .line 110
    const/16 v2, 0x10

    #@3a
    .line 105
    invoke-direct {v0, v1, v8, v2}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@3d
    .line 110
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@3f
    .line 111
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@41
    const-string/jumbo v1, "LOCALIZED_GMT"

    #@44
    const/4 v2, 0x5

    #@45
    .line 116
    const/16 v3, 0x20

    #@47
    .line 111
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@4a
    .line 116
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    #@4c
    .line 117
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@4e
    const-string/jumbo v1, "LOCALIZED_GMT_SHORT"

    #@51
    const/4 v2, 0x6

    #@52
    .line 122
    const/16 v3, 0x40

    #@54
    .line 117
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@57
    .line 122
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@59
    .line 123
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@5b
    const-string/jumbo v1, "ISO_BASIC_SHORT"

    #@5e
    const/4 v2, 0x7

    #@5f
    invoke-direct {v0, v1, v2, v4}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@62
    .line 129
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@64
    .line 130
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@66
    const-string/jumbo v1, "ISO_BASIC_LOCAL_SHORT"

    #@69
    const/16 v2, 0x8

    #@6b
    invoke-direct {v0, v1, v2, v5}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@6e
    .line 136
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@70
    .line 137
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@72
    const-string/jumbo v1, "ISO_BASIC_FIXED"

    #@75
    const/16 v2, 0x9

    #@77
    invoke-direct {v0, v1, v2, v4}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@7a
    .line 143
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@7c
    .line 144
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@7e
    const-string/jumbo v1, "ISO_BASIC_LOCAL_FIXED"

    #@81
    const/16 v2, 0xa

    #@83
    invoke-direct {v0, v1, v2, v5}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@86
    .line 150
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@88
    .line 151
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@8a
    const-string/jumbo v1, "ISO_BASIC_FULL"

    #@8d
    const/16 v2, 0xb

    #@8f
    invoke-direct {v0, v1, v2, v4}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@92
    .line 157
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@94
    .line 158
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@96
    const-string/jumbo v1, "ISO_BASIC_LOCAL_FULL"

    #@99
    const/16 v2, 0xc

    #@9b
    invoke-direct {v0, v1, v2, v5}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@9e
    .line 164
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@a0
    .line 165
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@a2
    const-string/jumbo v1, "ISO_EXTENDED_FIXED"

    #@a5
    const/16 v2, 0xd

    #@a7
    invoke-direct {v0, v1, v2, v4}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@aa
    .line 171
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@ac
    .line 172
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@ae
    const-string/jumbo v1, "ISO_EXTENDED_LOCAL_FIXED"

    #@b1
    const/16 v2, 0xe

    #@b3
    invoke-direct {v0, v1, v2, v5}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@b6
    .line 178
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@b8
    .line 179
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@ba
    const-string/jumbo v1, "ISO_EXTENDED_FULL"

    #@bd
    const/16 v2, 0xf

    #@bf
    invoke-direct {v0, v1, v2, v4}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@c2
    .line 185
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@c4
    .line 186
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@c6
    const-string/jumbo v1, "ISO_EXTENDED_LOCAL_FULL"

    #@c9
    const/16 v2, 0x10

    #@cb
    invoke-direct {v0, v1, v2, v5}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@ce
    .line 192
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@d0
    .line 193
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@d2
    const-string/jumbo v1, "ZONE_ID"

    #@d5
    const/16 v2, 0x11

    #@d7
    .line 197
    const/16 v3, 0x200

    #@d9
    .line 193
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@dc
    .line 197
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    #@de
    .line 198
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@e0
    const-string/jumbo v1, "ZONE_ID_SHORT"

    #@e3
    const/16 v2, 0x12

    #@e5
    .line 202
    const/16 v3, 0x400

    #@e7
    .line 198
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@ea
    .line 202
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@ec
    .line 203
    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@ee
    const-string/jumbo v1, "EXEMPLAR_LOCATION"

    #@f1
    const/16 v2, 0x13

    #@f3
    .line 207
    const/16 v3, 0x800

    #@f5
    .line 203
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    #@f8
    .line 207
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@fa
    .line 80
    const/16 v0, 0x14

    #@fc
    new-array v0, v0, [Landroid/icu/text/TimeZoneFormat$Style;

    #@fe
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@100
    const/4 v2, 0x0

    #@101
    aput-object v1, v0, v2

    #@103
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@105
    aput-object v1, v0, v6

    #@107
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@109
    aput-object v1, v0, v7

    #@10b
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    #@10d
    const/4 v2, 0x3

    #@10e
    aput-object v1, v0, v2

    #@110
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@112
    aput-object v1, v0, v8

    #@114
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    #@116
    const/4 v2, 0x5

    #@117
    aput-object v1, v0, v2

    #@119
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@11b
    const/4 v2, 0x6

    #@11c
    aput-object v1, v0, v2

    #@11e
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@120
    const/4 v2, 0x7

    #@121
    aput-object v1, v0, v2

    #@123
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@125
    const/16 v2, 0x8

    #@127
    aput-object v1, v0, v2

    #@129
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@12b
    const/16 v2, 0x9

    #@12d
    aput-object v1, v0, v2

    #@12f
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@131
    const/16 v2, 0xa

    #@133
    aput-object v1, v0, v2

    #@135
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@137
    const/16 v2, 0xb

    #@139
    aput-object v1, v0, v2

    #@13b
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@13d
    const/16 v2, 0xc

    #@13f
    aput-object v1, v0, v2

    #@141
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@143
    const/16 v2, 0xd

    #@145
    aput-object v1, v0, v2

    #@147
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    #@149
    const/16 v2, 0xe

    #@14b
    aput-object v1, v0, v2

    #@14d
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@14f
    const/16 v2, 0xf

    #@151
    aput-object v1, v0, v2

    #@153
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    #@155
    const/16 v2, 0x10

    #@157
    aput-object v1, v0, v2

    #@159
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    #@15b
    const/16 v2, 0x11

    #@15d
    aput-object v1, v0, v2

    #@15f
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    #@161
    const/16 v2, 0x12

    #@163
    aput-object v1, v0, v2

    #@165
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    #@167
    const/16 v2, 0x13

    #@169
    aput-object v1, v0, v2

    #@16b
    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->$VALUES:[Landroid/icu/text/TimeZoneFormat$Style;

    #@16d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "flag"    # I

    #@0
    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 212
    iput p3, p0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    #@5
    .line 211
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    const-class v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/TimeZoneFormat$Style;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/TimeZoneFormat$Style;
    .locals 1

    #@0
    .prologue
    .line 80
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->$VALUES:[Landroid/icu/text/TimeZoneFormat$Style;

    #@2
    return-object v0
.end method
