.class public final enum Lcom/android/internal/telephony/OperatorInfo$State;
.super Ljava/lang/Enum;
.source "OperatorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/OperatorInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 27
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    #@6
    const-string/jumbo v1, "UNKNOWN"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    #@e
    .line 28
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    #@10
    const-string/jumbo v1, "AVAILABLE"

    #@13
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    #@18
    .line 29
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    #@1a
    const-string/jumbo v1, "CURRENT"

    #@1d
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    #@22
    .line 30
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    #@24
    const-string/jumbo v1, "FORBIDDEN"

    #@27
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    #@2c
    .line 26
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/internal/telephony/OperatorInfo$State;

    #@2f
    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 26
    const-class v0, Lcom/android/internal/telephony/OperatorInfo$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/OperatorInfo$State;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 1

    #@0
    .prologue
    .line 26
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

    #@2
    return-object v0
.end method
