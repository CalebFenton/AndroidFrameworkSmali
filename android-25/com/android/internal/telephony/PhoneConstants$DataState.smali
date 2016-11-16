.class public final enum Lcom/android/internal/telephony/PhoneConstants$DataState;
.super Ljava/lang/Enum;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/PhoneConstants$DataState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field public static final enum SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;


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
    .line 50
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@6
    const-string/jumbo v1, "CONNECTED"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@e
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@10
    const-string/jumbo v1, "CONNECTING"

    #@13
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@18
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@1a
    const-string/jumbo v1, "DISCONNECTED"

    #@1d
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@22
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@24
    const-string/jumbo v1, "SUSPENDED"

    #@27
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/PhoneConstants$DataState;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2c
    .line 49
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2f
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    const-class v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    #@0
    .prologue
    .line 49
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2
    return-object v0
.end method
