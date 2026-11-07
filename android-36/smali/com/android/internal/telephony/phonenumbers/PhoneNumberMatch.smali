.class public final Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;
.super Ljava/lang/Object;
.source "PhoneNumberMatch.java"


# instance fields
.field private final blacklist number:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

.field private final blacklist rawString:Ljava/lang/String;

.field private final blacklist start:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_12

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    .line 76
    iput p1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->start:I

    .line 77
    iput-object p2, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->number:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return-void

    :cond_10
    const/4 p0, 0x0

    .line 74
    throw p0

    .line 71
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Start index must be >= 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist end()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->start:I

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 111
    :cond_4
    instance-of v1, p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 114
    :cond_a
    check-cast p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->start:I

    iget v3, p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->start:I

    if-ne v1, v3, :cond_27

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->number:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    iget-object p1, p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->number:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    return v0

    :cond_27
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 103
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->start:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->number:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist number()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->number:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return-object p0
.end method

.method public blacklist rawString()Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist start()I
    .registers 1

    .line 88
    iget p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->start:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberMatch ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
