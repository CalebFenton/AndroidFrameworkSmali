.class final enum Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;
.super Ljava/lang/Enum;
.source "PhoneNumberMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

.field public static final enum blacklist DONE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

.field public static final enum blacklist NOT_READY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

.field public static final enum blacklist READY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;
    .registers 3

    .line 186
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 187
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    const-string v1, "READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    const-string v1, "DONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    .line 186
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->$values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

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

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 186
    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;
    .registers 1

    .line 186
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$State;

    return-object v0
.end method
