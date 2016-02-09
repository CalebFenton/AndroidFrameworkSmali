.class public final enum Lcom/android/internal/telephony/Phone$SuppService;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuppService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Phone$SuppService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum REJECT:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum RESUME:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;


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
    .line 71
    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    #@7
    const-string/jumbo v1, "UNKNOWN"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    #@f
    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    #@11
    const-string/jumbo v1, "SWITCH"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    #@19
    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    #@1b
    const-string/jumbo v1, "SEPARATE"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    #@23
    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    #@25
    const-string/jumbo v1, "TRANSFER"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    #@2d
    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    #@2f
    const-string/jumbo v1, "CONFERENCE"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    #@37
    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    #@39
    const-string/jumbo v1, "REJECT"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    #@42
    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    #@44
    const-string/jumbo v1, "HANGUP"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    #@4d
    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    #@4f
    const-string/jumbo v1, "RESUME"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->RESUME:Lcom/android/internal/telephony/Phone$SuppService;

    #@58
    .line 70
    const/16 v0, 0x8

    #@5a
    new-array v0, v0, [Lcom/android/internal/telephony/Phone$SuppService;

    #@5c
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    #@5e
    aput-object v1, v0, v3

    #@60
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    #@62
    aput-object v1, v0, v4

    #@64
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    #@66
    aput-object v1, v0, v5

    #@68
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    #@6a
    aput-object v1, v0, v6

    #@6c
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    #@6e
    aput-object v1, v0, v7

    #@70
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    #@72
    const/4 v2, 0x5

    #@73
    aput-object v1, v0, v2

    #@75
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    #@77
    const/4 v2, 0x6

    #@78
    aput-object v1, v0, v2

    #@7a
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->RESUME:Lcom/android/internal/telephony/Phone$SuppService;

    #@7c
    const/4 v2, 0x7

    #@7d
    aput-object v1, v0, v2

    #@7f
    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->$VALUES:[Lcom/android/internal/telephony/Phone$SuppService;

    #@81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    const-class v0, Lcom/android/internal/telephony/Phone$SuppService;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1

    #@0
    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->$VALUES:[Lcom/android/internal/telephony/Phone$SuppService;

    #@2
    return-object v0
.end method
