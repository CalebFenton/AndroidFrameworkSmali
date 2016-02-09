.class public final Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
.super Ljava/lang/Object;
.source "PhoneNumberMatch.java"


# instance fields
.field private final number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

.field private final rawString:Ljava/lang/String;

.field private final start:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "rawString"    # Ljava/lang/String;
    .param p3, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    if-gez p1, :cond_0

    #@5
    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Start index must be >= 0."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 73
    :cond_0
    if-eqz p2, :cond_1

    #@10
    if-nez p3, :cond_2

    #@12
    .line 74
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@17
    throw v0

    #@18
    .line 76
    :cond_2
    iput p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start:I

    #@1a
    .line 77
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    #@1c
    .line 78
    iput-object p3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@1e
    .line 69
    return-void
.end method


# virtual methods
.method public end()I
    .locals 2

    #@0
    .prologue
    .line 93
    iget v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start:I

    #@2
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 108
    if-ne p0, p1, :cond_0

    #@3
    .line 109
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 111
    :cond_0
    instance-of v2, p1, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 112
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 114
    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@d
    .line 115
    .local v0, "other":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    #@f
    iget-object v3, v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    iget v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start:I

    #@19
    iget v3, v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start:I

    #@1b
    if-ne v2, v3, :cond_2

    #@1d
    .line 116
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@1f
    iget-object v2, v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@21
    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    .line 115
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 103
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public number()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@2
    return-object v0
.end method

.method public rawString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public start()I
    .locals 1

    #@0
    .prologue
    .line 88
    iget v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PhoneNumberMatch ["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ","

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    #@1e
    move-result v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, ") "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method
