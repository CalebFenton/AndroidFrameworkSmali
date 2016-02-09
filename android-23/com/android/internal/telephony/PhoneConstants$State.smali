.class public final enum Lcom/android/internal/telephony/PhoneConstants$State;
.super Ljava/lang/Enum;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/PhoneConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/PhoneConstants$State;

.field public static final enum IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

.field public static final enum OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

.field public static final enum RINGING:Lcom/android/internal/telephony/PhoneConstants$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 35
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$State;

    #@5
    const-string/jumbo v1, "IDLE"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$State;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@d
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$State;

    #@f
    const-string/jumbo v1, "RINGING"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PhoneConstants$State;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@17
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$State;

    #@19
    const-string/jumbo v1, "OFFHOOK"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/PhoneConstants$State;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@21
    .line 34
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/internal/telephony/PhoneConstants$State;

    #@24
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$State;

    #@32
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    const-class v0, Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$State;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    #@0
    .prologue
    .line 34
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    return-object v0
.end method
