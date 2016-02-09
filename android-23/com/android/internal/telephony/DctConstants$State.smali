.class public final enum Lcom/android/internal/telephony/DctConstants$State;
.super Ljava/lang/Enum;
.source "DctConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DctConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DctConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum FAILED:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum IDLE:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum RETRYING:Lcom/android/internal/telephony/DctConstants$State;

.field public static final enum SCANNING:Lcom/android/internal/telephony/DctConstants$State;


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
    .line 41
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    #@7
    const-string/jumbo v1, "IDLE"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@f
    .line 42
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    #@11
    const-string/jumbo v1, "CONNECTING"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    .line 43
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    #@1b
    const-string/jumbo v1, "SCANNING"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@23
    .line 44
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    #@25
    const-string/jumbo v1, "CONNECTED"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@2d
    .line 45
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    #@2f
    const-string/jumbo v1, "DISCONNECTING"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@37
    .line 46
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    #@39
    const-string/jumbo v1, "FAILED"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@42
    .line 47
    new-instance v0, Lcom/android/internal/telephony/DctConstants$State;

    #@44
    const-string/jumbo v1, "RETRYING"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DctConstants$State;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@4d
    .line 40
    const/4 v0, 0x7

    #@4e
    new-array v0, v0, [Lcom/android/internal/telephony/DctConstants$State;

    #@50
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@52
    aput-object v1, v0, v3

    #@54
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@56
    aput-object v1, v0, v4

    #@58
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@5a
    aput-object v1, v0, v5

    #@5c
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@5e
    aput-object v1, v0, v6

    #@60
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@62
    aput-object v1, v0, v7

    #@64
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@66
    const/4 v2, 0x5

    #@67
    aput-object v1, v0, v2

    #@69
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@6b
    const/4 v2, 0x6

    #@6c
    aput-object v1, v0, v2

    #@6e
    sput-object v0, Lcom/android/internal/telephony/DctConstants$State;->$VALUES:[Lcom/android/internal/telephony/DctConstants$State;

    #@70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    const-class v0, Lcom/android/internal/telephony/DctConstants$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/DctConstants$State;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    #@0
    .prologue
    .line 40
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->$VALUES:[Lcom/android/internal/telephony/DctConstants$State;

    #@2
    return-object v0
.end method
