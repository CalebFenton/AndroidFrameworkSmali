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
        "Ljava/lang/Enum<",
        "Landroid/telephony/gsm/SmsMessage$MessageClass;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/telephony/gsm/SmsMessage$MessageClass;

.field public static final enum whitelist CLASS_0:Landroid/telephony/gsm/SmsMessage$MessageClass;

.field public static final enum whitelist CLASS_1:Landroid/telephony/gsm/SmsMessage$MessageClass;

.field public static final enum whitelist CLASS_2:Landroid/telephony/gsm/SmsMessage$MessageClass;

.field public static final enum whitelist CLASS_3:Landroid/telephony/gsm/SmsMessage$MessageClass;

.field public static final enum whitelist UNKNOWN:Landroid/telephony/gsm/SmsMessage$MessageClass;


# direct methods
.method private static synthetic blacklist $values()[Landroid/telephony/gsm/SmsMessage$MessageClass;
    .registers 5

    .line 42
    sget-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/gsm/SmsMessage$MessageClass;

    sget-object v1, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/gsm/SmsMessage$MessageClass;

    sget-object v2, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/gsm/SmsMessage$MessageClass;

    sget-object v3, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/gsm/SmsMessage$MessageClass;

    sget-object v4, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/gsm/SmsMessage$MessageClass;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/telephony/gsm/SmsMessage$MessageClass;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/gsm/SmsMessage$MessageClass;

    new-instance v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    const-string v1, "CLASS_0"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/gsm/SmsMessage$MessageClass;

    new-instance v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    const-string v1, "CLASS_1"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/gsm/SmsMessage$MessageClass;

    new-instance v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    const-string v1, "CLASS_2"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/gsm/SmsMessage$MessageClass;

    new-instance v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    const-string v1, "CLASS_3"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/gsm/SmsMessage$MessageClass;

    .line 42
    invoke-static {}, Landroid/telephony/gsm/SmsMessage$MessageClass;->$values()[Landroid/telephony/gsm/SmsMessage$MessageClass;

    move-result-object v0

    sput-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->$VALUES:[Landroid/telephony/gsm/SmsMessage$MessageClass;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/telephony/gsm/SmsMessage$MessageClass;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 42
    const-class v0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/telephony/gsm/SmsMessage$MessageClass;

    return-object p0
.end method

.method public static whitelist values()[Landroid/telephony/gsm/SmsMessage$MessageClass;
    .registers 1

    .line 42
    sget-object v0, Landroid/telephony/gsm/SmsMessage$MessageClass;->$VALUES:[Landroid/telephony/gsm/SmsMessage$MessageClass;

    invoke-virtual {v0}, [Landroid/telephony/gsm/SmsMessage$MessageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/gsm/SmsMessage$MessageClass;

    return-object v0
.end method
