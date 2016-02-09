.class Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3$1;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;->verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;


# direct methods
.method constructor <init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;

    #@0
    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3$1;->this$2:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public checkGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p2, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p3, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p4, "expectedNumberGroups"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 495
    invoke-static {p1, p2, p3, p4}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->allNumberGroupsRemainGrouped(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
