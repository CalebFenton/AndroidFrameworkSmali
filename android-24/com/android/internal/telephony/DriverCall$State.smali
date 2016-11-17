.class public final enum Lcom/android/internal/telephony/DriverCall$State;
.super Ljava/lang/Enum;
.source "DriverCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DriverCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DriverCall$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum ALERTING:Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum DIALING:Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum HOLDING:Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum INCOMING:Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum WAITING:Lcom/android/internal/telephony/DriverCall$State;


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
    .line 30
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    #@7
    const-string/jumbo v1, "ACTIVE"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    #@f
    .line 31
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    #@11
    const-string/jumbo v1, "HOLDING"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    #@19
    .line 32
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    #@1b
    const-string/jumbo v1, "DIALING"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    #@23
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    #@25
    const-string/jumbo v1, "ALERTING"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 33
    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    #@2d
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    #@2f
    const-string/jumbo v1, "INCOMING"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    #@35
    .line 34
    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    #@37
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    #@39
    const-string/jumbo v1, "WAITING"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    #@40
    .line 35
    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    #@42
    .line 29
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Lcom/android/internal/telephony/DriverCall$State;

    #@45
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->$VALUES:[Lcom/android/internal/telephony/DriverCall$State;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DriverCall$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    const-class v0, Lcom/android/internal/telephony/DriverCall$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/DriverCall$State;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DriverCall$State;
    .locals 1

    #@0
    .prologue
    .line 29
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->$VALUES:[Lcom/android/internal/telephony/DriverCall$State;

    #@2
    return-object v0
.end method
