.class Lsun/util/calendar/TzIDOldMapping;
.super Ljava/lang/Object;
.source "TzIDOldMapping.java"


# static fields
.field static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 32
    new-instance v2, Ljava/util/HashMap;

    #@5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@8
    sput-object v2, Lsun/util/calendar/TzIDOldMapping;->MAP:Ljava/util/Map;

    #@a
    .line 34
    const/16 v2, 0x1c

    #@c
    new-array v0, v2, [[Ljava/lang/String;

    #@e
    .line 35
    new-array v2, v5, [Ljava/lang/String;

    #@10
    const-string/jumbo v4, "ACT"

    #@13
    aput-object v4, v2, v3

    #@15
    const-string/jumbo v4, "Australia/Darwin"

    #@18
    aput-object v4, v2, v8

    #@1a
    aput-object v2, v0, v3

    #@1c
    .line 36
    new-array v2, v5, [Ljava/lang/String;

    #@1e
    const-string/jumbo v4, "AET"

    #@21
    aput-object v4, v2, v3

    #@23
    const-string/jumbo v4, "Australia/Sydney"

    #@26
    aput-object v4, v2, v8

    #@28
    aput-object v2, v0, v8

    #@2a
    .line 37
    new-array v2, v5, [Ljava/lang/String;

    #@2c
    const-string/jumbo v4, "AGT"

    #@2f
    aput-object v4, v2, v3

    #@31
    const-string/jumbo v4, "America/Argentina/Buenos_Aires"

    #@34
    aput-object v4, v2, v8

    #@36
    aput-object v2, v0, v5

    #@38
    .line 38
    new-array v2, v5, [Ljava/lang/String;

    #@3a
    const-string/jumbo v4, "ART"

    #@3d
    aput-object v4, v2, v3

    #@3f
    const-string/jumbo v4, "Africa/Cairo"

    #@42
    aput-object v4, v2, v8

    #@44
    const/4 v4, 0x3

    #@45
    aput-object v2, v0, v4

    #@47
    .line 39
    new-array v2, v5, [Ljava/lang/String;

    #@49
    const-string/jumbo v4, "AST"

    #@4c
    aput-object v4, v2, v3

    #@4e
    const-string/jumbo v4, "America/Anchorage"

    #@51
    aput-object v4, v2, v8

    #@53
    const/4 v4, 0x4

    #@54
    aput-object v2, v0, v4

    #@56
    .line 40
    new-array v2, v5, [Ljava/lang/String;

    #@58
    const-string/jumbo v4, "BET"

    #@5b
    aput-object v4, v2, v3

    #@5d
    const-string/jumbo v4, "America/Sao_Paulo"

    #@60
    aput-object v4, v2, v8

    #@62
    const/4 v4, 0x5

    #@63
    aput-object v2, v0, v4

    #@65
    .line 41
    new-array v2, v5, [Ljava/lang/String;

    #@67
    const-string/jumbo v4, "BST"

    #@6a
    aput-object v4, v2, v3

    #@6c
    const-string/jumbo v4, "Asia/Dhaka"

    #@6f
    aput-object v4, v2, v8

    #@71
    const/4 v4, 0x6

    #@72
    aput-object v2, v0, v4

    #@74
    .line 42
    new-array v2, v5, [Ljava/lang/String;

    #@76
    const-string/jumbo v4, "CAT"

    #@79
    aput-object v4, v2, v3

    #@7b
    const-string/jumbo v4, "Africa/Harare"

    #@7e
    aput-object v4, v2, v8

    #@80
    const/4 v4, 0x7

    #@81
    aput-object v2, v0, v4

    #@83
    .line 43
    new-array v2, v5, [Ljava/lang/String;

    #@85
    const-string/jumbo v4, "CNT"

    #@88
    aput-object v4, v2, v3

    #@8a
    const-string/jumbo v4, "America/St_Johns"

    #@8d
    aput-object v4, v2, v8

    #@8f
    const/16 v4, 0x8

    #@91
    aput-object v2, v0, v4

    #@93
    .line 44
    new-array v2, v5, [Ljava/lang/String;

    #@95
    const-string/jumbo v4, "CST"

    #@98
    aput-object v4, v2, v3

    #@9a
    const-string/jumbo v4, "America/Chicago"

    #@9d
    aput-object v4, v2, v8

    #@9f
    const/16 v4, 0x9

    #@a1
    aput-object v2, v0, v4

    #@a3
    .line 45
    new-array v2, v5, [Ljava/lang/String;

    #@a5
    const-string/jumbo v4, "CTT"

    #@a8
    aput-object v4, v2, v3

    #@aa
    const-string/jumbo v4, "Asia/Shanghai"

    #@ad
    aput-object v4, v2, v8

    #@af
    const/16 v4, 0xa

    #@b1
    aput-object v2, v0, v4

    #@b3
    .line 46
    new-array v2, v5, [Ljava/lang/String;

    #@b5
    const-string/jumbo v4, "EAT"

    #@b8
    aput-object v4, v2, v3

    #@ba
    const-string/jumbo v4, "Africa/Addis_Ababa"

    #@bd
    aput-object v4, v2, v8

    #@bf
    const/16 v4, 0xb

    #@c1
    aput-object v2, v0, v4

    #@c3
    .line 47
    new-array v2, v5, [Ljava/lang/String;

    #@c5
    const-string/jumbo v4, "ECT"

    #@c8
    aput-object v4, v2, v3

    #@ca
    const-string/jumbo v4, "Europe/Paris"

    #@cd
    aput-object v4, v2, v8

    #@cf
    const/16 v4, 0xc

    #@d1
    aput-object v2, v0, v4

    #@d3
    .line 48
    new-array v2, v5, [Ljava/lang/String;

    #@d5
    const-string/jumbo v4, "EST"

    #@d8
    aput-object v4, v2, v3

    #@da
    const-string/jumbo v4, "America/New_York"

    #@dd
    aput-object v4, v2, v8

    #@df
    const/16 v4, 0xd

    #@e1
    aput-object v2, v0, v4

    #@e3
    .line 49
    new-array v2, v5, [Ljava/lang/String;

    #@e5
    const-string/jumbo v4, "HST"

    #@e8
    aput-object v4, v2, v3

    #@ea
    const-string/jumbo v4, "Pacific/Honolulu"

    #@ed
    aput-object v4, v2, v8

    #@ef
    const/16 v4, 0xe

    #@f1
    aput-object v2, v0, v4

    #@f3
    .line 50
    new-array v2, v5, [Ljava/lang/String;

    #@f5
    const-string/jumbo v4, "IET"

    #@f8
    aput-object v4, v2, v3

    #@fa
    const-string/jumbo v4, "America/Indianapolis"

    #@fd
    aput-object v4, v2, v8

    #@ff
    const/16 v4, 0xf

    #@101
    aput-object v2, v0, v4

    #@103
    .line 51
    new-array v2, v5, [Ljava/lang/String;

    #@105
    const-string/jumbo v4, "IST"

    #@108
    aput-object v4, v2, v3

    #@10a
    const-string/jumbo v4, "Asia/Calcutta"

    #@10d
    aput-object v4, v2, v8

    #@10f
    const/16 v4, 0x10

    #@111
    aput-object v2, v0, v4

    #@113
    .line 52
    new-array v2, v5, [Ljava/lang/String;

    #@115
    const-string/jumbo v4, "JST"

    #@118
    aput-object v4, v2, v3

    #@11a
    const-string/jumbo v4, "Asia/Tokyo"

    #@11d
    aput-object v4, v2, v8

    #@11f
    const/16 v4, 0x11

    #@121
    aput-object v2, v0, v4

    #@123
    .line 53
    new-array v2, v5, [Ljava/lang/String;

    #@125
    const-string/jumbo v4, "MIT"

    #@128
    aput-object v4, v2, v3

    #@12a
    const-string/jumbo v4, "Pacific/Apia"

    #@12d
    aput-object v4, v2, v8

    #@12f
    const/16 v4, 0x12

    #@131
    aput-object v2, v0, v4

    #@133
    .line 54
    new-array v2, v5, [Ljava/lang/String;

    #@135
    const-string/jumbo v4, "MST"

    #@138
    aput-object v4, v2, v3

    #@13a
    const-string/jumbo v4, "America/Denver"

    #@13d
    aput-object v4, v2, v8

    #@13f
    const/16 v4, 0x13

    #@141
    aput-object v2, v0, v4

    #@143
    .line 55
    new-array v2, v5, [Ljava/lang/String;

    #@145
    const-string/jumbo v4, "NET"

    #@148
    aput-object v4, v2, v3

    #@14a
    const-string/jumbo v4, "Asia/Yerevan"

    #@14d
    aput-object v4, v2, v8

    #@14f
    const/16 v4, 0x14

    #@151
    aput-object v2, v0, v4

    #@153
    .line 56
    new-array v2, v5, [Ljava/lang/String;

    #@155
    const-string/jumbo v4, "NST"

    #@158
    aput-object v4, v2, v3

    #@15a
    const-string/jumbo v4, "Pacific/Auckland"

    #@15d
    aput-object v4, v2, v8

    #@15f
    const/16 v4, 0x15

    #@161
    aput-object v2, v0, v4

    #@163
    .line 57
    new-array v2, v5, [Ljava/lang/String;

    #@165
    const-string/jumbo v4, "PLT"

    #@168
    aput-object v4, v2, v3

    #@16a
    const-string/jumbo v4, "Asia/Karachi"

    #@16d
    aput-object v4, v2, v8

    #@16f
    const/16 v4, 0x16

    #@171
    aput-object v2, v0, v4

    #@173
    .line 58
    new-array v2, v5, [Ljava/lang/String;

    #@175
    const-string/jumbo v4, "PNT"

    #@178
    aput-object v4, v2, v3

    #@17a
    const-string/jumbo v4, "America/Phoenix"

    #@17d
    aput-object v4, v2, v8

    #@17f
    const/16 v4, 0x17

    #@181
    aput-object v2, v0, v4

    #@183
    .line 59
    new-array v2, v5, [Ljava/lang/String;

    #@185
    const-string/jumbo v4, "PRT"

    #@188
    aput-object v4, v2, v3

    #@18a
    const-string/jumbo v4, "America/Puerto_Rico"

    #@18d
    aput-object v4, v2, v8

    #@18f
    const/16 v4, 0x18

    #@191
    aput-object v2, v0, v4

    #@193
    .line 60
    new-array v2, v5, [Ljava/lang/String;

    #@195
    const-string/jumbo v4, "PST"

    #@198
    aput-object v4, v2, v3

    #@19a
    const-string/jumbo v4, "America/Los_Angeles"

    #@19d
    aput-object v4, v2, v8

    #@19f
    const/16 v4, 0x19

    #@1a1
    aput-object v2, v0, v4

    #@1a3
    .line 61
    new-array v2, v5, [Ljava/lang/String;

    #@1a5
    const-string/jumbo v4, "SST"

    #@1a8
    aput-object v4, v2, v3

    #@1aa
    const-string/jumbo v4, "Pacific/Guadalcanal"

    #@1ad
    aput-object v4, v2, v8

    #@1af
    const/16 v4, 0x1a

    #@1b1
    aput-object v2, v0, v4

    #@1b3
    .line 62
    new-array v2, v5, [Ljava/lang/String;

    #@1b5
    const-string/jumbo v4, "VST"

    #@1b8
    aput-object v4, v2, v3

    #@1ba
    const-string/jumbo v4, "Asia/Saigon"

    #@1bd
    aput-object v4, v2, v8

    #@1bf
    const/16 v4, 0x1b

    #@1c1
    aput-object v2, v0, v4

    #@1c3
    .line 64
    .local v0, "oldmap":[[Ljava/lang/String;
    array-length v4, v0

    #@1c4
    move v2, v3

    #@1c5
    :goto_0
    if-ge v2, v4, :cond_0

    #@1c7
    aget-object v1, v0, v2

    #@1c9
    .line 65
    .local v1, "pair":[Ljava/lang/String;
    sget-object v5, Lsun/util/calendar/TzIDOldMapping;->MAP:Ljava/util/Map;

    #@1cb
    aget-object v6, v1, v3

    #@1cd
    aget-object v7, v1, v8

    #@1cf
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d2
    .line 64
    add-int/lit8 v2, v2, 0x1

    #@1d4
    goto :goto_0

    #@1d5
    .line 31
    .end local v1    # "pair":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
