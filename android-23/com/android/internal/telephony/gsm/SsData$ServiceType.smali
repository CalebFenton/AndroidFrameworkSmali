.class public final enum Lcom/android/internal/telephony/gsm/SsData$ServiceType;
.super Ljava/lang/Enum;
.source "SsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SsData$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public static final enum SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;


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
    .line 34
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@7
    const-string/jumbo v1, "SS_CFU"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@f
    .line 35
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@11
    const-string/jumbo v1, "SS_CF_BUSY"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@19
    .line 36
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@1b
    const-string/jumbo v1, "SS_CF_NO_REPLY"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@23
    .line 37
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@25
    const-string/jumbo v1, "SS_CF_NOT_REACHABLE"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@2d
    .line 38
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@2f
    const-string/jumbo v1, "SS_CF_ALL"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@37
    .line 39
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@39
    const-string/jumbo v1, "SS_CF_ALL_CONDITIONAL"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@42
    .line 40
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@44
    const-string/jumbo v1, "SS_CLIP"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@4d
    .line 41
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@4f
    const-string/jumbo v1, "SS_CLIR"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@58
    .line 42
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@5a
    const-string/jumbo v1, "SS_COLP"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@64
    .line 43
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@66
    const-string/jumbo v1, "SS_COLR"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@6e
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@70
    .line 44
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@72
    const-string/jumbo v1, "SS_WAIT"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@7c
    .line 45
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@7e
    const-string/jumbo v1, "SS_BAOC"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@86
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@88
    .line 46
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@8a
    const-string/jumbo v1, "SS_BAOIC"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@92
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@94
    .line 47
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@96
    const-string/jumbo v1, "SS_BAOIC_EXC_HOME"

    #@99
    const/16 v2, 0xd

    #@9b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@9e
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@a0
    .line 48
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@a2
    const-string/jumbo v1, "SS_BAIC"

    #@a5
    const/16 v2, 0xe

    #@a7
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@aa
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@ac
    .line 49
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@ae
    const-string/jumbo v1, "SS_BAIC_ROAMING"

    #@b1
    const/16 v2, 0xf

    #@b3
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@b6
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@b8
    .line 50
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@ba
    const-string/jumbo v1, "SS_ALL_BARRING"

    #@bd
    const/16 v2, 0x10

    #@bf
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@c2
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@c4
    .line 51
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@c6
    const-string/jumbo v1, "SS_OUTGOING_BARRING"

    #@c9
    const/16 v2, 0x11

    #@cb
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@ce
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@d0
    .line 52
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@d2
    const-string/jumbo v1, "SS_INCOMING_BARRING"

    #@d5
    const/16 v2, 0x12

    #@d7
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;-><init>(Ljava/lang/String;I)V

    #@da
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@dc
    .line 33
    const/16 v0, 0x13

    #@de
    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@e0
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@e2
    aput-object v1, v0, v3

    #@e4
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@e6
    aput-object v1, v0, v4

    #@e8
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@ea
    aput-object v1, v0, v5

    #@ec
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@ee
    aput-object v1, v0, v6

    #@f0
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@f2
    aput-object v1, v0, v7

    #@f4
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@f6
    const/4 v2, 0x5

    #@f7
    aput-object v1, v0, v2

    #@f9
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@fb
    const/4 v2, 0x6

    #@fc
    aput-object v1, v0, v2

    #@fe
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@100
    const/4 v2, 0x7

    #@101
    aput-object v1, v0, v2

    #@103
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@105
    const/16 v2, 0x8

    #@107
    aput-object v1, v0, v2

    #@109
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@10b
    const/16 v2, 0x9

    #@10d
    aput-object v1, v0, v2

    #@10f
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@111
    const/16 v2, 0xa

    #@113
    aput-object v1, v0, v2

    #@115
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@117
    const/16 v2, 0xb

    #@119
    aput-object v1, v0, v2

    #@11b
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@11d
    const/16 v2, 0xc

    #@11f
    aput-object v1, v0, v2

    #@121
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@123
    const/16 v2, 0xd

    #@125
    aput-object v1, v0, v2

    #@127
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@129
    const/16 v2, 0xe

    #@12b
    aput-object v1, v0, v2

    #@12d
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@12f
    const/16 v2, 0xf

    #@131
    aput-object v1, v0, v2

    #@133
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@135
    const/16 v2, 0x10

    #@137
    aput-object v1, v0, v2

    #@139
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@13b
    const/16 v2, 0x11

    #@13d
    aput-object v1, v0, v2

    #@13f
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@141
    const/16 v2, 0x12

    #@143
    aput-object v1, v0, v2

    #@145
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@147
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    const-class v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@2
    return-object v0
.end method


# virtual methods
.method public isTypeBarring()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 77
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@c
    if-eq p0, v1, :cond_0

    #@e
    .line 78
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@10
    if-eq p0, v1, :cond_0

    #@12
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@14
    if-eq p0, v1, :cond_0

    #@16
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@18
    if-eq p0, v1, :cond_0

    #@1a
    .line 79
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@1c
    if-eq p0, v1, :cond_0

    #@1e
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@20
    if-eq p0, v1, :cond_0

    #@22
    const/4 v0, 0x0

    #@23
    goto :goto_0
.end method

.method public isTypeCF()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 55
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@c
    if-eq p0, v1, :cond_0

    #@e
    .line 56
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@10
    if-eq p0, v1, :cond_0

    #@12
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@14
    if-eq p0, v1, :cond_0

    #@16
    .line 57
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@18
    if-eq p0, v1, :cond_0

    #@1a
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public isTypeCW()Z
    .locals 1

    #@0
    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isTypeClip()Z
    .locals 1

    #@0
    .prologue
    .line 69
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isTypeClir()Z
    .locals 1

    #@0
    .prologue
    .line 73
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isTypeUnConditional()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 61
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
