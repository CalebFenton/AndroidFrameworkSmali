.class Lcom/android/internal/telephony/Connection$1;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/Connection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 360
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 2

    .line 355
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPhones()[Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 365
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method
