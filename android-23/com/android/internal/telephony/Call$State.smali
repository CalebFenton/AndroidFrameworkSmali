.class public final enum Lcom/android/internal/telephony/Call$State;
.super Ljava/lang/Enum;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Call$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Call$State;

.field public static final enum ACTIVE:Lcom/android/internal/telephony/Call$State;

.field public static final enum ALERTING:Lcom/android/internal/telephony/Call$State;

.field public static final enum DIALING:Lcom/android/internal/telephony/Call$State;

.field public static final enum DISCONNECTED:Lcom/android/internal/telephony/Call$State;

.field public static final enum DISCONNECTING:Lcom/android/internal/telephony/Call$State;

.field public static final enum HOLDING:Lcom/android/internal/telephony/Call$State;

.field public static final enum IDLE:Lcom/android/internal/telephony/Call$State;

.field public static final enum INCOMING:Lcom/android/internal/telephony/Call$State;

.field public static final enum WAITING:Lcom/android/internal/telephony/Call$State;


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
    .line 35
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    #@7
    const-string/jumbo v1, "IDLE"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@f
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    #@11
    const-string/jumbo v1, "ACTIVE"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@19
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    #@1b
    const-string/jumbo v1, "HOLDING"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@23
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    #@25
    const-string/jumbo v1, "DIALING"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@2d
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    #@2f
    const-string/jumbo v1, "ALERTING"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@37
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    #@39
    const-string/jumbo v1, "INCOMING"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@42
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    #@44
    const-string/jumbo v1, "WAITING"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@4d
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    #@4f
    const-string/jumbo v1, "DISCONNECTED"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@58
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    #@5a
    const-string/jumbo v1, "DISCONNECTING"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    #@64
    .line 34
    const/16 v0, 0x9

    #@66
    new-array v0, v0, [Lcom/android/internal/telephony/Call$State;

    #@68
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@6a
    aput-object v1, v0, v3

    #@6c
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@6e
    aput-object v1, v0, v4

    #@70
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@72
    aput-object v1, v0, v5

    #@74
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@76
    aput-object v1, v0, v6

    #@78
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@7a
    aput-object v1, v0, v7

    #@7c
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@7e
    const/4 v2, 0x5

    #@7f
    aput-object v1, v0, v2

    #@81
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@83
    const/4 v2, 0x6

    #@84
    aput-object v1, v0, v2

    #@86
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@88
    const/4 v2, 0x7

    #@89
    aput-object v1, v0, v2

    #@8b
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    #@8d
    const/16 v2, 0x8

    #@8f
    aput-object v1, v0, v2

    #@91
    sput-object v0, Lcom/android/internal/telephony/Call$State;->$VALUES:[Lcom/android/internal/telephony/Call$State;

    #@93
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    const-class v0, Lcom/android/internal/telephony/Call$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/Call$State;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Call$State;
    .locals 1

    #@0
    .prologue
    .line 34
    sget-object v0, Lcom/android/internal/telephony/Call$State;->$VALUES:[Lcom/android/internal/telephony/Call$State;

    #@2
    return-object v0
.end method


# virtual methods
.method public isAlive()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 38
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@7
    if-eq p0, v1, :cond_0

    #@9
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    #@b
    if-eq p0, v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isDialing()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 46
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

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

.method public isRinging()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 42
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

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
