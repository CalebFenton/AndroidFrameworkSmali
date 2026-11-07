.class Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$4$1;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"

# interfaces
.implements Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$4;->verify(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$4;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$4;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 653
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$4$1;->this$0:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist checkGroups(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .registers 5

    .line 658
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;->allNumberGroupsAreExactlyPresent(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
