.class final enum Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;
.super Ljava/lang/Enum;
.source "PhoneNumberMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

.field public static final enum DONE:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

.field public static final enum NOT_READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

.field public static final enum READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;


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
    .line 186
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@5
    const-string/jumbo v1, "NOT_READY"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@d
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@f
    const-string/jumbo v1, "READY"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@17
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@19
    const-string/jumbo v1, "DONE"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@21
    .line 185
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@24
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 185
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;
    .locals 1

    #@0
    .prologue
    .line 185
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    #@2
    return-object v0
.end method
