.class public Lcom/android/server/wifi/anqp/CivicLocationElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "CivicLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;,
        Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
    }
.end annotation


# static fields
.field public static final ADDITIONAL_CODE:I = 0x20

.field public static final ADDITIONAL_LOCATION:I = 0x16

.field public static final BLOCK:I = 0x5

.field public static final BRANCH_ROAD:I = 0x24

.field public static final BUILDING:I = 0x19

.field public static final CITY:I = 0x3

.field public static final COUNTY_DISTRICT:I = 0x2

.field public static final DIVISION_BOROUGH:I = 0x4

.field public static final FLOOR:I = 0x1b

.field private static final GEOCONF_CIVIC4:I = 0x63

.field public static final HOUSE_NUMBER:I = 0x13

.field public static final HOUSE_NUMBER_SUFFIX:I = 0x14

.field public static final LANDMARK:I = 0x15

.field public static final LANGUAGE:I = 0x0

.field public static final LEADING_STREET_SUFFIX:I = 0x11

.field public static final NAME:I = 0x17

.field public static final POSTAL_COMMUNITY:I = 0x1e

.field public static final POSTAL_ZIP:I = 0x18

.field public static final PO_BOX:I = 0x1f

.field public static final PRIMARY_ROAD:I = 0x22

.field public static final RESERVED:I = 0xff

.field private static final RFC4776:I = 0x0

.field public static final ROAD_SECTION:I = 0x23

.field public static final ROOM:I = 0x1c

.field public static final SCRIPT:I = 0x80

.field public static final SEAT_DESK:I = 0x21

.field public static final STATE_PROVINCE:I = 0x1

.field public static final STREET_DIRECTION:I = 0x10

.field public static final STREET_GROUP:I = 0x6

.field public static final STREET_NAME_POST_MOD:I = 0x27

.field public static final STREET_NAME_PRE_MOD:I = 0x26

.field public static final STREET_SUFFIX:I = 0x12

.field public static final SUB_BRANCH_ROAD:I = 0x25

.field public static final TYPE:I = 0x1d

.field public static final UNIT:I = 0x1a

.field private static final s_caTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mLocationType:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

