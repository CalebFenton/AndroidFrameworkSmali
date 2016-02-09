.class Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field final synthetic val$defaultRegion:Ljava/lang/String;

.field final synthetic val$leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field final synthetic val$maxTries:J

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p2, "val$text"    # Ljava/lang/CharSequence;
    .param p3, "val$defaultRegion"    # Ljava/lang/String;
    .param p4, "val$leniency"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .param p5, "val$maxTries"    # J

    #@0
    .prologue
    .line 2835
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->this$0:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@2
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->val$text:Ljava/lang/CharSequence;

    #@4
    iput-object p3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->val$defaultRegion:Ljava/lang/String;

    #@6
    iput-object p4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->val$leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@8
    iput-wide p5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->val$maxTries:J

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2838
    new-instance v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;

    #@2
    .line 2839
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->this$0:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@4
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->val$text:Ljava/lang/CharSequence;

    #@6
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->val$defaultRegion:Ljava/lang/String;

    #@8
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->val$leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@a
    iget-wide v6, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->val$maxTries:J

    #@c
    .line 2838
    invoke-direct/range {v1 .. v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;-><init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    #@f
    return-object v1
.end method
