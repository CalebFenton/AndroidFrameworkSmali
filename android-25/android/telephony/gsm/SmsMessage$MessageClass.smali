.class public final enum Landroid/telephony/gsm/SmsMessage$MessageClass;
.super Ljava/lang/Enum;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/gsm/SmsMessage$MessageClass;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/gsm/SmsMessage$MessageClass;

.field public static final enum CLASS_0:Landroid/telephony/gsm/SmsMessage$MessageClass;

.field public static final enum CLASS_1:Landroid/telephony/gsm/SmsMessage$MessageClass;

.field public static final enum CLASS_2:Landroid/telephony/gsm/SmsMessage$MessageClass;

.field public static final enum CLASS_3:Landroid/telephony/gsm/SmsMessage$MessageClass;

.field public static final enum UNKNOWN:Landroid/telephony/gsm/SmsMessage$MessageClass;


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
    .line 44
    new-instance v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@7
    const-string/jumbo v1, "UNKNOWN"

    #@a
    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@f
    new-instance v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@11
    const-string/jumbo v1, "CLASS_0"

    #@14
    invoke-direct {v0, v1, v3}, Landroid/telephony/gsm/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@19
    new-instance v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@1b
    const-string/jumbo v1, "CLASS_1"

    #@1e
    invoke-direct {v0, v1, v4}, Landroid/telephony/gsm/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@23
    new-instance v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@25
    const-string/jumbo v1, "CLASS_2"

    #@28
    invoke-direct {v0, v1, v5}, Landroid/telephony/gsm/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@2d
    new-instance v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@2f
    const-string/jumbo v1, "CLASS_3"

    #@32
    invoke-direct {v0, v1, v6}, Landroid/telephony/gsm/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@37
    .line 43
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@3a
    sget-object v1, Landroid/telephony/gsm/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->$VALUES:[Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/gsm/SmsMessage$MessageClass;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    const-class v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/telephony/gsm/SmsMessage$MessageClass;
    .locals 1

    #@0
    .prologue
    .line 43
    sget-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->$VALUES:[Landroid/telephony/gsm/SmsMessage$MessageClass;

    #@2
    return-object v0
.end method
