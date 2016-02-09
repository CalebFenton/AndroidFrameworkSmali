.class public final enum Lcom/android/internal/telephony/DctConstants$Activity;
.super Ljava/lang/Enum;
.source "DctConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DctConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DctConstants$Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DctConstants$Activity;

.field public static final enum DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

.field public static final enum DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

.field public static final enum DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

.field public static final enum DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

.field public static final enum NONE:Lcom/android/internal/telephony/DctConstants$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 51
    new-instance v0, Lcom/android/internal/telephony/DctConstants$Activity;

    #@7
    const-string/jumbo v1, "NONE"

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DctConstants$Activity;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@f
    .line 52
    new-instance v0, Lcom/android/internal/telephony/DctConstants$Activity;

    #@11
    const-string/jumbo v1, "DATAIN"

    #@14
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DctConstants$Activity;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    #@19
    .line 53
    new-instance v0, Lcom/android/internal/telephony/DctConstants$Activity;

    #@1b
    const-string/jumbo v1, "DATAOUT"

    #@1e
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DctConstants$Activity;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@23
    .line 54
    new-instance v0, Lcom/android/internal/telephony/DctConstants$Activity;

    #@25
    const-string/jumbo v1, "DATAINANDOUT"

    #@28
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DctConstants$Activity;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@2d
    .line 55
    new-instance v0, Lcom/android/internal/telephony/DctConstants$Activity;

    #@2f
    const-string/jumbo v1, "DORMANT"

    #@32
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DctConstants$Activity;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@37
    .line 50
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Lcom/android/internal/telephony/DctConstants$Activity;

    #@3a
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->$VALUES:[Lcom/android/internal/telephony/DctConstants$Activity;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$Activity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    const-class v0, Lcom/android/internal/telephony/DctConstants$Activity;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/DctConstants$Activity;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DctConstants$Activity;
    .locals 1

    #@0
    .prologue
    .line 50
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->$VALUES:[Lcom/android/internal/telephony/DctConstants$Activity;

    #@2
    return-object v0
.end method