.field private final mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@7
    .line 165
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Language:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 166
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@15
    const/4 v1, 0x1

    #@16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StateProvince:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 167
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@21
    const/4 v1, 0x2

    #@22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v1

    #@26
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->CountyDistrict:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 168
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@2d
    const/4 v1, 0x3

    #@2e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v1

    #@32
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->City:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 169
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@39
    const/4 v1, 0x4

    #@3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v1

    #@3e
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->DivisionBorough:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 170
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@45
    const/4 v1, 0x5

    #@46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v1

    #@4a
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Block:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@4c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 171
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@51
    const/4 v1, 0x6

    #@52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v1

    #@56
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetGroup:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@58
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 172
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@5d
    const/16 v1, 0x10

    #@5f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v1

    #@63
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetDirection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@65
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    .line 173
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@6a
    const/16 v1, 0x11

    #@6c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v1

    #@70
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->LeadingStreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 174
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@77
    const/16 v1, 0x12

    #@79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7c
    move-result-object v1

    #@7d
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@7f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    .line 175
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@84
    const/16 v1, 0x13

    #@86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@89
    move-result-object v1

    #@8a
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->HouseNumber:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@8c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 176
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@91
    const/16 v1, 0x14

    #@93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@96
    move-result-object v1

    #@97
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->HouseNumberSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@99
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9c
    .line 177
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@9e
    const/16 v1, 0x15

    #@a0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v1

    #@a4
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Landmark:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@a6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    .line 178
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@ab
    const/16 v1, 0x16

    #@ad
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b0
    move-result-object v1

    #@b1
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->AdditionalLocation:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@b3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 179
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@b8
    const/16 v1, 0x17

    #@ba
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bd
    move-result-object v1

    #@be
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Name:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@c0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c3
    .line 180
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@c5
    const/16 v1, 0x18

    #@c7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ca
    move-result-object v1

    #@cb
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PostalZIP:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@cd
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d0
    .line 181
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@d2
    const/16 v1, 0x19

    #@d4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d7
    move-result-object v1

    #@d8
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Building:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@da
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@dd
    .line 182
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@df
    const/16 v1, 0x1a

    #@e1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e4
    move-result-object v1

    #@e5
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Unit:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@e7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    .line 183
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@ec
    const/16 v1, 0x1b

    #@ee
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f1
    move-result-object v1

    #@f2
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Floor:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@f4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f7
    .line 184
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@f9
    const/16 v1, 0x1c

    #@fb
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fe
    move-result-object v1

    #@ff
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Room:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@101
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@104
    .line 185
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@106
    const/16 v1, 0x1d

    #@108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10b
    move-result-object v1

    #@10c
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Type:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@10e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@111
    .line 186
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@113
    const/16 v1, 0x1e

    #@115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@118
    move-result-object v1

    #@119
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PostalCommunity:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@11b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11e
    .line 187
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@120
    const/16 v1, 0x1f

    #@122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@125
    move-result-object v1

    #@126
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->POBox:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@128
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12b
    .line 188
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@12d
    const/16 v1, 0x20

    #@12f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@132
    move-result-object v1

    #@133
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->AdditionalCode:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@135
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@138
    .line 189
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@13a
    const/16 v1, 0x21

    #@13c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13f
    move-result-object v1

    #@140
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->SeatDesk:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@142
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@145
    .line 190
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@147
    const/16 v1, 0x22

    #@149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14c
    move-result-object v1

    #@14d
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PrimaryRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@14f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@152
    .line 191
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@154
    const/16 v1, 0x23

    #@156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@159
    move-result-object v1

    #@15a
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->RoadSection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@15c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15f
    .line 192
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@161
    const/16 v1, 0x24

    #@163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@166
    move-result-object v1

    #@167
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->BranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@169
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16c
    .line 193
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@16e
    const/16 v1, 0x25

    #@170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@173
    move-result-object v1

    #@174
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->SubBranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@176
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@179
    .line 194
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@17b
    const/16 v1, 0x26

    #@17d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@180
    move-result-object v1

    #@181
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetNamePreMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@183
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@186
    .line 195
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@188
    const/16 v1, 0x27

    #@18a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18d
    move-result-object v1

    #@18e
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetNamePostMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@190
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@193
    .line 196
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@195
    const/16 v1, 0x80

    #@197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19a
    move-result-object v1

    #@19b
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Script:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@19d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a0
    .line 197
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@1a2
    const/16 v1, 0xff

    #@1a4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a7
    move-result-object v1

    #@1a8
    sget-object v2, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Reserved:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1aa
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ad
    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@4
    .line 28
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@7
    move-result v9

    #@8
    const/4 v10, 0x6

    #@9
    if-ge v9, v10, :cond_0

    #@b
    .line 29
    new-instance v8, Ljava/net/ProtocolException;

    #@d
    new-instance v9, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v10, "Runt civic location:"

    #@15
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v9

    #@19
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@1c
    move-result v10

    #@1d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v9

    #@21
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v9

    #@25
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@28
    throw v8

    #@29
    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@2c
    move-result v9

    #@2d
    and-int/lit16 v6, v9, 0xff

    #@2f
    .line 33
    .local v6, "locType":I
    if-eqz v6, :cond_1

    #@31
    .line 34
    new-instance v8, Ljava/net/ProtocolException;

    #@33
    new-instance v9, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v10, "Bad Civic location type: "

    #@3b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v9

    #@3f
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v9

    #@47
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v8

    #@4b
    .line 37
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@4e
    move-result v9

    #@4f
    and-int/lit16 v5, v9, 0xff

    #@51
    .line 38
    .local v5, "locSubType":I
    const/16 v9, 0x63

    #@53
    if-eq v5, v9, :cond_2

    #@55
    .line 39
    new-instance v8, Ljava/net/ProtocolException;

    #@57
    new-instance v9, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v10, "Unexpected Civic location sub-type: "

    #@5f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v9

    #@63
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v9

    #@67
    .line 40
    const-string/jumbo v10, " (cannot handle sub elements)"

    #@6a
    .line 39
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v9

    #@72
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@75
    throw v8

    #@76
    .line 43
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@79
    move-result v9

    #@7a
    and-int/lit16 v4, v9, 0xff

    #@7c
    .line 44
    .local v4, "length":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@7f
    move-result v9

    #@80
    if-le v4, v9, :cond_3

    #@82
    .line 45
    new-instance v8, Ljava/net/ProtocolException;

    #@84
    new-instance v9, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v10, "Invalid CA type length: "

    #@8c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v9

    #@90
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v9

    #@94
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v9

    #@98
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v8

    #@9c
    .line 48
    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@9f
    move-result v9

    #@a0
    and-int/lit16 v7, v9, 0xff

    #@a2
    .line 49
    .local v7, "what":I
    invoke-static {}, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;->values()[Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@a5
    move-result-object v9

    #@a6
    array-length v9, v9

    #@a7
    if-ge v7, v9, :cond_4

    #@a9
    invoke-static {}, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;->values()[Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@ac
    move-result-object v8

    #@ad
    aget-object v8, v8, v7

    #@af
    :cond_4
    iput-object v8, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mLocationType:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@b1
    .line 51
    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@b3
    const/4 v9, 0x2

    #@b4
    invoke-static {p2, v9, v8}, Lcom/android/server/wifi/anqp/Constants;->getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@b7
    move-result-object v8

    #@b8
    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@bb
    move-result-object v8

    #@bc
    iput-object v8, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mLocale:Ljava/util/Locale;

    #@be
    .line 53
    new-instance v8, Ljava/util/HashMap;

    #@c0
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@c3
    iput-object v8, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mValues:Ljava/util/Map;

    #@c5
    .line 54
    :cond_5
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@c8
    move-result v8

    #@c9
    if-eqz v8, :cond_7

    #@cb
    .line 55
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@ce
    move-result v8

    #@cf
    and-int/lit16 v1, v8, 0xff

    #@d1
    .line 56
    .local v1, "caTypeNumber":I
    sget-object v8, Lcom/android/server/wifi/anqp/CivicLocationElement;->s_caTypes:Ljava/util/Map;

    #@d3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d6
    move-result-object v9

    #@d7
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@da
    move-result-object v0

    #@db
    check-cast v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@dd
    .line 58
    .local v0, "caType":Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@e0
    move-result v8

    #@e1
    and-int/lit16 v2, v8, 0xff

    #@e3
    .line 59
    .local v2, "caValLen":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@e6
    move-result v8

    #@e7
    if-le v2, v8, :cond_6

    #@e9
    .line 60
    new-instance v8, Ljava/net/ProtocolException;

    #@eb
    new-instance v9, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v10, "Bad CA value length: "

    #@f3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v9

    #@f7
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v9

    #@fb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v9

    #@ff
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@102
    throw v8

    #@103
    .line 62
    :cond_6
    new-array v3, v2, [B

    #@105
    .line 63
    .local v3, "caValOctets":[B
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@108
    .line 65
    if-eqz v0, :cond_5

    #@10a
    .line 66
    iget-object v8, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mValues:Ljava/util/Map;

    #@10c
    new-instance v9, Ljava/lang/String;

    #@10e
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@110
    invoke-direct {v9, v3, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@113
    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@116
    goto :goto_0

    #@117
    .line 25
    .end local v0    # "caType":Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
    .end local v1    # "caTypeNumber":I
    .end local v2    # "caValLen":I
    .end local v3    # "caValOctets":[B
    :cond_7
    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public getLocationType()Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mLocationType:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@2
    return-object v0
.end method

.method public getValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mValues:Ljava/util/Map;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CivicLocation{mLocationType="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 86
    iget-object v1, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mLocationType:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@e
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 87
    const-string/jumbo v1, ", mLocale="

    #@15
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 87
    iget-object v1, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mLocale:Ljava/util/Locale;

    #@1b
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 88
    const-string/jumbo v1, ", mValues="

    #@22
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 88
    iget-object v1, p0, Lcom/android/server/wifi/anqp/CivicLocationElement;->mValues:Ljava/util/Map;

    #@28
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 89
    const/16 v1, 0x7d

    #@2e
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method
