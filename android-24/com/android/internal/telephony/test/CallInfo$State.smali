.class final enum Lcom/android/internal/telephony/test/CallInfo$State;
.super Ljava/lang/Enum;
.source "SimulatedGsmCallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/test/CallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/test/CallInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/test/CallInfo$State;

.field public static final enum ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

.field public static final enum ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

.field public static final enum DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

.field public static final enum HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

.field public static final enum INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

.field public static final enum WAITING:Lcom/android/internal/telephony/test/CallInfo$State;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 32
    new-instance v0, Lcom/android/internal/telephony/test/CallInfo$State;

    #@7
    const-string/jumbo v1, "ACTIVE"

    #@a
    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@f
    .line 33
    new-instance v0, Lcom/android/internal/telephony/test/CallInfo$State;

    #@11
    const-string/jumbo v1, "HOLDING"

    #@14
    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@19
    .line 34
    new-instance v0, Lcom/android/internal/telephony/test/CallInfo$State;

    #@1b
    const-string/jumbo v1, "DIALING"

    #@1e
    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@23
    new-instance v0, Lcom/android/internal/telephony/test/CallInfo$State;

    #@25
    const-string/jumbo v1, "ALERTING"

    #@28
    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    #@2b
    .line 35
    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@2d
    new-instance v0, Lcom/android/internal/telephony/test/CallInfo$State;

    #@2f
    const-string/jumbo v1, "INCOMING"

    #@32
    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    #@35
    .line 36
    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@37
    new-instance v0, Lcom/android/internal/telephony/test/CallInfo$State;

    #@39
    const-string/jumbo v1, "WAITING"

    #@3c
    const/4 v2, 0x5

    #@3d
    .line 37
    const/4 v3, 0x5

    #@3e
    .line 36
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    #@41
    .line 37
    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@43
    .line 31
    const/4 v0, 0x6

    #@44
    new-array v0, v0, [Lcom/android/internal/telephony/test/CallInfo$State;

    #@46
    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@48
    aput-object v1, v0, v4

    #@4a
    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@4c
    aput-object v1, v0, v5

    #@4e
    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@50
    aput-object v1, v0, v6

    #@52
    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@54
    aput-object v1, v0, v7

    #@56
    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@58
    aput-object v1, v0, v8

    #@5a
    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@5c
    const/4 v2, 0x5

    #@5d
    aput-object v1, v0, v2

    #@5f
    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->$VALUES:[Lcom/android/internal/telephony/test/CallInfo$State;

    #@61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    iput p3, p0, Lcom/android/internal/telephony/test/CallInfo$State;->mValue:I

    #@5
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    const-class v0, Lcom/android/internal/telephony/test/CallInfo$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/test/CallInfo$State;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/test/CallInfo$State;
    .locals 1

    #@0
    .prologue
    .line 31
    sget-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->$VALUES:[Lcom/android/internal/telephony/test/CallInfo$State;

    #@2
    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    #@0
    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/telephony/test/CallInfo$State;->mValue:I

    #@2
    return v0
.end method
