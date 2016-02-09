.class public final enum Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
.super Ljava/lang/Enum;
.source "NetworkDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/NetworkDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum ChargeablePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum EmergencyOnly:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum FreePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Personal:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Private:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum PrivateWithGuest:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd10:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd11:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd12:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd13:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd6:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd7:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd8:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd9:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum TestOrExperimental:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Wildcard:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;


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
    .line 47
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@7
    const-string/jumbo v1, "Private"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Private:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@f
    .line 48
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@11
    const-string/jumbo v1, "PrivateWithGuest"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->PrivateWithGuest:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@19
    .line 49
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@1b
    const-string/jumbo v1, "ChargeablePublic"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->ChargeablePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@23
    .line 50
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@25
    const-string/jumbo v1, "FreePublic"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->FreePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@2d
    .line 51
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@2f
    const-string/jumbo v1, "Personal"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Personal:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@37
    .line 52
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@39
    const-string/jumbo v1, "EmergencyOnly"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->EmergencyOnly:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@42
    .line 53
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@44
    const-string/jumbo v1, "Resvd6"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd6:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@4d
    .line 54
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@4f
    const-string/jumbo v1, "Resvd7"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd7:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@58
    .line 55
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@5a
    const-string/jumbo v1, "Resvd8"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd8:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@64
    .line 56
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@66
    const-string/jumbo v1, "Resvd9"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@6e
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd9:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@70
    .line 57
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@72
    const-string/jumbo v1, "Resvd10"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd10:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@7c
    .line 58
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@7e
    const-string/jumbo v1, "Resvd11"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@86
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd11:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@88
    .line 59
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@8a
    const-string/jumbo v1, "Resvd12"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@92
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd12:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@94
    .line 60
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@96
    const-string/jumbo v1, "Resvd13"

    #@99
    const/16 v2, 0xd

    #@9b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@9e
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd13:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@a0
    .line 61
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@a2
    const-string/jumbo v1, "TestOrExperimental"

    #@a5
    const/16 v2, 0xe

    #@a7
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@aa
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->TestOrExperimental:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@ac
    .line 62
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@ae
    const-string/jumbo v1, "Wildcard"

    #@b1
    const/16 v2, 0xf

    #@b3
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    #@b6
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Wildcard:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@b8
    .line 46
    const/16 v0, 0x10

    #@ba
    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@bc
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Private:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@be
    aput-object v1, v0, v3

    #@c0
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->PrivateWithGuest:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@c2
    aput-object v1, v0, v4

    #@c4
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->ChargeablePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@c6
    aput-object v1, v0, v5

    #@c8
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->FreePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@ca
    aput-object v1, v0, v6

    #@cc
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Personal:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@ce
    aput-object v1, v0, v7

    #@d0
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->EmergencyOnly:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@d2
    const/4 v2, 0x5

    #@d3
    aput-object v1, v0, v2

    #@d5
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd6:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@d7
    const/4 v2, 0x6

    #@d8
    aput-object v1, v0, v2

    #@da
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd7:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@dc
    const/4 v2, 0x7

    #@dd
    aput-object v1, v0, v2

    #@df
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd8:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@e1
    const/16 v2, 0x8

    #@e3
    aput-object v1, v0, v2

    #@e5
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd9:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@e7
    const/16 v2, 0x9

    #@e9
    aput-object v1, v0, v2

    #@eb
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd10:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@ed
    const/16 v2, 0xa

    #@ef
    aput-object v1, v0, v2

    #@f1
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd11:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@f3
    const/16 v2, 0xb

    #@f5
    aput-object v1, v0, v2

    #@f7
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd12:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@f9
    const/16 v2, 0xc

    #@fb
    aput-object v1, v0, v2

    #@fd
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd13:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@ff
    const/16 v2, 0xd

    #@101
    aput-object v1, v0, v2

    #@103
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->TestOrExperimental:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@105
    const/16 v2, 0xe

    #@107
    aput-object v1, v0, v2

    #@109
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Wildcard:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@10b
    const/16 v2, 0xf

    #@10d
    aput-object v1, v0, v2

    #@10f
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->$VALUES:[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@111
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    const-class v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .locals 1

    #@0
    .prologue
    .line 46
    sget-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->$VALUES:[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    #@2
    return-object v0
.end method
