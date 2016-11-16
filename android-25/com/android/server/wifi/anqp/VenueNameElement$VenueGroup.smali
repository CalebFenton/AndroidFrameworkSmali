.class public final enum Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
.super Ljava/lang/Enum;
.source "VenueNameElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/VenueNameElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VenueGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Assembly:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Business:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Educational:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum FactoryIndustrial:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Institutional:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Mercantile:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Outdoor:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Residential:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Storage:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Unspecified:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum UtilityMiscellaneous:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field public static final enum Vehicular:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;


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
    .line 73
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@7
    const-string/jumbo v1, "Unspecified"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Unspecified:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@f
    .line 74
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@11
    const-string/jumbo v1, "Assembly"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Assembly:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@19
    .line 75
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@1b
    const-string/jumbo v1, "Business"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Business:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@23
    .line 76
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@25
    const-string/jumbo v1, "Educational"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Educational:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@2d
    .line 77
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@2f
    const-string/jumbo v1, "FactoryIndustrial"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->FactoryIndustrial:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@37
    .line 78
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@39
    const-string/jumbo v1, "Institutional"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Institutional:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@42
    .line 79
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@44
    const-string/jumbo v1, "Mercantile"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Mercantile:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@4d
    .line 80
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@4f
    const-string/jumbo v1, "Residential"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Residential:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@58
    .line 81
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@5a
    const-string/jumbo v1, "Storage"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Storage:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@64
    .line 82
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@66
    const-string/jumbo v1, "UtilityMiscellaneous"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@6e
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->UtilityMiscellaneous:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@70
    .line 83
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@72
    const-string/jumbo v1, "Vehicular"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Vehicular:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@7c
    .line 84
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@7e
    const-string/jumbo v1, "Outdoor"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@86
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Outdoor:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@88
    .line 85
    new-instance v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@8a
    const-string/jumbo v1, "Reserved"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;-><init>(Ljava/lang/String;I)V

    #@92
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@94
    .line 72
    const/16 v0, 0xd

    #@96
    new-array v0, v0, [Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@98
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Unspecified:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@9a
    aput-object v1, v0, v3

    #@9c
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Assembly:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@9e
    aput-object v1, v0, v4

    #@a0
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Business:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@a2
    aput-object v1, v0, v5

    #@a4
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Educational:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@a6
    aput-object v1, v0, v6

    #@a8
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->FactoryIndustrial:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@aa
    aput-object v1, v0, v7

    #@ac
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Institutional:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@ae
    const/4 v2, 0x5

    #@af
    aput-object v1, v0, v2

    #@b1
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Mercantile:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@b3
    const/4 v2, 0x6

    #@b4
    aput-object v1, v0, v2

    #@b6
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Residential:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@b8
    const/4 v2, 0x7

    #@b9
    aput-object v1, v0, v2

    #@bb
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Storage:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@bd
    const/16 v2, 0x8

    #@bf
    aput-object v1, v0, v2

    #@c1
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->UtilityMiscellaneous:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@c3
    const/16 v2, 0x9

    #@c5
    aput-object v1, v0, v2

    #@c7
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Vehicular:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@c9
    const/16 v2, 0xa

    #@cb
    aput-object v1, v0, v2

    #@cd
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Outdoor:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@cf
    const/16 v2, 0xb

    #@d1
    aput-object v1, v0, v2

    #@d3
    sget-object v1, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@d5
    const/16 v2, 0xc

    #@d7
    aput-object v1, v0, v2

    #@d9
    sput-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->$VALUES:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@db
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    const-class v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .locals 1

    #@0
    .prologue
    .line 72
    sget-object v0, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->$VALUES:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    #@2
    return-object v0
.end method
