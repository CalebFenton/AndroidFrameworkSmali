.class public final enum Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
.super Ljava/lang/Enum;
.source "CivicLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/CivicLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum AdditionalCode:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum AdditionalLocation:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Block:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum BranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Building:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum City:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum CountyDistrict:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum DivisionBorough:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Floor:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum HouseNumber:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum HouseNumberSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Landmark:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Language:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum LeadingStreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Name:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum POBox:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum PostalCommunity:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum PostalZIP:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum PrimaryRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Reserved:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum RoadSection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Room:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Script:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum SeatDesk:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum StateProvince:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum StreetDirection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum StreetGroup:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum StreetNamePostMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum StreetNamePreMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum StreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum SubBranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Type:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

.field public static final enum Unit:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;


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
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 129
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@7
    const-string/jumbo v1, "Language"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Language:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@f
    .line 130
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@11
    const-string/jumbo v1, "StateProvince"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StateProvince:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@19
    .line 131
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1b
    const-string/jumbo v1, "CountyDistrict"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->CountyDistrict:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@23
    .line 132
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@25
    const-string/jumbo v1, "City"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->City:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@2d
    .line 133
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@2f
    const-string/jumbo v1, "DivisionBorough"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->DivisionBorough:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@37
    .line 134
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@39
    const-string/jumbo v1, "Block"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Block:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@42
    .line 135
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@44
    const-string/jumbo v1, "StreetGroup"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetGroup:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@4d
    .line 136
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@4f
    const-string/jumbo v1, "StreetDirection"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetDirection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@58
    .line 137
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@5a
    const-string/jumbo v1, "LeadingStreetSuffix"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->LeadingStreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@64
    .line 138
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@66
    const-string/jumbo v1, "StreetSuffix"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@6e
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@70
    .line 139
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@72
    const-string/jumbo v1, "HouseNumber"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->HouseNumber:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@7c
    .line 140
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@7e
    const-string/jumbo v1, "HouseNumberSuffix"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@86
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->HouseNumberSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@88
    .line 141
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@8a
    const-string/jumbo v1, "Landmark"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@92
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Landmark:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@94
    .line 142
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@96
    const-string/jumbo v1, "AdditionalLocation"

    #@99
    const/16 v2, 0xd

    #@9b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@9e
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->AdditionalLocation:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@a0
    .line 143
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@a2
    const-string/jumbo v1, "Name"

    #@a5
    const/16 v2, 0xe

    #@a7
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@aa
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Name:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@ac
    .line 144
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@ae
    const-string/jumbo v1, "PostalZIP"

    #@b1
    const/16 v2, 0xf

    #@b3
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@b6
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PostalZIP:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@b8
    .line 145
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@ba
    const-string/jumbo v1, "Building"

    #@bd
    const/16 v2, 0x10

    #@bf
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@c2
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Building:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@c4
    .line 146
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@c6
    const-string/jumbo v1, "Unit"

    #@c9
    const/16 v2, 0x11

    #@cb
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@ce
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Unit:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@d0
    .line 147
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@d2
    const-string/jumbo v1, "Floor"

    #@d5
    const/16 v2, 0x12

    #@d7
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@da
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Floor:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@dc
    .line 148
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@de
    const-string/jumbo v1, "Room"

    #@e1
    const/16 v2, 0x13

    #@e3
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@e6
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Room:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@e8
    .line 149
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@ea
    const-string/jumbo v1, "Type"

    #@ed
    const/16 v2, 0x14

    #@ef
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@f2
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Type:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@f4
    .line 150
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@f6
    const-string/jumbo v1, "PostalCommunity"

    #@f9
    const/16 v2, 0x15

    #@fb
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@fe
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PostalCommunity:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@100
    .line 151
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@102
    const-string/jumbo v1, "POBox"

    #@105
    const/16 v2, 0x16

    #@107
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@10a
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->POBox:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@10c
    .line 152
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@10e
    const-string/jumbo v1, "AdditionalCode"

    #@111
    const/16 v2, 0x17

    #@113
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@116
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->AdditionalCode:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@118
    .line 153
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@11a
    const-string/jumbo v1, "SeatDesk"

    #@11d
    const/16 v2, 0x18

    #@11f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@122
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->SeatDesk:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@124
    .line 154
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@126
    const-string/jumbo v1, "PrimaryRoad"

    #@129
    const/16 v2, 0x19

    #@12b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@12e
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PrimaryRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@130
    .line 155
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@132
    const-string/jumbo v1, "RoadSection"

    #@135
    const/16 v2, 0x1a

    #@137
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@13a
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->RoadSection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@13c
    .line 156
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@13e
    const-string/jumbo v1, "BranchRoad"

    #@141
    const/16 v2, 0x1b

    #@143
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@146
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->BranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@148
    .line 157
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@14a
    const-string/jumbo v1, "SubBranchRoad"

    #@14d
    const/16 v2, 0x1c

    #@14f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@152
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->SubBranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@154
    .line 158
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@156
    const-string/jumbo v1, "StreetNamePreMod"

    #@159
    const/16 v2, 0x1d

    #@15b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@15e
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetNamePreMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@160
    .line 159
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@162
    const-string/jumbo v1, "StreetNamePostMod"

    #@165
    const/16 v2, 0x1e

    #@167
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@16a
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetNamePostMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@16c
    .line 160
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@16e
    const-string/jumbo v1, "Script"

    #@171
    const/16 v2, 0x1f

    #@173
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@176
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Script:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@178
    .line 161
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@17a
    const-string/jumbo v1, "Reserved"

    #@17d
    const/16 v2, 0x20

    #@17f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;-><init>(Ljava/lang/String;I)V

    #@182
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Reserved:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@184
    .line 128
    const/16 v0, 0x21

    #@186
    new-array v0, v0, [Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@188
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Language:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@18a
    aput-object v1, v0, v3

    #@18c
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StateProvince:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@18e
    aput-object v1, v0, v4

    #@190
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->CountyDistrict:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@192
    aput-object v1, v0, v5

    #@194
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->City:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@196
    aput-object v1, v0, v6

    #@198
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->DivisionBorough:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@19a
    aput-object v1, v0, v7

    #@19c
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Block:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@19e
    const/4 v2, 0x5

    #@19f
    aput-object v1, v0, v2

    #@1a1
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetGroup:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1a3
    const/4 v2, 0x6

    #@1a4
    aput-object v1, v0, v2

    #@1a6
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetDirection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1a8
    const/4 v2, 0x7

    #@1a9
    aput-object v1, v0, v2

    #@1ab
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->LeadingStreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1ad
    const/16 v2, 0x8

    #@1af
    aput-object v1, v0, v2

    #@1b1
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1b3
    const/16 v2, 0x9

    #@1b5
    aput-object v1, v0, v2

    #@1b7
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->HouseNumber:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1b9
    const/16 v2, 0xa

    #@1bb
    aput-object v1, v0, v2

    #@1bd
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->HouseNumberSuffix:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1bf
    const/16 v2, 0xb

    #@1c1
    aput-object v1, v0, v2

    #@1c3
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Landmark:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1c5
    const/16 v2, 0xc

    #@1c7
    aput-object v1, v0, v2

    #@1c9
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->AdditionalLocation:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1cb
    const/16 v2, 0xd

    #@1cd
    aput-object v1, v0, v2

    #@1cf
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Name:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1d1
    const/16 v2, 0xe

    #@1d3
    aput-object v1, v0, v2

    #@1d5
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PostalZIP:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1d7
    const/16 v2, 0xf

    #@1d9
    aput-object v1, v0, v2

    #@1db
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Building:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1dd
    const/16 v2, 0x10

    #@1df
    aput-object v1, v0, v2

    #@1e1
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Unit:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1e3
    const/16 v2, 0x11

    #@1e5
    aput-object v1, v0, v2

    #@1e7
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Floor:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1e9
    const/16 v2, 0x12

    #@1eb
    aput-object v1, v0, v2

    #@1ed
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Room:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1ef
    const/16 v2, 0x13

    #@1f1
    aput-object v1, v0, v2

    #@1f3
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Type:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1f5
    const/16 v2, 0x14

    #@1f7
    aput-object v1, v0, v2

    #@1f9
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PostalCommunity:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@1fb
    const/16 v2, 0x15

    #@1fd
    aput-object v1, v0, v2

    #@1ff
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->POBox:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@201
    const/16 v2, 0x16

    #@203
    aput-object v1, v0, v2

    #@205
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->AdditionalCode:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@207
    const/16 v2, 0x17

    #@209
    aput-object v1, v0, v2

    #@20b
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->SeatDesk:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@20d
    const/16 v2, 0x18

    #@20f
    aput-object v1, v0, v2

    #@211
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->PrimaryRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@213
    const/16 v2, 0x19

    #@215
    aput-object v1, v0, v2

    #@217
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->RoadSection:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@219
    const/16 v2, 0x1a

    #@21b
    aput-object v1, v0, v2

    #@21d
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->BranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@21f
    const/16 v2, 0x1b

    #@221
    aput-object v1, v0, v2

    #@223
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->SubBranchRoad:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@225
    const/16 v2, 0x1c

    #@227
    aput-object v1, v0, v2

    #@229
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetNamePreMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@22b
    const/16 v2, 0x1d

    #@22d
    aput-object v1, v0, v2

    #@22f
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->StreetNamePostMod:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@231
    const/16 v2, 0x1e

    #@233
    aput-object v1, v0, v2

    #@235
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Script:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@237
    const/16 v2, 0x1f

    #@239
    aput-object v1, v0, v2

    #@23b
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->Reserved:Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@23d
    const/16 v2, 0x20

    #@23f
    aput-object v1, v0, v2

    #@241
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->$VALUES:[Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@243
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    const-class v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;
    .locals 1

    #@0
    .prologue
    .line 128
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;->$VALUES:[Lcom/android/server/wifi/anqp/CivicLocationElement$CAType;

    #@2
    return-object v0
.end method
